;Anach's Pre-NGE UI Installer
;By Anach (Thanks Gerric)
;--------------------------------
;Remove NSIS branding  
  BrandingText "Anach's Pre-NGE UI"

;Include Modern UI
  !include "MUI2.nsh"
 
;flow control logic 
  !include "LogicLib.nsh"
  
;include MUI_EXTRAPAGES header
  !include "MUI_EXTRAPAGES.nsh"
  
;Section control
  !include "SectionFunc.nsh"

;nsDialogs
!include "nsDialogs.nsh"

;--------------------------------
;General

;Show Install details
ShowInstDetails show
ShowUninstDetails show

;Set Compression Method
SetCompress force
SetCompressor /SOLID lzma

;Name and ${File} and version
  !define NAME "Anach's Pre-NGE UI - TestCenter"
  !define OUTFILE "${NAME}.exe"
  !define FILENAME "Anachs_Pre-NGE_UI_TC"
  !define SUBFOLDER "TestCenter"
  !define VERSION "15.1.1106.1000"
  !define Update_DownloadURL "http://w1.whatcounter.com/dlcount.php?id=Anach&url=http://users.on.net/~anach/Files/SWG/${FILENAME}.zip"
;Define version number Live or Beta?  
  !define VersionURL "http://users.on.net/~anach/Files/SWG/${FILENAME}.ver"
  !define UNINSTALLER "$INSTDIR\Mods\${NAME}\${FILENAME}_Uninstall.exe"
  
  Name "${NAME}"
  OutFile "${OUTFILE}"

;Default installation folder
  InstallDir "C:\Program Files\StarWarsGalaxies\${SUBFOLDER}"
  
;Get installation folder from registry if available
  InstallDirRegKey HKLM "SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\StarWarsGalaxies" "${SUBFOLDER}Path"

;Request application privileges for Windows Vista
  RequestExecutionLevel user
  
  
;Save sections Key
  ;${SectionReadReg}
  ${SectionResetFlags}
  ${SectionWriteReg}
  !define PRODUCT_UNINST_KEY "SOFTWARE\Anach\${NAME} Options"
  
;--------------------------------
;Variables

;StartmenuFolder Variable
  Var StartMenuFolder
  
;Option Selection Variables
  Var /GLOBAL WasSelectedGrpB
  Var /GLOBAL WasSelectedGrpC
  Var /GLOBAL WasSelectedGrpD
  Var /GLOBAL WasSelectedGrpE
;--------------------------------
;Interface Settings

;Installation Abort warning
  !define MUI_ABORTWARNING

;Installer/Uninstaller Icon
  !define MUI_ICON "Icons\Installer.ico"
  !define MUI_UNICON "Icons\Installer.ico"
;Language Settings
  !define MUI_LANGDLL_REGISTRY_ROOT "HKCU"
  !define MUI_LANGDLL_REGISTRY_KEY "SOFTWARE\Anach\${NAME}" 
  !define MUI_LANGDLL_REGISTRY_VALUENAME "Language"
;Start Menu Folder Page Configuration
  !define MUI_STARTMENUPAGE_REGISTRY_ROOT "HKCU" 
  !define MUI_STARTMENUPAGE_REGISTRY_KEY "SOFTWARE\Anach\${NAME}" 
  !define MUI_STARTMENUPAGE_REGISTRY_VALUENAME "Start Menu Folder" 
;Welcome page text
  !define MUI_WELCOMEPAGE_TITLE "${NAME} Setup$\r$\nVersion ${VERSION}"
  !define MUI_WELCOMEPAGE_TEXT "$(WELCOMEPAGE_TEXT)"
;Components Page settings
  !define MUI_COMPONENTSPAGE_SMALLDESC
;These statements modify settings for MUI_PAGE_FINISH
  !define MUI_FINISHPAGE_TITLE "You have successfully installed ${NAME}"
  !define MUI_FINISHPAGE_TEXT "$(FINISHPAGE_TEXT)"
  !define MUI_FINISHPAGE_NOAUTOCLOSE
  ;!define MUI_FINISHPAGE_SHOWREADME_NOTCHECKED
  !define MUI_FINISHPAGE_SHOWREADME "$INSTDIR\Mods\${NAME}\Docs\Readme_UI.txt"
  !define MUI_FINISHPAGE_SHOWREADME_TEXT "Show Readme"
  ;!define MUI_FINISHPAGE_SHOWREADME_FUNCTION
  !define MUI_FINISHPAGE_RUN
  !define MUI_FINISHPAGE_RUN_NOTCHECKED
  !define MUI_FINISHPAGE_RUN_TEXT "Show Palettes Info"
  !define MUI_FINISHPAGE_RUN_FUNCTION "LaunchLink"
  Function LaunchLink
    ExecShell "" "$INSTDIR\Mods\${NAME}\Docs\Custom_Palettes.txt"
  FunctionEnd
  !define MUI_FINISHPAGE_LINK "Click here to visit Anach's Website"
  !define MUI_FINISHPAGE_LINK_LOCATION "http://users.on.net/~anach"
  !define MUI_UNFINISHPAGE_NOAUTOCLOSE
   
;--------------------------------
;Pages
  !insertmacro MUI_PAGE_WELCOME
  ;!insertmacro MUI_PAGE_LICENSE "${NSISDIR}\Docs\Modern ui\License.txt"
;Add the readme & Changelog pages
  !insertmacro MUI_PAGE_README "Docs\Readme_UI.txt"
  !insertmacro MUI_PAGE_CHANGES "Docs\Changelog_UI.txt"
  !insertmacro MUI_PAGE_COMPONENTS
  !insertmacro MUI_PAGE_DIRECTORY
  !insertmacro MUI_PAGE_STARTMENU Application $StartMenuFolder
  !insertmacro MUI_PAGE_INSTFileS
  !insertmacro MUI_UNPAGE_CONFIRM
  !insertmacro MUI_UNPAGE_INSTFileS    
  !insertmacro MUI_PAGE_FINISH
   
 
;--------------------------------
;Languages
  !insertmacro MUI_LANGUAGE "English"
  !insertmacro MUI_LANGUAGE "German"
  !insertmacro MUI_LANGUAGE "Slovenian"
  
;Include ZipDLL
!include "ZipDLL.nsh"

 
;Readme page text
  ${ReadmeLanguage} "${LANG_ENGLISH}" \
          "Readme" \
          "Please review the following important information." \
          "Readme for $(^name) version ${VERSION}:" \
          "$\n  Click on scrollbar arrows or press Page Down to review the entire text."
          
  ${ReadmeLanguage} "${LANG_GERMAN}" \
          "Liesmich" \
          "Bitte lesen Sie die folgenden wichtigen Informationen."\
          "Liesmich für $(^name):" \
          "$\n Klicken Sie auf die Pfeile der Roll-Leiste oder drücken Sie Bild Auf oder Bild Ab, um den Gesamten Text einzusehen."
          
  ${ReadmeLanguage} "${LANG_SLOVENIAN}" \
          "Preberi me" \
          "Prosime preberite naslednje vazne informacije." \
          "Preberi me $(^name):" \
          "$\n  Kliknite na pušèice ali pritisnite stran dol na tipkovnici da preberite ves tekst."
  
;Changelog page text
  ${ChangesLanguage} "${LANG_ENGLISH}" \
          "Change Log" \
          "Please review the following important information." \
          "Changelog for $(^name) version ${VERSION}:" \
          "$\n  Click on scrollbar arrows or press Page Down to review the entire text."
          
  ${ChangesLanguage} "${LANG_GERMAN}" \
          "Änderungslogbuch" \
          "Bitte lesen Sie die folgenden wichtigen Informationen."\
          "Änderungslogbuch für $(^name):" \
          "$\n Klicken Sie auf die Pfeile der Roll-Leiste oder drücken Sie Bild Auf oder Bild Ab, um den Gesamten Text einzusehen."
          
  ${ChangesLanguage} "${LANG_SLOVENIAN}" \
          "Spremembe" \
          "Prosime preberite naslednje vazne informacije." \
          "Spremembe $(^name):" \
          "$\n  Kliknite na pušèice ali pritisnite stran dol na tipkovnici da preberite ves tekst."

