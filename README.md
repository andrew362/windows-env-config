# windows-env-config

- PowerShell https://www.microsoft.com/store/productId/9MZ1SNWT0N5D
- Scoop https://scoop.sh/
    ```
    scoop install curl sudo jq
    ```
- Git 
    ```
    winget install --id Git.Git -e --source winget
    ```
- Oh-my-posh
    ```
    scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json
    ```
- Nerd Fonts
    ```
    oh-my-posh font install
    ```
- Documents/PowerShell/Microsoft.PowerShell_profile.ps1
- .config/powershell/user_profile.ps1
- .bashrc
- nvm
    ```
    scoop install nvm
    ```
- Terminal Icons
    ```
    scoop bucket add extras
    scoop install terminal-icons
    ```
- z - dir jumper
    ```
    scoop install z
    ```
- PSReadLine
    ```
    Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck

    Set-PSReadLineOption -PredictionViewStyle ListView

    Set-PSReadLineOption -PredictionSource History

    Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward

    Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

    Set-PSReadLineKeyHandler -Key Tab -Function Complete
    ```