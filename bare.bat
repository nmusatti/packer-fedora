packer build -var-file windows.json -var-file bare.json fedora.json
IF %ERRORLEVEL% EQU 0 vagrant box add -f --name fedora-bare fedora-bare.box
