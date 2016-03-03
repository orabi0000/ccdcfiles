Import-Module ActiveDirectory

dism /online /disable-feature /featurename:Printing-Server-Role
dism /online /disable-feature /featurename:DHCPServer
dism /online /disable-feature /featurename:IIS-WebServer
dism /online /disable-feature /featurename:IIS-FTPServer
dism /online /disable-feature /featurename:IIS-WebServerRole
dism /online /disable-feature /featurename:IIS-WebServerManagementTools
dism /online /disable-feature /featurename:IIS-ManagementScriptingTools
dism /online /disable-feature /featurename:IIS-IIS6ManagementCompatibility
dism /online /disable-feature /featurename:IIS-Metabase
dism /online /disable-feature /featurename:IIS-ManagementConsole
dism /online /disable-feature /featurename:DNS-Server-Full-Role
dism /online /disable-feature /featurename:Microsoft-Windows-GroupPolicy-ServerAdminTools-Update

Remove-ADComputer -Identity XP-WS
Remove-ADComputer -Identity e-commerce
Remove-ADComputer -Identity ubuntu-ws

net user IWAM_SHAREPEG /del
net user IUSR_SHAREPEG /del
net user HVU_FILESERVER1 /del

wusa.exe AMD64-all-windows6.1-kb2562485-x64_96ab7ea10b66fce4f2b302c76e0fb7d84c44af97.msu
wusa.exe AMD64-all-windows6.1-kb3042553-x64_5692cc4ea7937ecd6053c76d705c1c3d9f58afdb.msu
wusa.exe IA64-all-windows6.1-kb2992611-ia64_3ca13daf603bfe0760ee40d8a83f515b9949dc8d.msu
wusa.exe IA64-all-windows6.1-kb3018238-ia64_086fa14f72e544eb1d6b241595e25b3ad40ff5c1.msu

REM Patch MS08-067
netsh
rpc
filter
add rule layer=um actiontype=block
add condition field=if_uuid matchtype=equal data=4b324fc8-1670-01d3-1278-5a47bf6ee188
add filter
quit