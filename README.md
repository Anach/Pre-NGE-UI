# Pre-NGE-UI
Last revision of the Pre-NGE UI for Star Wars Galaxies NGE.

For compatibility with SWG Legends, you need to add a single line to the ui_ground_hud.inc file. Open the file in notepad,
and add the following code to line 1244:

    <include>ui_ground_hud_side_toolbar_skinned.inc</include>

it should now look like this:

		<include>ui_ground_hud_toolbar_skinned.inc</include>
		<include>ui_ground_hud_side_toolbar_skinned.inc</include>
