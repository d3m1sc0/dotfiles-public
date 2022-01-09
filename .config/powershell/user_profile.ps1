# Import modules
Import-Module posh-git
Import-Module oh-my-posh
Import-Module z
Import-Module Terminal-Icons
Import-Module PSFzf

# oh-my-posh
Set-PoshPrompt Paradox
$omp_config = Join-Path $PSScriptRoot ".\demisco.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression


# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History

# FzF
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'


# Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