;Welcome page multi-language  
  LangString WELCOMEPAGE_TEXT ${LANG_ENGLISH} "This wizard will guide you through installing ${NAME} for Star Wars Galaxies. $\r$\n$\nPlease make sure you have the latest version by checking for updates at: http://www.anach.tk"
  LangString WELCOMEPAGE_TEXT ${LANG_GERMAN} "Dieser Setup Assistent wird Sie durch die Installation der Vor-NSV Benutzerschnittstelle für Krieg der Sterne Galaxien leiten. $\r$\n$\nBitte stellen sie durch die Überprüfung von http://www.anach.tk sicher, daß Sie die neueste Version installiert haben."
  
  LangString WELCOMEPAGE_TEXT ${LANG_SLOVENIAN} "Èarovnik vas bo vodil skozi instalacijo Pred-NIPske uporabniškega interfejsa za galaxije Vojne Zvezd. $\r$\n$\nProsim obišèite http://www.anach.tk za preveritev najnovejše verzije."
  
;Finsih Page Multi-language
  LangString FINISHPAGE_TEXT ${LANG_ENGLISH} "Please take a moment to check the readme for relevant information. $\r$\n$\nBe sure to visit the link below to check for updates after each Chapter/Publish.$\r$\r$\r$\n"
  
  LangString FINISHPAGE_TEXT ${LANG_GERMAN} "Bitte nehmen Sie sich einen Moment Zeit, um die Liesmich Datei zwecks relevanter Informationen einzusehen. $\r$\n$\nStellen Sie sicher, dass sie die Verknüpfung unten nach jedem Kapitel/jeder Veröffentlichung von Star Wars Galaxies besuchen."
  
  LangString FINISHPAGE_TEXT ${LANG_SLOVENIAN} "Prosim vzemite si malo èasa da preberite preberi me datoteko zaradi važnjih informacij. $\r$\n$\nProsim obišèite spodnjo povezavo za preveritev novic o uporabniškem interfejsu po vsakem poglavju ali objavi."

;--------------------------------

;Save section options to registry
Section "-save"

;Save settings? 
  MessageBox MB_YESNO|MB_ICONINFORMATION \
  "Do you wish to remember your selected options for version ${VERSION} ?" \
  IDYES save IDNO done 
   abort    
 
   save:
  ${SectionWriteReg} HKCU "${PRODUCT_UNINST_KEY}" "${VERSION}"
  
   done:
SectionEnd

;Uninstall log create
!define UninstLog "${FILENAME}_Uninstall.log"

Var UninstLog
 
;Uninstall log file missing.
LangString UninstLogMissing ${LANG_ENGLISH} "${UninstLog} not found!$\r$\nUninstallation cannot proceed!"

LangString UninstLogMissing ${LANG_GERMAN} "${UninstLog} nicht gefunden!$\r$\nDeinstallation kann nicht fortgesetzt werden!"

LangString UninstLogMissing ${LANG_SLOVENIAN} "${UninstLog} manjka!$\r$\nDeinštalacija ne more napredovati!"
 
;AddItem macro
!macro AddItem Path
 FileWrite $UninstLog "${Path}$\r$\n"
!macroend
!define AddItem "!insertmacro AddItem"
 
;File macro
!macro File FilePath FileName
 IfFileExists "$OUTDIR\${FileName}" +2
  FileWrite $UninstLog "$OUTDIR\${FileName}$\r$\n"
 File "${FilePath}${FileName}"
!macroend
!define File "!insertmacro File"
 
;Copy files macro
!macro CopyFiles SourcePath DestPath
 IfFileExists "${DestPath}" +2
  FileWrite $UninstLog "${DestPath}$\r$\n"
 CopyFiles "${SourcePath}" "${DestPath}"
!macroend
!define CopyFiles "!insertmacro CopyFiles"
 
;Rename macro
!macro Rename SourcePath DestPath
 IfFileExists "${DestPath}" +2
  FileWrite $UninstLog "${DestPath}$\r$\n"
 Rename "${SourcePath}" "${DestPath}"
!macroend
!define Rename "!insertmacro Rename"
 
;CreateDirectory macro
!macro CreateDirectory Path
 CreateDirectory "${Path}"
 FileWrite $UninstLog "${Path}$\r$\n"
!macroend
!define CreateDirectory "!insertmacro CreateDirectory"
 
;SetOutPath macro
!macro SetOutPath Path
 SetOutPath "${Path}"
 FileWrite $UninstLog "${Path}$\r$\n"
!macroend
!define SetOutPath "!insertmacro SetOutPath"
 
;WriteUninstaller macro
!macro WriteUninstaller Path
 WriteUninstaller "${Path}"
 FileWrite $UninstLog "${Path}$\r$\n"
!macroend
!define WriteUninstaller "!insertmacro WriteUninstaller"

;FileBackup Macros
!macro BackupFile FILE_DIR FILE BACKUP_TO
 IfFileExists "${BACKUP_TO}\*.*" +2
  CreateDirectory "${BACKUP_TO}"
 IfFileExists "${FILE_DIR}\${FILE}" 0 +2
  Rename "${FILE_DIR}\${FILE}" "${BACKUP_TO}\${FILE}"
!macroend
!define BackupFile "!insertmacro BackupFile"

;RestoreFile from backup macro
!macro RestoreFile BUP_DIR FILE RESTORE_TO
 Delete "${RESTORE_TO}\${FILE}"
 IfFileExists "${BUP_DIR}\${FILE}" 0 +2
  Rename "${BUP_DIR}\${FILE}" "${RESTORE_TO}\${FILE}"
!macroend
!define RestoreFile "!insertmacro RestoreFile"

Section -openlogfile
 CreateDirectory "$INSTDIR"
 IfFileExists "$INSTDIR\${UninstLog}" +3
  FileOpen $UninstLog "$INSTDIR\${UninstLog}" w
 Goto +4
  SetFileAttributes "$INSTDIR\${UninstLog}" NORMAL
  FileOpen $UninstLog "$INSTDIR\${UninstLog}" a
  FileSeek $UninstLog 0 END
SectionEnd

;--------------------------------
;Installer Sections

;Cursors
SectionGroup "Cursors" SecGrpCursors
  Section "Full Size Cursors" SecFullCursors
    SectionGetText ${SecFullCursors} $0
    DetailPrint "Installed $0"
    ${SetOutPath} "$INSTDIR\texture"
	
	${BackupFile} "$INSTDIR\texture" "ui_cursor_attack.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"    
    ${File} "texture\" "ui_cursor_attack.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_big.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "texture\" "ui_cursor_big.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_default.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "texture\" "ui_cursor_default.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_move.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "texture\" "ui_cursor_move.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_open.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "texture\" "ui_cursor_open.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_resize_hor.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "texture\" "ui_cursor_resize_hor.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_resize_se.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "texture\" "ui_cursor_resize_se.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_resize_sw.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "texture\" "ui_cursor_resize_sw.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_resize_vert.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "texture\" "ui_cursor_resize_vert.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_talk.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "texture\" "ui_cursor_talk.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_use.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "texture\" "ui_cursor_use.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_target_inactive.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "texture\" "ui_target_inactive.dds"
		
  SectionEnd
      
  Section /o "25% Smaller Cursors" SecSmallCursors
    SectionGetText ${SecSmallCursors} $0
    DetailPrint "Installed $0"
    ${SetOutPath} "$INSTDIR\texture"
	
	${BackupFile} "$INSTDIR\texture" "ui_cursor_activate.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_activate.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_attack.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_attack.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_big.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_big.dds"
    ${BackupFile} "$INSTDIR\texture" "ui_cursor_crafting.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_crafting.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_deactivate.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_deactivate.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_default.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_default.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_drag_bad.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_drag_bad.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_drag_scroll.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_drag_scroll.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_drop.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_drop.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_eat.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_eat.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_equip.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_equip.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_hourglass.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_hourglass.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_info.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_info.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_intended_attack.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_intended_attack.dds"
	${BackupFile} "$INSTDIR\texture" "ui_cursor_sit.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_sit.dds"
	${BackupFile} "$INSTDIR\texture" "ui_cursor_loot.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_loot.dds"	
	${BackupFile} "$INSTDIR\texture" "ui_cursor_mission_details.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_mission_details.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_move.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_move.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_open.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_open.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_pickup.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_pickup.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_resize_hor.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_resize_hor.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_resize_se.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_resize_se.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_resize_sw.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_resize_sw.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_resize_vert.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_resize_vert.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_stop_talk.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_stop_talk.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_talk.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_talk.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_throw.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_throw.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_trade_accepted.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_trade_accepted.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_trade_start.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_trade_start.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_unequip.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_unequip.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_use.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_use.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_zonemap_move.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_zonemap_move.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_zonemap_rotate.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_zonemap_rotate.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_zonemap_select.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_zonemap_select.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_zonemap_zoom_in.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_zonemap_zoom_in.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_cursor_zonemap_zoom_out.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_cursor_zonemap_zoom_out.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_target_inactive.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_target_inactive.dds"
  ${BackupFile} "$INSTDIR\texture" "ui_marker_you.dds" "$INSTDIR\Mods\${NAME}\Backup\texture"
		${File} "Options\Cursors - Smaller\" "ui_marker_you.dds"
 
  SectionEnd
