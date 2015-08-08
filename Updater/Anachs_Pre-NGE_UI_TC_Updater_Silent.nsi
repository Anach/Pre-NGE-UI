;Anach's Pre-NGE UI Updater
;By Anach
;--------------------------------
;Includes
  
;Include ZipDLL
!include "ZipDLL.nsh"

;--------------------------------
;Defines
  !define NAME "Anach's Pre-NGE UI - TestCenter"
  !define FILENAME "Anachs_Pre-NGE_UI_TC"
  !define OUTFILE "${FILENAME}_Updater_Silent.exe"
  !define Update_DownloadURL "http://w1.whatcounter.com/dlcount.php?id=Anach&url=http://users.on.net/~anach/Files/SWG/${FILENAME}.zip"
  !define VersionURL "http://users.on.net/~anach/Files/SWG/${FILENAME}.ver"
  
  Name "${NAME}"
  OutFile "${OUTFILE}"

;--------------------------------
;Sections

section
;Dummy section
sectionEnd

;--------------------------------
;Functions
  
;Update check
Function .onInit

CALL UpdateCheck

FunctionEnd

;Check for update
Function UpdateCheck

ReadRegStr $R1 HKLM \
  "Software\Microsoft\Windows\CurrentVersion\Uninstall\${NAME}" \
  "DisplayVersion"


StrCpy $5 "$TEMP\${FILENAME}.ver"
;Download Latest Version File
nsisdl::download /TIMEOUT=30000 ${VersionURL} $5
Pop $R0 ;Get the return value
StrCmp $R0 "success" +3
Goto ContinueWithoutUpdate 

;Read Version from downloaded Version File
ClearErrors
FileOpen $0 "$5" "r" ; open target file for reading
FileRead $0 $2 ; read line from target file
StrCmp $2 "$R1" 0 +4 ; Compare Version from downloaded Version file to current Version
FileClose $0 ; close target file
Delete $5 ; Cleanup Temporary Version File
Goto ContinueWithoutUpdate ; If versions match, continue without update

!define OnlineVersion "$2" ; Defines the Online Version Variable and set it to the proper value
FileClose $0 ; close target file
Delete $5 ; Cleanup Temporary Version File

;Prompt for Update
MessageBox MB_OKCANCEL|MB_ICONEXCLAMATION \
"A new version of ${NAME} is available.$\n$\n\
Installed version: $R1$\nOnline version: ${OnlineVersion}$\n$\n\
To avoid compatibility issues press 'OK' to update."\
IDOK ContinueUpdate ;IDNO ContinueWithoutUpdate
Quit ;IDCANCEL

ContinueUpdate:
CALL DownloadAndInstallUpdate

;NoUpdate
ContinueWithoutUpdate:
Quit
FunctionEnd

;Download and install update
Function DownloadAndInstallUpdate 
StrCpy $2 "$TEMP\${NAME}.zip"
StrCpy $3 "$TEMP\${NAME}\${OUTFILE}"
StrCpy $4 "$TEMP\${NAME}"
;Download Beta Version
nsisdl::download /TIMEOUT=30000 ${Update_DownloadURL} $2
Pop $R0 ;Get the return value
StrCmp $R0 "success" +3
MessageBox MB_OK "Update download failed: $R0"
Quit
;--------------------------------
;Extract Downloaded .zip file using ZipDll
!insertmacro ZIPDLL_EXTRACT "$2" "$4" "<ALL>" 
;Execute Updated Installer
ExecWait $3
;Cleanup Temporary Files and Directories
Delete "$2"
Delete "$4\*.*"
RMDir $4
Quit
FunctionEnd