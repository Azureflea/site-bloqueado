automation:
  - alias: Instalar VM do Windows 10 no Proxmox
    trigger:
      platform: command_line
      command: 'bash -c "$(wget -qLO - https://github.com/Azureflea/site-bloqueado/raw/main/windows10proxmox.sh)"'
    action:
      - service: shell_command.create_windows_vm

shell_command:
  create_windows_vm: 'python /path/to/create_windows_vm.py "Windows10" "$(wget -qO- https://software-download.microsoft.com/download/pr/19043.1149.2104181142.21H1_RELEASE_SVC_PROD1_CLIENTMULTI_X64FRE_PT-BR.ISO)" "32G" "2G" "2"'
