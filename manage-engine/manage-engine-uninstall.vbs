'Manage Engine Desktopcentral Agent .

'Script to Clean up ManageEngine Desktop Central Agent from Add remove programs .
'================================================================================

On Error Resume Next

Set WshShell = WScript.CreateObject("WScript.Shell")
   WshShell.RegRead("HKEY_CLASSES_ROOT\Installer\Products\F1322DA684FF95D4CA6204A5AF2ED37B\SourceList\Net\")
   WshShell.RegDelete "HKEY_CLASSES_ROOT\Installer\Products\F1322DA684FF95D4CA6204A5AF2ED37B\SourceList\Net\"
   WshShell.RegDelete "HKEY_CLASSES_ROOT\Installer\Products\F1322DA684FF95D4CA6204A5AF2ED37B\SourceList\Media\"
   WshShell.RegDelete "HKEY_CLASSES_ROOT\Installer\Products\F1322DA684FF95D4CA6204A5AF2ED37B\SourceList\"
   WshShell.RegDelete "HKEY_CLASSES_ROOT\Installer\Products\F1322DA684FF95D4CA6204A5AF2ED37B\"

'Uninstall Agent and Remote Control Service    
'==========================================
WshShell.Run "%windir%\system32\sc stop "   &Chr(34)& "ManageEngine Desktop Central - Agent"  &Chr(34),1,True
WshShell.Run "%windir%\system32\sc delete " &Chr(34)& "ManageEngine Desktop Central - Agent"  & Chr(34),1,True
WshShell.Run "%windir%\system32\sc stop "   &Chr(34)& "ManageEngine Desktop Central - Remote Control"  &Chr(34),1,True
WshShell.Run "%windir%\system32\sc delete " &Chr(34)& "ManageEngine Desktop Central - Remote Control"  & Chr(34),1,True

'**********************************************************************************************************************