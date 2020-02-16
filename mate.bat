rmdir /s /q fedora-mate
IF %ERRORLEVEL% EQU 0 packer build fedora-mate.json
IF %ERRORLEVEL% EQU 0 vagrant box add -f --name fedora-mate fedora-mate/package.box