SectionGroupEnd

;Optional Addons

;Examine
SectionGroup "Optional" SecGrpOptions
  Section /o "Examine with Badges" SecExamineWithBadges
    SectionGetText ${SecExamineWithBadges} $0
    DetailPrint "Installed $0"
      ${SetOutPath} "$INSTDIR\ui"
  SectionEnd

  ;Quest Helper
  Section /o "Fading Quest Helper" SecQuestHelper
    SectionGetText ${SecQuestHelper} $0
    DetailPrint "Installed $0"
      ${SetOutPath} "$INSTDIR\ui"
      
      ${BackupFile} "$INSTDIR\ui" "ui_ground_hud_quest_helper.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
    ${File} "Options\Quest Helper -  Fading\" "ui_ground_hud_quest_helper.inc"
    
    ${BackupFile} "$INSTDIR\ui" "ui_hud_space_quest_helper.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
    ${File} "Options\Quest Helper -  Fading\" "ui_hud_space_quest_helper.inc"
  SectionEnd
;Menubar group    
  SectionGroup "Horizontal Menubar" SecGrpMenubar
    Section /o "Coloured" SecColouredMenubar
    SectionGetText ${SecColouredMenubar} $0
    DetailPrint "Installed $0"
      ${SetOutPath} "$INSTDIR\ui"
    SectionEnd
    
    Section /o "Classic" SecOriginalMenubar
    SectionGetText ${SecOriginalMenubar} $0
    DetailPrint "Installed $0"
      ${SetOutPath} "$INSTDIR\ui"
    SectionEnd
    
    Section /o "Coloured (Space)" SecColouredSpaceMenubar
    SectionGetText ${SecColouredSpaceMenubar} $0
    DetailPrint "Installed $0"
      ${SetOutPath} "$INSTDIR\ui"
    SectionEnd
    
     Section /o "Classic (Space)" SecOriginalSpaceMenubar
    SectionGetText ${SecOriginalSpaceMenubar} $0
    DetailPrint "Installed $0"
      ${SetOutPath} "$INSTDIR\ui"
    SectionEnd
    SectionGroupEnd

;Net status  
  Section /o "Resizable NetStatus Window" SecResizableNetStatusWindow
    SectionGetText ${SecResizableNetStatusWindow} $0
    DetailPrint "Installed $0"
      ${SetOutPath} "$INSTDIR\ui"
    
    ${BackupFile} "$INSTDIR\ui" "ui_pda_net_status.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
    ${File} "Options\Net Status - Resizable\" "ui_pda_net_status.inc"
    SectionEnd

;Small group
  Section /o "Smaller Group Window" SecSmallerGroupWindow
    SectionGetText ${SecSmallerGroupWindow} $0
    DetailPrint "Installed $0"
      ${SetOutPath} "$INSTDIR\ui"
    SectionEnd

;Toolbar Group
  SectionGroup "Toolbars" SecGrpToolbarOptions
    Section /o "Toolbar - No Big Icon" SecToolbar
    SectionGetText ${SecToolbar} $0
    DetailPrint "Installed $0"
     ${SetOutPath} "$INSTDIR\ui"
    SectionEnd
  
    Section /o "Toolbar - Pre-CU" SecToolbarPreCU
    SectionGetText ${SecToolbarPreCU} $0
    DetailPrint "Installed $0"
     ${SetOutPath} "$INSTDIR\ui"
    SectionEnd
    SectionGroupEnd

;White HAMs      
  Section /o "White HAM Bars" SecWhiteHAMs
    SectionGetText ${SecWhiteHAMs} $0
    DetailPrint "Installed $0"
    ${SetOutPath} "$INSTDIR\ui"
    SectionEnd
 SectionGroupEnd
  
;Main UI files.
  Section "Pre-NGE UI Files" SecUI
    SectionGetText ${SecUI} $0
    DetailPrint "Installed $0"
  ${SetOutPath} "$INSTDIR\ui"
  
  SectionIn RO
  
  ${BackupFile} "$INSTDIR\ui" "ui_ground_hud.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
    ${File} "ui\" "ui_ground_hud.inc"
  ${BackupFile} "$INSTDIR\ui" "ui_ground_hud_chat_window_skinned.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
    ${File} "ui\" "ui_ground_hud_chat_window_skinned.inc"
  ${BackupFile} "$INSTDIR\ui" "ui_ground_hud_radar_skinned.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
    ${File} "ui\" "ui_ground_hud_radar_skinned.inc"
  ${BackupFile} "$INSTDIR\ui" "ui_pda_collections.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
    ${File} "ui\" "ui_pda_collections.inc"
  ${BackupFile} "$INSTDIR\ui" "ui_pda_exp_mon_skinned.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
    ${File} "ui\" "ui_pda_exp_mon_skinned.inc"
  ${BackupFile} "$INSTDIR\ui" "ui_pda_location_display.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
    ${File} "ui\" "ui_pda_location_display.inc"
  ${BackupFile} "$INSTDIR\ui" "ui_styles.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
    ${File} "ui\" "ui_styles.inc"
  ${BackupFile} "$INSTDIR\ui" "ui_hud_space.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
    ${File} "ui\" "ui_hud_space.inc"
  ${BackupFile} "$INSTDIR\ui" "ui_hud_space_toolbar.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
    ${File} "ui\" "ui_hud_space_toolbar.inc"
  ${BackupFile} "$INSTDIR\ui" "ui_options.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
    ${File} "ui\" "ui_options.inc"
  ${BackupFile} "$INSTDIR\ui" "ui_palette_ground.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
  SetOverwrite off
    ${File} "ui\" "ui_palette_ground.inc"
  setOverwrite on
  ${BackupFile} "$INSTDIR\ui" "ui_palette_space.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
  setOverwrite off
    ${File} "ui\" "ui_palette_space.inc"
  setOverwrite on

  SectionEnd
    
;Documentation & Screenshots
Section "Documentation" SecReadme
    SectionGetText ${SecReadme} $0
    DetailPrint "Installed $0"
  ${SetOutPath} "$INSTDIR\Mods\${NAME}\Docs"
  
  SectionIn RO
  
  ${File} "Docs\" "Readme_UI.txt"
  ${File} "Docs\" "Changelog_UI.txt"
  ${File} "Docs\" "Custom_Palettes.txt"
  
  ${SetOutPath} "$INSTDIR\Mods\${NAME}\Screenshots"
  
  ${File} "Screenshots\" "Cursors_Small.jpg"
  ${File} "Screenshots\" "Examine Window.jpg"
  ${File} "Screenshots\" "Group_Slimline.jpg"
  ${File} "Screenshots\" "HAM_White.jpg"
  ${File} "Screenshots\" "Horizontal_Menubar_Coloured.jpg"
  ${File} "Screenshots\" "Horizontal_Menubar_Original.jpg"
  ${File} "Screenshots\" "Net_Status.jpg"
  ${File} "Screenshots\" "Toolbars_No-Icon_Pre-CU.jpg"
  ${File} "Screenshots\" "ui_800.jpg"
  
  ${SetOutPath} "$INSTDIR\Mods\${NAME}\Icons"
  
  ${File} "Icons\" "Readme.ico"
  ${File} "Icons\" "Changelog.ico"
  ${File} "Icons\" "Palettes.ico"
  ${File} "Icons\" "Web.ico"
  ${File} "Icons\" "Update.ico"
  ${File} "Icons\" "Uninstall.ico"
  ${File} "Icons\" "Installer.ico"
  ${File} "Icons\" "Screenshots.ico"
  
  ${SetOutPath} "$INSTDIR\Mods\${NAME}\Updater"
  
  ${File} "Updater\" "${FILENAME}_Updater.exe"
SectionEnd

;Silent Updater 
  Section /o "UI Update Check at Windows Startup" SecUpdateCheck
  SectionGetText ${SecUpdateCheck} $0
    DetailPrint "Installed $0"
    
  ${SetOutPath} "$INSTDIR\Mods\${NAME}\Updater"
  ${File} "Updater\" "${FILENAME}_Updater_Silent.exe"

     createShortCut "$SMPROGRAMS\Startup\${NAME} Updater.lnk" "$INSTDIR\Mods\${NAME}\Updater\${FILENAME}_Updater_Silent.exe" "" "$INSTDIR\Mods\${NAME}\Icons\Update.ico" 0
   SectionEnd

  Section 
