packer build -var-file windows.json -var-file vbga.json fedora.json
IF %ERRORLEVEL% EQU 0 vagrant box add -f --name fedora-vbga fedora-vbga.box
