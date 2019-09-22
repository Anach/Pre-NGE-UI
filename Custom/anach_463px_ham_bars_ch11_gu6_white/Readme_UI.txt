Pre-NGE UI
Modification for SWG
by Anach
Web  http //www.anach.tk
Readme Dated: 16th October 2008
------------------------------------------------------------------------

TABLE OF CONTENTS
¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
I. INTRODUCTION
II. INSTALLATION
III. UNINSTALLATION
IV. VERSION HISTORY
V. KNOWN ISSUES
VI. MISCELLANEOUS
VII. TROUBLESHOOTING
VIII. Credits

========================================================================
I. INTRODUCTION
========================================================================

The intention of this mod is to bring restore and improve upon the 
Pre-NGE style GUI to SWG-NGE. 

FEATURES 
¯¯¯¯¯¯¯¯
+ PreNGE Changeable ui Themes on all windows.
+ PreNGE Jedi Colour Schemes for ui.
+ PreNGE HAM bars.
+ PreNGE Movable & Resizable group window.
+ PreNGE Resizable & Movable experience monitor.
+ PreNGE Style Resizable Toolbar for ground & Space.
+ PreNGE style Cursors & Crosshairs.
+ PreNGE Centred Chase Camera.
+ PreNGE Style Pet Toolbar & HA(M)
+ PreNGE Style Resizable Collection Window.
+ PreNGE Themed Menubar (Space style.)
+ Optional Pre-NGE Horizontal Menu bar.
+ Optional Resizable Toolbar with no Big Icon.
+ Optional White HA(M) Bar backgrounds.
+ Optional Optional Camera views.
+ Optional Slimline Group HA(M)
+ Optional Pre-NGE Examine window.
+ Optional Compact Net Status Window.
+ Optional Fading Quest Helper.
+ Optional 25% Smaller Cursors.
+ Optional Pre-CU size Toolbar.


========================================================================
II. INSTALLATION
========================================================================

Just run the Installer and choose your options. The installer will 
suggest removal of previous versions prior to install. This is highly 
recommended to prevent conflicts and errors.

The installer will also ask the user if they wish to remember their 
installation options for the next time the installer is run. You can 
choose to forget these settings during uninstall, or keep them for the 
next update.

Updating the UI is as simple as running the installer , or clicking the 
"UI Update" shortcut in the "Anach's Pre-NGE UI" Start Menu folder.

The installer will ask the user to update prior to installation. As 
the only time an update is released, is when it's required, this is
important to stop conflicts, crashes and broken features. 


Note  This mod will put folders with some files in the game directory 
that will be used instead of the files in the game. No actual SWG game 
files will be overwritten. You can run part of the files or all of 
them at once for the full experience. Feel free to simply rename or 
delete the files you do not wish to use from the appropriate folder of 
your SWG directory. 

========================================================================
III. UNINSTALLATION
========================================================================

To uninstall the mod, simply run the uninstaller from the shortcut in
the Windows Start Menu or from the Add/Remove Programs in the Windows
Control Panel.

========================================================================
IV. VERSION HISTORY
========================================================================

(Always remove old version before installing new)

*see Changelog_UI.txt for previous version history*

========================================================================
V. KNOWN ISSUES
========================================================================

- Spaced Toolbar keymap display is static (1-12) and does not display 
assigned keys. 

- Collection window wont retain resizing after client restart.

========================================================================
VI. MISCELLANEOUS
========================================================================

TEST CENTER  
¯¯¯¯¯¯¯¯¯¯¯ 
With each publish on TC certain files are frequently updated, which 
means if you use the UI mod on TC, you may experience missing features
or Crashes.

There is now a Separate installer available for TC. A continual beta
version of the UI. This TC version is the most compatible with the 
updates on TC, and should be the only UI version used on TC. Both UI
mods have separate updaters.

However, due to the contant changes on TC, the UI still may not be
updated with every patch, and for TC I do not follow a regular update
schedule as it is too much work to keep the TC UI updated every few
days, so the updates are released when I have the time to do so. 
Unlike the live version which is released when the patch hits live.

I dont recommend using mods on TC, as they may conflict with the 
constant updates and invalidate the test environment. so use at your
own risk.

------------------------------------------------------------------------
                                    HAM                                 
------------------------------------------------------------------------

