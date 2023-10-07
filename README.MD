# TabbedPanelMod Add-on

This add-on changes the tabbed panel (Tool panel) layout.

It places its tabs to the right and changes the labels to icons.

- Default (windows) Look&Feel
   - ![TabsToTheRight.png](https://github.com/EdoFro/Freeplane_TabbedPanelMod/blob/main/resources/TabsToTheRight.png)
- Flat Darkula Look&Feel
   - ![Flat_Darkula.png](https://github.com/EdoFro/Freeplane_TabbedPanelMod/blob/main/resources/Flat%20Darkula.png)

Menu:

- `Edo Tools->TabbedPanelMod->Tabbed panel mod`

Video:

https://github.com/EdoFro/Freeplane_TabbedPanelMod/assets/35700575/7c827355-d150-4f62-af9a-8bd6d0e3dcfb

----

<details><summary><h2>Features</h2></summary>

- Tabs are placed at the right side of the Tabbed Panel and the labels are replaced by icons (to minimize screen space used)
- The user can modify  the tab panel's width for each tab independently
- When clicking on a tab, its content is shown and resized to its own defined width
- When clicking again on an already selected tab, the Tab panel minimizes itself hiding its content but tabs stay visible to show their content easily
- To return to the standard TabbedPanel layout, execute the menu command again
   - `Edo Tools->TabbedPanelMod->Tabbed panel mod`

</details>

----

<details><summary><h2>Images</h2></summary>

<details><summary><h3>Tabbed panel (tools panel)</h3></summary>

- in its standard layout
- before executing the **TabbedPanelMod** command
- Tabs are on the top side of the panel
- ![Standard.png](https://github.com/EdoFro/Freeplane_TabbedPanelMod/blob/main/resources/Standard.png)

</details>

<details><summary><h3>After applying TabbedPanelMod</h3></summary>

- Menu:
   - `Edo Tools->TabbedPanelMod->Tabbed panel mod`
- Tabs are now placed on the right side of the panel
- The tabs labels are replaced with icons
- The former text of the labels are now used as ToolTipText for the tabs
- ![TabsToTheRight.png](https://github.com/EdoFro/Freeplane_TabbedPanelMod/blob/main/resources/TabsToTheRight.png)

</details>

<details><summary><h3>Tabbed panel minimized</h3></summary>

- After clicking again on the selected tab.
- Content is hidden
- Tabs are still visible
- ![minimizedClickedAgain.png](https://github.com/EdoFro/Freeplane_TabbedPanelMod/blob/main/resources/minimizedClickedAgain.png)

</details>

### Works with different Look&Feels

<details><summary><h4>- Flat LaF</h4></summary>

|L&F|example|L&F|example|
|----|----|----|----|
|Flat Light|![Flat Light](https://github.com/EdoFro/Freeplane_TabbedPanelMod/blob/main/resources/Flat%20Light.png)|Flat IntelliJ|![Flat IntelliJ](https://github.com/EdoFro/Freeplane_TabbedPanelMod/blob/main/resources/Flat%20IntelliJ.png)|
|Flat Solarized|![Flat Solarized](https://github.com/EdoFro/Freeplane_TabbedPanelMod/blob/main/resources/Flat%20Solarized.png)|Flat Dark|![Flat Dark](https://github.com/EdoFro/Freeplane_TabbedPanelMod/blob/main/resources/Flat%20Dark.png)|
|Flat Darkula|![Flat Darkula](https://github.com/EdoFro/Freeplane_TabbedPanelMod/blob/main/resources/Flat%20Darkula.png)|Atom One<br>Dark Contrast|![Flat Dark Material](https://github.com/EdoFro/Freeplane_TabbedPanelMod/blob/main/resources/Flat%20Dark%20Material.png)|

</details>

<details><summary><h4>- Classic LaF</h4></summary>

|L&F|example|L&F|example|
|----|----|----|----|
|Windows|![Windows](https://github.com/EdoFro/Freeplane_TabbedPanelMod/blob/main/resources/Windows.png)|Windows<br>Classic|![Windows Classic](https://github.com/EdoFro/Freeplane_TabbedPanelMod/blob/main/resources/Windows%20Classic.png)|
|Nimbus|![Nimbus](https://github.com/EdoFro/Freeplane_TabbedPanelMod/blob/main/resources/Nimbus.png)|Metal|![Metal](https://github.com/EdoFro/Freeplane_TabbedPanelMod/blob/main/resources/Metal.png)|
|CDE<br>Motif|![CDE Motif](https://github.com/EdoFro/Freeplane_TabbedPanelMod/blob/main/resources/CDE%20Motif.png)|

</details>

</details>


----

<details><summary><h2>Additional information</h2></summary>

- the icons used for the tabs are placed in
   - `Icons->User icons->TabbedPanelMod->...`
- the script selects the icon for the tab using this logic:
   - if there is an icon that is named equal than the tab's label text, then: use it
   - else: use the icon that is named as the tabs number
      - starting with 0
      - the first 4 (`00.svg` to `03.svg`) are used for the standard tabs in Freeplane
- if another add-on or script creates an additional tab, you can add an icon for it
   - for example, using the devtools addon
   - or adding it manually in the user directory
      - `<userdirectory>/icons/tabbedPanelMod/`
   - for its name you have to consider the logic explained in the previous point.

</details>


----

Best regards,

edoFro