;Install only required files 
             
;toolbar selection   
  ${If} ${SectionIsSelected} ${SecToolbar}
    ${SetOutPath} "$INSTDIR\ui"    
    ${BackupFile} "$INSTDIR\ui" "ui_ground_hud_toolbar_skinned.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
    ${File} "Options\Toolbar - No Big Icon\" "ui_ground_hud_toolbar_skinned.inc"
    
    ${ElseIf} ${SectionIsSelected} ${SecToolbarPreCU} 
  ${SetOutPath} "$INSTDIR\ui"
    ${BackupFile} "$INSTDIR\ui" "ui_ground_hud_toolbar_skinned.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
    ${File} "Options\Toolbar - Pre-CU\" "ui_ground_hud_toolbar_skinned.inc"

 ${ElseIf} ${SectionIsSelected} ${SecUI} 
  ${SetOutPath} "$INSTDIR\ui"
    ${BackupFile} "$INSTDIR\ui" "ui_ground_hud_toolbar_skinned.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
    ${File} "ui\" "ui_ground_hud_toolbar_skinned.inc"
  ${EndIf}
    
;Examine selection    
  ${If} ${SectionIsSelected} ${SecExamineWithBadges} 
  ${SetOutPath} "$INSTDIR\ui"
    ${BackupFile} "$INSTDIR\ui" "ui_pda_examine.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
    ${File} "Options\Examine Window - Badge Display & Collapse\" "ui_pda_examine.inc"

 ${ElseIf} ${SectionIsSelected} ${SecUI}  
  ${SetOutPath} "$INSTDIR\ui"
    ${BackupFile} "$INSTDIR\ui" "ui_pda_examine.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
    ${File} "ui\" "ui_pda_examine.inc"
  ${EndIf}

;HAM selection    
  ${If} ${SectionIsSelected} ${SecWhiteHAMs}   
    ${SetOutPath} "$INSTDIR\ui"  
    ${BackupFile} "$INSTDIR\ui" "ui_ground_hud_all_targets.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
    ${File} "Options\HA(M) - White Background\" "ui_ground_hud_all_targets.inc"
    ${BackupFile} "$INSTDIR\ui" "ui_ground_hud_mfd_status_skinned.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
    ${File} "Options\HA(M) - White Background\" "ui_ground_hud_mfd_status_skinned.inc"
    ${BackupFile} "$INSTDIR\ui" "ui_ground_hud_pet.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
    ${File} "Options\HA(M) - White Background\" "ui_ground_hud_pet.inc"
    ${BackupFile} "$INSTDIR\ui" "ui_ground_hud_secondary_targets_skinned.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
    ${File} "Options\HA(M) - White Background\" "ui_ground_hud_secondary_targets_skinned.inc"
    ${BackupFile} "$INSTDIR\ui" "ui_ground_hud_targets_skinned.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
    ${File} "Options\HA(M) - White Background\" "ui_ground_hud_targets_skinned.inc"

 ${ElseIf} ${SectionIsSelected} ${SecUI}  
  ${SetOutPath} "$INSTDIR\ui"   
   ${BackupFile} "$INSTDIR\ui" "ui_ground_hud_mfd_status_skinned.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
   ${File} "ui\" "ui_ground_hud_mfd_status_skinned.inc"
   ${BackupFile} "$INSTDIR\ui" "ui_ground_hud_pet.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
   ${File} "ui\" "ui_ground_hud_pet.inc"
   ${BackupFile} "$INSTDIR\ui" "ui_ground_hud_secondary_targets_skinned.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
   ${File} "ui\" "ui_ground_hud_secondary_targets_skinned.inc"
   ${BackupFile} "$INSTDIR\ui" "ui_ground_hud_targets_skinned.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
   ${File} "ui\" "ui_ground_hud_targets_skinned.inc"
  ${EndIf}

;Slimline Group Window selection      
  ${If} ${SectionIsSelected} ${SecSmallerGroupWindow}
    ${AndIf} ${SectionIsSelected} ${SecWhiteHAMs} 
      ${SetOutPath} "$INSTDIR\ui"
    
    ${BackupFile} "$INSTDIR\ui" "ui_ground_hud_sml_group_window.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
     ${File} "Options\Group Window - Slimline + White HA(M)\" "ui_ground_hud_sml_group_window.inc"
    
  ${ElseIf} ${SectionIsSelected} ${SecSmallerGroupWindow} 
    ${SetOutPath} "$INSTDIR\ui"
    ${BackupFile} "$INSTDIR\ui" "ui_ground_hud_sml_group_window.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
     ${File} "Options\Group Window - Slimline\" "ui_ground_hud_sml_group_window.inc"
    
  ${ElseIf} ${SectionIsSelected} ${SecWhiteHAMs} 
    ${SetOutPath} "$INSTDIR\ui"
   ${BackupFile} "$INSTDIR\ui" "ui_ground_hud_sml_group_window.inc" "$INSTDIR\Mods\${NAME}\Backup\ui" 
    ${File} "Options\HA(M) - White Background\" "ui_ground_hud_sml_group_window.inc"
    
  ${ElseIf} ${SectionIsSelected} ${SecUI} 
    ${SetOutPath} "$INSTDIR\ui"
   ${BackupFile} "$INSTDIR\ui" "ui_ground_hud_sml_group_window.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
      ${File} "ui\" "ui_ground_hud_sml_group_window.inc"
  ${EndIf}
    
;Ground Menubar selection      
  ${If} ${SectionIsSelected} ${SecColouredMenubar} 
    ${SetOutPath} "$INSTDIR\ui"
    ${BackupFile} "$INSTDIR\ui" "ui_ground_hud_buttonbar_skinned.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
      ${File} "Options\Horizontal Menubar - Coloured\" "ui_ground_hud_buttonbar_skinned.inc"
    
  ${ElseIf} ${SectionIsSelected} ${SecOriginalMenubar} 
    ${SetOutPath} "$INSTDIR\ui"
    ${BackupFile} "$INSTDIR\ui" "ui_ground_hud_buttonbar_skinned.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
      ${File} "Options\Horizontal MenuBar - Original\" "ui_ground_hud_buttonbar_skinned.inc"
  
  ${ElseIf} ${SectionIsSelected} ${SecUI} 
    ${SetOutPath} "$INSTDIR\ui"    
    ${BackupFile} "$INSTDIR\ui" "ui_ground_hud_buttonbar_skinned.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
      ${File} "ui\" "ui_ground_hud_buttonbar_skinned.inc"
  ${EndIf}
  
;Space Menubar selection 
  ${If} ${SectionIsSelected} ${SecColouredSpaceMenubar} 
    ${SetOutPath} "$INSTDIR\ui"
    ${BackupFile} "$INSTDIR\ui" "ui_hud_space_buttonbar.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
      ${File} "Options\Horizontal Space Menubar - Coloured\" "ui_hud_space_buttonbar.inc"
  
  ${ElseIf} ${SectionIsSelected} ${SecOriginalSpaceMenubar} 
    ${SetOutPath} "$INSTDIR\ui"
    ${BackupFile} "$INSTDIR\ui" "ui_hud_space_buttonbar.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
      ${File} "Options\Horizontal Space Menubar - Original\" "ui_hud_space_buttonbar.inc"     
  
  ${ElseIf} ${SectionIsSelected} ${SecUI} 
    ${SetOutPath} "$INSTDIR\ui"
    ${BackupFile} "$INSTDIR\ui" "ui_hud_space_buttonbar.inc" "$INSTDIR\Mods\${NAME}\Backup\ui"
      ${File} "ui\" "ui_hud_space_buttonbar.inc"
  ${EndIf}
  
  SectionEnd
  
;Store installation details in registry
Section
  WriteRegStr HKCU "SOFTWARE\Anach\${NAME}" "" $INSTDIR
  
  WriteRegStr HKCU "SOFTWARE\Anach\${NAME}" \
                    "DisplayVersion" "${VERSION}"
  
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${NAME}" \
                    "DisplayName" "${NAME}"
                    
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${NAME}" \
                    "DisplayVersion" "${VERSION}"
                    
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${NAME}" \
                    "HelpLink" "http://www.anach.tk"               
                                                        
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${NAME}" \
                    "UninstallString" "${UNINSTALLER}"
                    
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${NAME}" \
                    "InstallPath" "$INSTDIR"  
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${NAME}" \
                    "StartMenuFolder"  "$SMPROGRAMS\$StartMenuFolder"
                    
