[CmdletBinding()]
param(
    [Parameter(Mandatory = $false)]
    [string]$Username,

    [Parameter(Mandatory = $false)]
    [int]$PerPage = 100,

    [Parameter(Mandatory = $false)]
    [switch]$IncludeForks
)

$ErrorActionPreference = 'Stop'

function Get-AuthenticatedUsername {
    if (Get-Command gh -ErrorAction SilentlyContinue) {
        try {
            return (gh api user --jq .login 2>$null).Trim()
        }
        catch {
        }
    }

    return $null
}

function Get-PublicRepos {
    param(
        [Parameter(Mandatory = $true)]
        [string]$UserName
    )

    $page = 1
    $allRepos = @()

    do {
        $uri = "https://api.github.com/users/$UserName/repos?visibility=public&per_page=$PerPage&page=$page&sort=updated"
        $headers = @{
            'User-Agent' = 'ProgressiveHardeningRepoLister'
            'Accept'     = 'application/vnd.github+json'
        }

        $pageRepos = Invoke-RestMethod -Uri $uri -Headers $headers
        if (-not $IncludeForks) {
            $pageRepos = @($pageRepos | Where-Object { -not $_.fork })
        }

        $allRepos += $pageRepos
        $page++
    } while (@($pageRepos).Count -eq $PerPage)

    return $allRepos |
        Sort-Object updated_at -Descending |
        Select-Object name, html_url, description, updated_at, fork
}

if (-not $Username) {
    $Username = Get-AuthenticatedUsername
}

if (-not $Username) {
    throw 'Provide -Username, or install and authenticate GitHub CLI (`gh auth login`) so the script can resolve your account automatically.'
}

Get-PublicRepos -UserName $Username
