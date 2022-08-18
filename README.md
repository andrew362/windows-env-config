# windows-env-config

- PowerShell https://www.microsoft.com/store/productId/9MZ1SNWT0N5D
- Scoop https://scoop.sh/
    ```
    scoop install curl sudo jq
    ```
- Git 
    ```
    winget install --id Git.Git -e --source winget

    git config --global user.name
    git config --global user.email
    ```
- Oh-my-posh
    ```
    scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json
    ```
- Nerd Fonts
    ```
    oh-my-posh font install
    ```
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

    Set-PSReadLineKeyHandler -Key Tab -Function Complete
    ```
- Fuzzy Finder
    ```
    scoop install fzf
    Install-Module -Name PSFzf -Scope CurrentUser -Force
    ```
- Documents/PowerShell/Microsoft.PowerShell_profile.ps1
- .config/powershell/user_profile.ps1 (check this: https://github.com/PowerShell/PSReadLine/blob/master/PSReadLine/SamplePSReadLineProfile.ps1#L13-L21)
- .bashrc
- ssh-agent
    ```
    Get-Service ssh-agent | Set-Service -StartupType Automatic
    Start-Service ssh-agent
    Get-Service ssh-agent
    ssh-add $env:USERPROFILE\.ssh\KEY #TODO
    git config --global core.sshCommand C:/Windows/System32/OpenSSH/ssh.exe
    ```