;Startmenu Shortcuts
  !insertmacro MUI_STARTMENU_WRITE_BEGIN Application
  
  CreateDirectory "$SMPROGRAMS\$StartMenuFolder"
    createShortCut "$SMPROGRAMS\$StartMenuFolder\Readme.lnk" "$INSTDIR\Mods\${NAME}\Docs\Readme_UI.txt" "" "$INSTDIR\Mods\${NAME}\Icons\Readme.ico" 0
	
  createShortCut "$SMPROGRAMS\$StartMenuFolder\Changelog.lnk" "$INSTDIR\Mods\${NAME}\Docs\Changelog_UI.txt" "" "$INSTDIR\Mods\${NAME}\Icons\Changelog.ico" 0
  
  createShortCut "$SMPROGRAMS\$StartMenuFolder\Palette Info.lnk" "$INSTDIR\Mods\${NAME}\Docs\Custom_Palettes.txt" "" "$INSTDIR\Mods\${NAME}\Icons\Palettes.ico" 0
  
  createShortCut "$SMPROGRAMS\$StartMenuFolder\Homepage.lnk" "http://users.on.net/~anach" "" "$INSTDIR\Mods\${NAME}\Icons\Web.ico" 0
  
  createShortCut "$SMPROGRAMS\$StartMenuFolder\ModSource.lnk" "http://mods.mandalorians.de" "" "$INSTDIR\Mods\${NAME}\Icons\Web.ico" 0
  
  createShortCut "$SMPROGRAMS\$StartMenuFolder\Uninstall.lnk" "${UNINSTALLER}"  "" "$INSTDIR\Mods\${NAME}\Icons\Uninstall.ico" 0
  
  createShortCut "$SMPROGRAMS\$StartMenuFolder\Screenshots.lnk""$INSTDIR\Mods\${NAME}\Screenshots"  "" "$INSTDIR\Mods\${NAME}\Icons\Screenshots.ico" 0
  
  createShortCut "$SMPROGRAMS\$StartMenuFolder\UI Updater.lnk" "$INSTDIR\Mods\${NAME}\Updater\${FILENAME}_Updater.exe" "" "$INSTDIR\Mods\${NAME}\Icons\Update.ico" 0
  
!insertmacro MUI_STARTMENU_WRITE_END

;Create uninstaller
  WriteUninstaller "${UNINSTALLER}"

SectionEnd


  
;Print details
Section
  Call Uninstall
SectionEnd

;--------------------------------
;Description language Strings English
  LangString DESC_SecGrpCursors ${LANG_ENGLISH} "Cursor Options"
 
	LangString DESC_SecFullCursors ${LANG_ENGLISH} "Full Size Pre-NGE mouse cursors"
  
	LangString DESC_SecSmallCursors ${LANG_ENGLISH} "25% smaller Pre-NGE Cursors"
 
	LangString DESC_SecReadme ${LANG_ENGLISH} "Readme, Changelog, Palette Info and Screenshots"
 
	LangString DESC_SecUI ${LANG_ENGLISH} "Required UI Files"
  
	LangString DESC_SecGrpOptions ${LANG_ENGLISH} "Optional Components"
 
	LangString DESC_SecExamineWithBadges ${LANG_ENGLISH} "Examine window with old badge display and fixed collapse button"
 
	LangString DESC_SecQuestHelper ${LANG_ENGLISH} "Quest Helper will only show in cursor mode, and fades out compeltely when in free look."
 
	LangString DESC_SecSmallerGroupWindow ${LANG_ENGLISH} "Slimline Group Window for either Standard or White HA(M) option"
  
	LangString DESC_SecGrpMenubar ${LANG_ENGLISH} "Horizontal Menubars"
  
	LangString DESC_SecColouredMenubar ${LANG_ENGLISH} "Coloured Horizontal menubar with Collections and Expertise buttons"
  
	LangString DESC_SecOriginalMenubar ${LANG_ENGLISH} "Classic Horizontal Menubar with white icons and without new buttons"
  
	LangString DESC_SecColouredSpaceMenubar ${LANG_ENGLISH} "Coloured Horizontal Space Menubar with Collections, Expertise, and homeport buttons"
  
	LangString DESC_SecOriginalSpaceMenubar ${LANG_ENGLISH} "Classic Horizontal Space Menubar with white icons and without new buttons"
 
	LangString DESC_SecGrpToolbarOptions ${LANG_ENGLISH} "Toolbar Options"
	
	LangString DESC_SecToolbar ${LANG_ENGLISH} "Toolbar without the Big Icon"
	
	LangString DESC_SecToolbarPreCU ${LANG_ENGLISH} "Pre-CU Size Toolbar"
 
	LangString DESC_SecWhiteHAMs ${LANG_ENGLISH} "HA(M) bars with white backgrounds"
 
	LangString DESC_SecResizableNetStatusWindow ${LANG_ENGLISH} "Compact & resizable Net Status window"
  
  LangString DESC_SecUpdateCheck ${LANG_ENGLISH} "Automatically Checks and notifies of Pre-NGE UI updates during Windows Startup"
  
;Description Strings German
	LangString DESC_SecGrpCursors ${LANG_GERMAN} "Zeigeroptionen"
 
	LangString DESC_SecFullCursors ${LANG_GERMAN} "Vollbusige Vor-NSV Mauszeiger."
 
	LangString DESC_SecSmallCursors ${LANG_GERMAN} "Fünfundzwanzig Prozent kleinere Vor-NSV Mauszeiger."
  
	LangString DESC_SecReadme ${LANG_GERMAN} "Liesmich, Änderungslogbuch, Paletteninformationen und Bildeinschüsse."
  
	LangString DESC_SecUI ${LANG_GERMAN} "Benötig: BS Dateien"
 
	LangString DESC_SecGrpOptions ${LANG_GERMAN} "Optionale Komponenten"
 
	LangString DESC_SecExamineWithBadges ${LANG_GERMAN} "Überprüfungsfenster mit Alter, Abzeichenanzeige und repariertem Einsturzknopf."
  
	LangString DESC_SecQuestHelper ${LANG_GERMAN} "Quest Helper will only show in cursor mode, and fades out compeltely when in free look."
  
	LangString DESC_SecSmallerGroupWindow ${LANG_GERMAN} "Gruppenfenster mit Schlanker Linie."
  
	LangString DESC_SecGrpMenubar ${LANG_GERMAN} "Optionale Menüleisten."
  
	LangString DESC_SecColouredMenubar ${LANG_GERMAN} "Gefärbte Horizontale Menüleiste mit Kollektions- und Fachwissensknöpfen."
 
	LangString DESC_SecOriginalMenubar ${LANG_GERMAN} "Ursprüngliche Horizontale Menüleisteohne Kollektions- und Fachwissensknöpfen."
  
	LangString DESC_SecColouredSpaceMenubar ${LANG_GERMAN} "Gefärbte Horizontale Weltraum Menüleiste mit Kollektions-, Fachwissens- und Heimathafenknöpfen."
  
	LangString DESC_SecOriginalSpaceMenubar ${LANG_GERMAN} "Ursprüngliche Horizontale Weltraum Menüleiste mit Kollektions-, Fachwissens- und Heimathafenknöpfen."
	
	LangString DESC_SecGrpToolbarOptions ${LANG_GERMAN} "Toolbar Options"
	
	LangString DESC_SecToolbar ${LANG_GERMAN} "Werkzeugleiste ohne großer Ikone."
	
	LangString DESC_SecToolbarPreCU ${LANG_GERMAN} "Pre-CU Size Toolbar"
   
	LangString DESC_SecWhiteHAMs ${LANG_GERMAN} "GA(V) Latten mit weissem Hinterngrund."
 
	LangString DESC_SecResizableNetStatusWindow ${LANG_GERMAN} "Kompaktes und Größenveränderbares Netzstatusfenster."
	
	LangString DESC_SecUpdateCheck ${LANG_GERMAN} "Automatically Checks and notifies of Pre-NGE UI updates during Windows Startup"
	
	
