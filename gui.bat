rmdir /s /q fedora-gui
IF %ERRORLEVEL% EQU 0 packer build fedora-gui.json
IF %ERRORLEVEL% EQU 0 vagrant box add -f --name fedora-gui fedora-gui/package.box