Health & Action for Player, Targets, Secondary Targets & pets have had 
their horizontal resizing disabled by the recent addition of the 
buff/debuff display. Unfortunately I haven't been able to come up with 
a fix for this yet, so in the meantime I have increased the default 
horizontal size slightly to display 12 buffs across multiple buff/debuff
rows down. I have still kept them appropriate size to fit correctly on 
default 1024 width display.

When the mind bar was first removed, I had originally made the Health &
Action larger to fill the gap (it was easier). However I have now 
reverted that decision and returned the H/A closer to what they were 
before the Mind bar was removed (Health is 2px thicker). In doing so it
has allowed me to compact the vertical size and make them closer to the
size of the NGE/Pre-CU versions to save space with a hardly noticable 
visual difference. Saving space is important now that we have 3-4 buff 
rows.

By Request, I made a slimmer Group Window which will take up less screen
space (Same pixel size as the NGE version) and a white background 
version. 

This slimmer group window is actually closer to what the group window 
should have been with the mind bar removed, but because the difference 
here is so noticable compared to the player HA(M), I have left this one
as an optional addon.

Also remember that the Group window can be scrolled up to display a 
minimum of 1 group member.

Unfortunately with Game Update 4, something was changed in with the 
group window buff display, which means icons are now locked at 16px
(NGE Default). Any attempt to alter that default size ends up disabling
the debuff display, or causing distortion of the icon image. I'm hoping
that the Devs plan on adding resizable icon support to the group window
to fix the icon size issue. Until then, the icons have to be 16x16px
instead of 22x22px.

------------------------------------------------------------------------
                                 CHAT                                   
------------------------------------------------------------------------

A few people have reported that detached windows are being cut off and 
for unknown reasons I am unable to reproduce this problem on my current
installed games on 3 different PCs. So I'm relying on other people to 
test this for me.

Currently my version works better with detached windows than the live 
version. However it's still not perfect and unfortunately it's quite a 
complex window to adjust.

The chat background/tabs fading times I have yet to try adjusting, but 
plan on addressing this with the next update.

------------------------------------------------------------------------
                                 CAMERA                                 
------------------------------------------------------------------------

The default chase camera with this mod will swap between the 'over - 
shoulder' view, to the 'behind head' (centred) view. The optional
Camera will swap between 'above-head' view to 'Over-head' view. 
Installing no camera at all (NGE Version) will swap between 'Over-Head'
to 'Over-shoulder' View.

Additionally if you want the cursor to behave like it did pre-NGE, 
instead of fixed behind your head, you can go into your Options panel, 
under controls you will find "Mouse Deadzone Inertia", Set that to 10 
and "Mouse Deadzone", Set that to 200, this will duplicate preNGE 
controls.

------------------------------------------------------------------------
                                 MENU                                   
------------------------------------------------------------------------

The Pre-NGE horizontal menubars now have buttons for "Expertise" and 
"Collections" for both ground and space. The space menubar has 
"Homeport" and "Ship Details" buttons in addition to the collections 
and expertise buttons. Both use the colour icons from the NGE style 
popup menu for NGE to match better with the two new buttons.

