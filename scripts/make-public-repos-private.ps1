[CmdletBinding(SupportsShouldProcess = $true, ConfirmImpact = 'High')]
param(
    [Parameter(Mandatory = $false)]
    [string]$Username,

    [Parameter(Mandatory = $false)]
    [int]$Limit = 1000,

    [Parameter(Mandatory = $false)]
    [switch]$IncludeForks
)

$ErrorActionPreference = 'Stop'

if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
    throw 'GitHub CLI is required. Install gh and run `gh auth login` before using this script.'
}

function Get-AuthenticatedUsername {
    try {
        return (gh api user --jq .login 2>$null).Trim()
    }
    catch {
        return $null
    }
}

if (-not $Username) {
    $Username = Get-AuthenticatedUsername
}

if (-not $Username) {
    throw 'Provide -Username, or authenticate with GitHub CLI so the script can resolve your account automatically.'
}

$repos = gh repo list $Username --visibility public --limit $Limit --json nameWithOwner,isFork,visibility | ConvertFrom-Json

if (-not $IncludeForks) {
    $repos = @($repos | Where-Object { -not $_.isFork })
}

if (-not $repos -or $repos.Count -eq 0) {
    Write-Host "No public repos found for $Username."
    return
}

Write-Host "Found $($repos.Count) public repos for $Username."

foreach ($repo in $repos) {
    $repoName = $repo.nameWithOwner

    if ($PSCmdlet.ShouldProcess($repoName, 'Change visibility to private')) {
        Write-Host "Changing $repoName to private..."
        try {
            gh repo edit $repoName --visibility private --accept-visibility-change-consequences | Out-Host
        }
        catch {
            Write-Warning "Failed to update ${repoName}: $($_.Exception.Message)"
        }
    }
}