;Description Strings Slovenian
  LangString DESC_SecGrpCursors ${LANG_SLOVENIAN} "Kazalne opcije"
  
  LangString DESC_SecFullCursors ${LANG_SLOVENIAN} "Pred-NIPski miškovni kazalci polne velikosti."
  
  LangString DESC_SecSmallCursors ${LANG_SLOVENIAN} "Pred-NIPski miškovni kazalci petindvajset odstotne velikosti."
  
  LangString DESC_SecReadme ${LANG_SLOVENIAN} "Preberi me, spremembe, peletne informacije in slikce."
  
  LangString DESC_SecUI ${LANG_SLOVENIAN} "Potrebno: Datoteke uporabniškega interfejsa."
  
  LangString DESC_SecGrpOptions ${LANG_SLOVENIAN} "Opcijonalni deli"
  
  LangString DESC_SecExamineWithBadges ${LANG_SLOVENIAN} "Preiskovalno okence z izložbo starih nagrad in popravljenem zgruditeljskim gumbom." 
  
  LangString DESC_SecQuestHelper ${LANG_SLOVENIAN} "Quest Helper will only show in cursor mode, and fades out compeltely when in free look."
  
  LangString DESC_SecSmallerGroupWindow ${LANG_SLOVENIAN} "Vitko skupinsko okence."
  
  LangString DESC_SecGrpMenubar ${LANG_SLOVENIAN} "Opcijonalni menijski drogi."
  
  LangString DESC_SecColouredMenubar ${LANG_SLOVENIAN} "Pobarvani, vodoravni menijski drog z gumbih za kolekcije in strokovnjaštvo."
  
  LangString DESC_SecOriginalMenubar ${LANG_SLOVENIAN} "Prvotni, vodoravni menijski drog brez gumbov za kolekcije in strokovnjaštvo."
  
  LangString DESC_SecColouredSpaceMenubar ${LANG_SLOVENIAN} "Pobarvani, vodoravni vesoljski menijski drog s gumbom za kolekcije, strokovnjaštvo in domaèo luko."
  
  LangString DESC_SecOriginalSpaceMenubar ${LANG_SLOVENIAN} "Prvotni, vodoravni vesoljski menijski drog brez gumbov za  kolekcije, strokovnjaštvo ali domaèo luko."

  LangString DESC_SecGrpToolbarOptions ${LANG_SLOVENIAN} "Toolbar Options"
	
  LangString DESC_SecToolbar ${LANG_SLOVENIAN} "Orodniški drog brez velike ikone."
	
	LangString DESC_SecToolbarPreCU ${LANG_SLOVENIAN} "Pre-CU Size Toolbar"
  
  LangString DESC_SecWhiteHAMs ${LANG_SLOVENIAN} "ZA(P) drogovi z belim ozadjem."
  
  LangString DESC_SecResizableNetStatusWindow ${LANG_SLOVENIAN} "Kompaktno, spremenljivo okence za omrežni status."
  
  LangString DESC_SecUpdateCheck ${LANG_SLOVENIAN} "Automatically Checks and notifies of Pre-NGE UI updates during Windows Startup"
  
;Assign language strings to sections
  !insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
    !insertmacro MUI_DESCRIPTION_TEXT ${SecGrpCursors} $(DESC_SecGrpCursors)
    !insertmacro MUI_DESCRIPTION_TEXT ${SecFullCursors} $(DESC_SecFullCursors)
    !insertmacro MUI_DESCRIPTION_TEXT ${SecSmallCursors} $(DESC_SecSmallCursors)
    !insertmacro MUI_DESCRIPTION_TEXT ${SecReadme} $(DESC_SecReadme)
    !insertmacro MUI_DESCRIPTION_TEXT ${SecUI} $(DESC_SecUI)
    !insertmacro MUI_DESCRIPTION_TEXT ${SecGrpOptions} $(DESC_SecGrpOptions)
    !insertmacro MUI_DESCRIPTION_TEXT ${SecExamineWithBadges} $(DESC_SecExamineWithBadges)
    !insertmacro MUI_DESCRIPTION_TEXT ${SecQuestHelper} $(DESC_SecQuestHelper)
    !insertmacro MUI_DESCRIPTION_TEXT ${SecSmallerGroupWindow} $(DESC_SecSmallerGroupWindow)
    !insertmacro MUI_DESCRIPTION_TEXT ${SecGrpMenubar} $(DESC_SecGrpMenubar)
    !insertmacro MUI_DESCRIPTION_TEXT ${SecColouredMenubar} $(DESC_SecColouredMenubar)
    !insertmacro MUI_DESCRIPTION_TEXT ${SecOriginalMenubar} $(DESC_SecOriginalMenubar)
    !insertmacro MUI_DESCRIPTION_TEXT ${SecColouredSpaceMenubar} $(DESC_SecColouredSpaceMenubar)
    !insertmacro MUI_DESCRIPTION_TEXT ${SecOriginalSpaceMenubar} $(DESC_SecOriginalSpaceMenubar)
    !insertmacro MUI_DESCRIPTION_TEXT ${SecGrpToolbarOptions} $(DESC_SecGrpToolbarOptions)
    !insertmacro MUI_DESCRIPTION_TEXT ${SecToolbar} $(DESC_SecToolbar)
    !insertmacro MUI_DESCRIPTION_TEXT ${SecToolbarPreCU} $(DESC_SecToolbarPreCU)
    !insertmacro MUI_DESCRIPTION_TEXT ${SecWhiteHAMs} $(DESC_SecWhiteHAMs)
    !insertmacro MUI_DESCRIPTION_TEXT ${SecResizableNetStatusWindow} $(DESC_SecResizableNetStatusWindow)
    !insertmacro MUI_DESCRIPTION_TEXT ${SecUpdateCheck} $(DESC_SecUpdateCheck)
   
   !insertmacro MUI_FUNCTION_DESCRIPTION_END

;--------------------------------
;Uninstaller Script
 
Section -closelogfile
 FileClose $UninstLog
 SetFileAttributes "$INSTDIR\${UninstLog}" READONLY|SYSTEM|HIDDEN
SectionEnd

;Uninstaller Section
Section Uninstall

;Delete settings? 
  MessageBox MB_YESNO|MB_ICONINFORMATION \
  "Do you wish to forget your selected options for version ${VERSION}?" \
  IDYES save IDNO done 
   abort    
 
   save:
   DeleteRegKey HKCU "SOFTWARE\Anach\${NAME} Options"
   done:
   
    ReadRegStr $R3 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${NAME}" "InstallPath"
    ReadRegStr $R4 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${NAME}" "StartMenuFolder" 
    
;Can't uninstall if uninstall log is missing!
 IfFileExists "$R3\${UninstLog}" +3
  MessageBox MB_OK|MB_ICONSTOP "$(UninstLogMissing)"
    Abort
 
 ;Begin Uninstall
 Push $R0
 Push $R1
 Push $R2
 Push $R3
 Push $R4
 SetFileAttributes "$INSTDIR\${UninstLog}" NORMAL
 FileOpen $UninstLog "$INSTDIR\${UninstLog}" r
 StrCpy $R1 0
 
 GetLineCount:
  ClearErrors
   FileRead $UninstLog $R0
   IntOp $R1 $R1 + 1
   IfErrors 0 GetLineCount
 
 LoopRead:
  FileSeek $UninstLog 0 SET
  StrCpy $R2 0
  FindLine:
   FileRead $UninstLog $R0
   IntOp $R2 $R2 + 1
   StrCmp $R1 $R2 0 FindLine
 
   StrCpy $R0 $R0 -2
   IfFileExists "$R0\*.*" 0 +3
    RMDir $R0  #is dir
   Goto +3
   IfFileExists $R0 0 +2
    Delete $R0 #is file
 
  IntOp $R1 $R1 - 1
  StrCmp $R1 0 LoopDone
  Goto LoopRead
  
 LoopDone:
 
 ;Restore Backup Files

;Cursors
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_activate.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_attack.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_big.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_crafting.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_deactivate.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_default.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_drag_bad.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_drag_scroll.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_drop.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_eat.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_equip.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_hourglass.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_info.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_intended_attack.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_sit.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_loot.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_mission_details.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_move.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_open.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_pickup.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_resize_hor.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_resize_se.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_resize_sw.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_resize_vert.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_stop_talk.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_talk.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_throw.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_trade_accepted.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_trade_start.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_unequip.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_use.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_zonemap_move.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_zonemap_rotate.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_zonemap_select.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_zonemap_zoom_in.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_cursor_zonemap_zoom_out.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_target_inactive.dds" "$R3\texture"
${RestoreFile} "$R3\Mods\${NAME}\Backup\texture" "ui_marker_you.dds" "$R3\texture"