The movement, resizing on the horizontal menus are a little fiddly, 
but it all works. There is no "lock" option, because it's already quite
difficult to move accidentally (as it's always been.)

------------------------------------------------------------------------
                                TOOLBAR                                 
------------------------------------------------------------------------

The "Toolbar - No Big Icon" is a Pre-NGE Themed toolbar without the 
"Bigicon" on the right side. 

As of version 11 of the UI mod, the Toolbars have been completely 
redone to improve alignment issues and bring back resizing both 
vertically and horizontally. Both toolbar versions now manually expand 
vertically from one to two rows by dragging the bottom of the window as
you would to resize any other window. Same as they did Pre-NGE. 

Furthermore, Selecting the new "Spaced toolbar" from the in-game control
panel will now expand the toolbar horizontally to show the pre-NGE style
toolbar with horizontal spacing.

A side effect of restoring this fuctionality is that I have had to 
swap the bottom and top toolbar rows on the double toolbars, returning 
them to their correct orientation as they were pre-NGE and to match the
JTL space toolbar. The benefit of this is that all resizing works and I
only need to include 2 toolbar files instead of 6. If you dont like 
this layout, you can remap your keys to restore the NGE orientation of
the top/bottom rows. This will be a one time change.

The space toolbar has had the same treatment as the Ground toolbar in
terms of alignment corrections, deadspace removal and resizing options.

I've also added an alternative Pre-CU sized toolbar/pet toolbar, which
is approximately 15-20% smaller than the standard Toolbar and only comes
in the "No Big Icon" variety.

------------------------------------------------------------------------
                          EXAMINE & Collections                         
                        (Thanks Gerric Sablestar)
------------------------------------------------------------------------

The Examine window is based off an unreleased mod by GerricSablestar.
It will now display badges in the old format, and also has a working
collapse button. 

However it says "You have" instead of "...has" in front of each badge 
and I'm not sure how to change that. 

The Collections window is a resizable version of GerricSablestar's mod.
Big thanks to Gerric for letting me include it in this mod. This is 
installed by default.

------------------------------------------------------------------------
                        Custom UI Colour Palettes
------------------------------------------------------------------------

From UI v11.1.9.3 onwards, custom UI palettes will have their own 
separate files for ground and space. This should make it much easier to
add new colour palettes without it breaking the UI with every update. 

Currently the included palette files do not contain any custom palettes,
but have been included to allow other people to create their own, or 
use external palette mods such as Caveman's "GUI Compilation" without it
interferring with the Pre-NGE UI mod.

For ground palettes "ui_palette_ground.inc"
For Space Palettes "ui_palette_space.inc"

Thes files are located in the "UI" folder. For basic instructions on
using these files, please check the "Custom_palettes.txt" located in the
"Star Wars Galaxies\Pre-NGE UI" folder.

This means the custom colour palettes will work with every future 
version of the UI mod. Without needing to be updated everytime there is
a change to ui_styles.inc.

For this reason, the UI Installer will not overwrite old palette files.

------------------------------------------------------------------------
                          VERSION NUMBERING            
------------------------------------------------------------------------

The Pre-NGE UI Mod Version numbering works as follows:

UI Major.UI Minor(Fixes).Chapter.Game Update

eg. Version 14.1.1003.0511 would be read as - UI version 14, fix 1,
Chapter 10.3, Game Update 5.11. 

The UI Major version will only change when there are significant
changes to the UI mod such as new features or cosmetic changes. 

Minor version changes are for fixes and Minor changes that may include
fixes for crashes or changes that don't change the UI look or 
functions. 

Game update compatibility patches that do not change the UI look or 
function will be indicated by the Chapter and Game Update version 
numbers.

This lengthy versioning helps everyone keep track of exactly which
version of the UI Mod they are using and which chapter it was last
updated.

------------------------------------------------------------------------
                                 OTHER                                  
------------------------------------------------------------------------

I also included a Compact Netstatus window which can be resized from 
1x16px row to 4x16px rows, to display only the relevant info in a 
general order of importance.

The optional Fading Quest Helper will be fully transparent when in 
"mouse look" mode, but behave as the default one does when in cursor 
mode or hovering the mouse over the window location. Both ground and 
space versions are included.

As always you can remove one or all of the HUD components individually 
from the ui folder or use the Optional versions to suit your own tastes.

In regards to requests for inclusions. There are virtually limitless 
combinations and small changes people request that I include, because 
of the frequent updates required with this type of mod, I tend to limit
the included files to the most commonly requested and functional 
requests, so as not to spend more time updating the UI than I do 
playing.

Hope you enjoy the UI.


-Anach

========================================================================
VII. TROUBLESHOOTING
========================================================================

If you have any issues when launching SWG. First do a "full scan" and 
make sure you have removed any previous mods before updating, if this 
doesnt work, I suggest a deletion of the numbered .uis files from your 
SWG/Profiles/User/Server/ folder. This will unfortunately reset your 
HUD and Toolbar, but overcome any configuration problems related to 
the old ui mods.

========================================================================
VII. CREDITS
========================================================================

Thanks go out to all the modders & bug testers out there that have 
actively or passively contributed to this mod!

Extra thanks to GerricSablestar for creating a great set of tools to 
make this all so much easier and for offering his help and advice along
the way, and to Caveman for doing the installer translations.

You can get more SWG mods at http //mods.mandalorians.de

------------------------------------------------------------------------

DISCLAIMER
¯¯¯¯¯¯¯¯¯¯
The author(s) of these files do not accept any responsibility for
anything related to them. Use at your own risk! 

Please ask the respective author(s) for permission if you want to use 
these files for anything else. Please do not repackage these files.