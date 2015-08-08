


;ive added "centred"

LangString DESC_SecGrpCamera ${LANG_ENGLISH} "Centred Camera Options"

;this is one swtich for either normal or white HA(M)
LangString DESC_SecSmallerGroupWindow ${LANG_ENGLISH}  "Slimline Group Window for either Standard or White HA(M) option"

;Your german original space bar was the same as the coloured space bar
LangString DESC_SecOriginalSpaceMenubar ${LANG_ENGLISH} "Original Horizontal Space Menubar with white icons and without new buttons"

;These are separate pages for readme and change log. although only one is included currently, I may wish to change that later.

Changelog page text
  ${ChangesLanguage} "${LANG_ENGLISH}" \
          "Change Log" \
          "Please review the following important information." \
          "Changelog for $(^name) version ${VERSION}:" \
          "$\n  Click on scrollbar arrows or press Page Down to review the entire text."

;Readme page text
  ${ReadmeLanguage} "${LANG_ENGLISH}" \
          "Readme" \
          "Please review the following important information." \
          "Readme for $(^name) version ${VERSION}:" \
          "$\n  Click on scrollbar arrows or press Page Down to review the entire text."

;Also some additional messages. I'll call these from separate "LangString" later. Just dont translate the comments, or I wont know which is which :P

;Save settings? 
  "Do you wish to remember your settings for future installations?" \
  

;Delete settings? 
  "Do you wish to forget your installation settings?" \
  
   
;Uninstall previous version
  "${NAME} version $R1 is already installed.$\nIt's recommended you remove the previous version before installation. $\n$\nPress 'YES' to uninstall previous version.$\nPress 'NO' to continue current installation.$\nPress 'CANCEL' to quit the installer." \


;Prompt for Update
"A new version of ${NAME} is available.$\n$\n\
Your version: ${VERSION}$\n\
Online version: ${OnlineVersion}$\n$\n\
To avoid compatibility issues press 'OK' to Download and Install version ${OnlineVersion} now."\