;UI Files
${RestoreFile} "$R3\Mods\${NAME}\Backup\ui" "ui_ground_hud.inc" "$R3\ui"
${RestoreFile} "$R3\Mods\${NAME}\Backup\ui" "ui_pda_collections.inc" "$R3\ui"
${RestoreFile} "$R3\Mods\${NAME}\Backup\ui" "ui_pda_location_display.inc" "$R3\ui"
${RestoreFile} "$R3\Mods\${NAME}\Backup\ui" "ui_pda_examine.inc" "$R3\ui"
${RestoreFile} "$R3\Mods\${NAME}\Backup\ui" "ui_ground_hud_quest_helper.inc" "$R3\ui"
${RestoreFile} "$R3\Mods\${NAME}\Backup\ui" "ui_hud_space_quest_helper.inc" "$R3\ui"
${RestoreFile} "$R3\Mods\${NAME}\Backup\ui" "ui_hud_space_buttonbar.inc" "$R3\ui"
${RestoreFile} "$R3\Mods\${NAME}\Backup\ui" "ui_pda_net_status.inc" "$R3\ui"
${RestoreFile} "$R3\Mods\${NAME}\Backup\ui" "ui_ground_hud_buttonbar_skinned.inc" "$R3\ui"
${RestoreFile} "$R3\Mods\${NAME}\Backup\ui" "ui_ground_hud_chat_window_skinned.inc" "$R3\ui"
${RestoreFile} "$R3\Mods\${NAME}\Backup\ui" "ui_ground_hud_all_targets.inc" "$R3\ui"
${RestoreFile} "$R3\Mods\${NAME}\Backup\ui" "ui_ground_hud_mfd_status_skinned.inc" "$R3\ui"
${RestoreFile} "$R3\Mods\${NAME}\Backup\ui" "ui_ground_hud_pet.inc" "$R3\ui"
${RestoreFile} "$R3\Mods\${NAME}\Backup\ui" "ui_ground_hud_radar_skinned.inc" "$R3\ui"
${RestoreFile} "$R3\Mods\${NAME}\Backup\ui" "ui_ground_hud_secondary_targets_skinned.inc" "$R3\ui"
${RestoreFile} "$R3\Mods\${NAME}\Backup\ui" "ui_ground_hud_sml_group_window.inc" "$R3\ui"
${RestoreFile} "$R3\Mods\${NAME}\Backup\ui" "ui_ground_hud_targets_skinned.inc" "$R3\ui"
${RestoreFile} "$R3\Mods\${NAME}\Backup\ui" "ui_ground_hud_toolbar_skinned.inc" "$R3\ui"
${RestoreFile} "$R3\Mods\${NAME}\Backup\ui" "ui_pda_exp_mon_skinned.inc" "$R3\ui"
${RestoreFile} "$R3\Mods\${NAME}\Backup\ui" "ui_styles.inc" "$R3\ui"
${RestoreFile} "$R3\Mods\${NAME}\Backup\ui" "ui_hud_space.inc" "$R3\ui"
${RestoreFile} "$R3\Mods\${NAME}\Backup\ui" "ui_hud_space_buttonbar.inc" "$R3\ui"
${RestoreFile} "$R3\Mods\${NAME}\Backup\ui" "ui_hud_space_toolbar.inc" "$R3\ui"
${RestoreFile} "$R3\Mods\${NAME}\Backup\ui" "ui_options.inc" "$R3\ui"
${RestoreFile} "$R3\Mods\${NAME}\Backup\ui" "ui_palette_ground.inc" "$R3\ui"
${RestoreFile} "$R3\Mods\${NAME}\Backup\ui" "ui_palette_space.inc" "$R3\ui"

;Clean up Backup Directory
 StrCpy $0 "$R3\Mods\${NAME}\Backup\texture"
 Call un.DeleteDirIfEmpty
 StrCpy $0 "$R3\Mods\${NAME}\Backup\ui"
 Call un.DeleteDirIfEmpty
 StrCpy $0 "$R3\Mods\${NAME}\Backup"
 Call un.DeleteDirIfEmpty
 
;Clean up Clean up Screenshots & Icons
 Delete "$R3\Mods\${NAME}\Screenshots\Cursors_Small.jpg"
 Delete "$R3\Mods\${NAME}\Screenshots\Examine Window.jpg"
 Delete "$R3\Mods\${NAME}\Screenshots\Group_Slimline.jpg"
 Delete "$R3\Mods\${NAME}\Screenshots\HAM_White.jpg"
 Delete "$R3\Mods\${NAME}\Screenshots\Horizontal_Menubar_Coloured.jpg"
 Delete "$R3\Mods\${NAME}\Screenshots\Horizontal_Menubar_Original.jpg"
 Delete "$R3\Mods\${NAME}\Screenshots\Net_Status.jpg"
 Delete "$R3\Mods\${NAME}\Screenshots\Toolbars_No-Icon_Pre-CU.jpg"
 Delete "$R3\Mods\${NAME}\Screenshots\ui_800.jpg" 
 Delete "$R3\Mods\${NAME}\Icons\Readme.ico"
 Delete "$R3\Mods\${NAME}\Icons\Changelog.ico"
 Delete "$R3\Mods\${NAME}\Icons\Palettes.ico"
 Delete "$R3\Mods\${NAME}\Icons\Web.ico"
 Delete "$R3\Mods\${NAME}\Icons\Update.ico"
 Delete "$R3\Mods\${NAME}\Icons\Uninstall.ico"
 Delete "$R3\Mods\${NAME}\Icons\Installer.ico"
 Delete "$R3\Mods\${NAME}\Icons\Screenshots.ico"
 
 StrCpy $0 "$R3\Mods\${NAME}\Icons"
 Call un.DeleteDirIfEmpty
 StrCpy $0 "$R3\Mods\${NAME}\Screenshots"
 Call un.DeleteDirIfEmpty
  
;remove startmenu folders
 Delete "$R4\Uninstall.lnk"
 Delete "$R4\Readme.lnk"
 Delete "$R4\Changelog.lnk"
 Delete "$R4\Palette Info.lnk"
 Delete "$R4\UI Updater.lnk"
 Delete "$R4\Homepage.lnk"
 Delete "$R4\ModSource.lnk"
 Delete "$R4\Screenshots.lnk"
 
 Delete "$R4\Startup\${FILENAME} Updater.lnk"
 
 StrCpy $0 "$R4\"
 Call un.DeleteDirIfEmpty
  
;Clean up Game Directories
 StrCpy $0 "$R3\ui"
 Call un.DeleteDirIfEmpty
 StrCpy $0 "$R3\texture"
 Call un.DeleteDirIfEmpty
 
;remove Documentation & Updater
 Delete "$R3\Mods\${NAME}\Docs\Changelog_UI.txt"
 Delete "$R3\Mods\${NAME}\Docs\Custom_Palettes.txt"
 Delete "$R3\Mods\${NAME}\Docs\Readme_UI.txt"
 Delete "$R3\Mods\${NAME}\Updater\${FILENAME}_Updater.exe"
 Delete "$R3\Mods\${NAME}\Updater\${FILENAME}_Updater_Silent.exe"
 StrCpy $0 "$R3\Mods\${NAME}\Docs"
 Call un.DeleteDirIfEmpty
 StrCpy $0 "$R3\Mods\${NAME}\Updater"
 Call un.DeleteDirIfEmpty
 
;remove uninstaller
 FileClose $UninstLog
 Delete "$R3\${UninstLog}"
 Delete "$R3\Mods\${NAME}\${FILENAME}_Uninstall.exe"
 
 StrCpy $0 "$R3\Mods\${NAME}"
 Call un.DeleteDirIfEmpty
 StrCpy $0 "$R3\Mods\"
 Call un.DeleteDirIfEmpty
   
;clean registry settings
 DeleteRegKey HKCU "SOFTWARE\Anach\${NAME} Options"
 DeleteRegKey HKCU "SOFTWARE\Anach\${NAME}"
 DeleteRegKey /ifempty HKCU "SOFTWARE\Anach"
 DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${NAME}"
 
 Pop $R4
 Pop $R3
 Pop $R2
 Pop $R1
 Pop $R0

 SectionEnd

;--------------------------------
;Functions

;Pre-Install Check
Function .onInit

;Ask Install Language
  !insertmacro MUI_LANGDLL_DISPLAY

;Section key reset
 ${SectionResetFlags} HKCU "${PRODUCT_UNINST_KEY}" "${VERSION}"

;Mermorize Install pre-selected Options
  StrCpy $WasSelectedGrpB ${SecFullCursors} 
  StrCpy $WasSelectedGrpC ${SecOriginalMenubar} 
  StrCpy $WasSelectedGrpD ${SecOriginalSpaceMenubar} 
  StrCpy $WasSelectedGrpE ${SecToolbarPreCU}

;Pre-Installed Check
  ReadRegStr $R0 HKLM \
  "Software\Microsoft\Windows\CurrentVersion\Uninstall\${NAME}" \
  "UninstallString"
  StrCmp $R0 "" done
  
  ReadRegStr $R1 HKLM \
  "Software\Microsoft\Windows\CurrentVersion\Uninstall\${NAME}" \
  "DisplayVersion"
  StrCmp $R1 "" done 
 
  MessageBox MB_YESNOCANCEL|MB_ICONEXCLAMATION \
  "${NAME} version $R1 is already installed.$\n$\nPress 'YES' to uninstall previous version (Recommended).$\nPress 'NO' to continue current installation.$\nPress 'CANCEL' to quit the installer." \
  IDYES Uninst IDNO done 
   Abort
    
    Uninst:
    ExecWait "$R0 _?=$TEMP" ;$INSTDIR or $TEMP?

     
  done:
  
    
;Update check
  CALL UpdateCheck
  
FunctionEnd

Function un.onInit
;Ask Language Uninstall
  !insertmacro MUI_UNGETLANGUAGE
  
FunctionEnd

;Delete if empty
Function un.DeleteDirIfEmpty
  FindFirst $R0 $R1 "$0\*.*"
  strcmp $R1 "." 0 NoDelete
   FindNext $R0 $R1
   strcmp $R1 ".." 0 NoDelete
    ClearErrors
    FindNext $R0 $R1
    IfErrors 0 NoDelete
     FindClose $R0
     Sleep 1000
     RMDir "$0"
  NoDelete:
   FindClose $R0
FunctionEnd

Function .onSelChange 
  
;Cursors Selection exclusivity
  ${If} ${SectionIsSelected} ${SecFullCursors}
  ${AndIf} ${SectionIsSelected} ${SecSmallCursors}
    !insertmacro UnselectSection $WasSelectedGrpB
  ${EndIf}
    ${If} ${SectionIsSelected} ${SecFullCursors}
    StrCpy $WasSelectedGrpB ${SecFullCursors}
  ${ElseIf} ${SectionIsSelected} ${SecSmallCursors}
    StrCpy $WasSelectedGrpB ${SecSmallCursors}
  ${EndIf}

;Ground Menubar Selection exclusivity
  ${If} ${SectionIsSelected} ${SecColouredMenubar}
  ${AndIf} ${SectionIsSelected} ${SecOriginalMenubar}
    !insertmacro UnselectSection $WasSelectedGrpC 
  ${EndIf}
    ${If} ${SectionIsSelected} ${SecColouredMenubar}
    StrCpy $WasSelectedGrpC ${SecColouredMenubar}
  ${ElseIf} ${SectionIsSelected} ${SecOriginalMenubar}
    StrCpy $WasSelectedGrpC ${SecOriginalMenubar}
  ${EndIf}
  
;Space Menubar Selection exclusivity
  ${If} ${SectionIsSelected} ${SecColouredSpaceMenubar}
  ${AndIf} ${SectionIsSelected} ${SecOriginalSpaceMenubar}
    !insertmacro UnselectSection $WasSelectedGrpD 
  ${EndIf}
    ${If} ${SectionIsSelected} ${SecColouredSpaceMenubar}
    StrCpy $WasSelectedGrpD ${SecColouredSpaceMenubar}
  ${ElseIf} ${SectionIsSelected} ${SecOriginalSpaceMenubar}
    StrCpy $WasSelectedGrpD ${SecOriginalSpaceMenubar}
  ${EndIf}
  
;Toolbar Selection exclusivity
  ${If} ${SectionIsSelected} ${SecToolbar}
  ${AndIf} ${SectionIsSelected} ${SecToolbarPreCU}
    !insertmacro UnselectSection $WasSelectedGrpE 
  ${EndIf}
    ${If} ${SectionIsSelected} ${SecToolbar}
    StrCpy $WasSelectedGrpE ${SecToolbar}
  ${ElseIf} ${SectionIsSelected} ${SecToolbarPreCU}
    StrCpy $WasSelectedGrpE ${SecToolbarPreCU}
  ${EndIf}
  
FunctionEnd

;Print Section details in uninstall window.
Function Uninstall
 
  ${SectionGetValues} HKCU "${PRODUCT_UNINST_KEY}" "${VERSION}"
 
  ${Section} ${SecFullCursors}
    ${Repair}
      DetailPrint "Installation of Full Size Cursors complete!"
    ${Remove}
      DetailPrint "UnInstallation of Full Size Cursors complete!"
  ${SectionEnd}
 
  ${Section} ${SecSmallCursors}
    ${Repair}
      DetailPrint "Installation of 25% Smaller Cursors complete!"
    ${Remove}
      DetailPrint "UnInstallation of 25% Smaller Cursors complete!"
  ${SectionEnd}
 
  ${Section} ${SecExamineWithBadges}
    ${Repair}
      DetailPrint "Installation of Examine with Badges complete!"
    ${Remove}
      DetailPrint "UnInstallation of Examine with Badges complete!"
  ${SectionEnd}
  
  ${Section} ${SecQuestHelper}
    ${Repair}
      DetailPrint "Installation of Fading Quest Helper complete!"
    ${Remove}
      DetailPrint "UnInstallation of Fading Quest Helper complete!"
  ${SectionEnd}
 
  ${Section} ${SecColouredMenubar}
    ${Repair}
      DetailPrint "Installation of Coloured Menubar complete!"
    ${Remove}
      DetailPrint "UnInstallation of Coloured Menubar complete!"
  ${SectionEnd}
 
  ${Section} ${SecOriginalMenubar}
    ${Repair}
      DetailPrint "Installation of Original Menubar complete!"
    ${Remove}
      DetailPrint "UnInstallation of Original Menubar complete!"
  ${SectionEnd}
 
  ${Section} ${SecColouredSpaceMenubar}
    ${Repair}
      DetailPrint "Installation of Coloured (Space) Menubar complete!"
    ${Remove}
      DetailPrint "UnInstallation of Coloured (Space) Menubar complete!"
  ${SectionEnd}
 
  ${Section} ${SecOriginalSpaceMenubar}
    ${Repair}
      DetailPrint "Installation of Original (Space) Menubar complete!"
    ${Remove}
      DetailPrint "UnInstallation of Original (Space) Menubar complete!"
  ${SectionEnd}
 
  ${Section} ${SecResizableNetStatusWindow}
    ${Repair}
      DetailPrint "Installation of Resizable NetStatus Window complete!"
    ${Remove}
      DetailPrint "UnInstallation of Resizable NetStatus Window complete!"
  ${SectionEnd}
 
  ${Section} ${SecSmallerGroupWindow}
    ${Repair}
      DetailPrint "Installation of Smaller Group Window complete!"
    ${Remove}
      DetailPrint "UnInstallation of Smaller Group Window complete!"
  ${SectionEnd}
 
  ${Section} ${SecToolbar}
    ${Repair}
      DetailPrint "Installation of Toolbar - No Big Icon complete!"
    ${Remove}
      DetailPrint "UnInstallation of Toolbar - No Big Icon complete!"
  ${SectionEnd}
  
   ${Section} ${SecToolbarPreCU}
    ${Repair}
      DetailPrint "Installation of Toolbar - Pre-CU complete!"
    ${Remove}
      DetailPrint "UnInstallation of Toolbar - Pre-CU complete!"
  ${SectionEnd}
 
  ${Section} ${SecWhiteHAMs}
    ${Repair}
      DetailPrint "Installation of White HAM Bars complete!"
    ${Remove}
      DetailPrint "UnInstallation of White HAM Bars complete!"
  ${SectionEnd}
  
    ${Section} ${SecUI}
    ${Repair}
      DetailPrint "Installation of Pre-NGE UI Files complete!"
    ${Remove}
      DetailPrint "UnInstallation of Pre-NGE UI Files complete!"
  ${SectionEnd}
  
    ${Section} ${SecReadme}
    ${Repair}
      DetailPrint "Installation of Documentation complete!"
    ${Remove}
      DetailPrint "UnInstallation of Documentation complete!"
  ${SectionEnd}
  
  ${Section} ${SecUpdateCheck}
    ${Repair}
      DetailPrint "Installation of Silent Updater complete!"
    ${Remove}
      DetailPrint "UnInstallation of Silent Updater complete!"
  ${SectionEnd}
 
  DetailPrint "*******************************"
FunctionEnd

;Check for update
Function UpdateCheck
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
StrCmp $2 "${VERSION}" 0 +4 ; Compare Version from downloaded Version file to current Version
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

ContinueWithoutUpdate:
;NoUpdate

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

;-----------------------------