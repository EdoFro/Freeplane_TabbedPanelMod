<map version="freeplane 1.11.5">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<attribute_registry SHOW_ATTRIBUTES="selected"/>
<node TEXT="Tabbed Panel Mod" LOCALIZED_STYLE_REF="AutomaticLayout.level.root" FOLDED="false" ID="ID_679526461" LINK="../../OneDrive/Documentos/Mochila/Freeplane/ScriptsEnComputadorYDesarrollosEdo%20-%20mochila.mm"><hook NAME="MapStyle" background="#f9f9f8" zoom="0.8">
    <conditional_styles>
        <conditional_style ACTIVE="true" STYLE_REF="customMenuPackage" LAST="false">
            <attribute_exists_condition ATTRIBUTE="tbActions"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="Warning" LAST="false">
            <node_contains_condition VALUE=".EXIT_ON_CLOSE" ITEM="filter_any_text"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="menuButton" LAST="false">
            <hyper_link_contains TEXT="menuitem:"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="GroovyNode" LAST="false">
            <script_condition>
                <script>try { edofro.freeplane.groovynode.GN.isGroovyNode(node) } catch(e) { false }</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="hasGroovyNode" LAST="false">
            <script_condition>
                <script>(node.findAll() - node).any{
    edofro.freeplane.groovynode.GN.isGroovyNode(it)
}</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="containsNextTasks" LAST="true">
            <script_condition>
                <script>(node.findAll() - node)?.any{it.style.name == &apos;nextTask&apos;}</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="containsPendingTasks" LAST="true">
            <script_condition>
                <script>(node.findAll() - node)?.any{it.style.name == &apos;pendingTask&apos;}</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="false" STYLE_REF="hasGroovyNode" LAST="false">
            <any_descendant_condition>
                <script_condition>
                    <script>try { edofro.freeplane.groovynode.GN.isGroovyNode(node) } catch(e) { false }</script>
                </script_condition>
            </any_descendant_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="file" LAST="false">
            <script_condition>
                <script>{node.link.file &amp;&amp; !node.link.uri?.fragment}</script>
            </script_condition>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="modifiedFile" LAST="false">
            <attribute_contains_condition ATTRIBUTE="modifiedFile" VALUE="true"/>
        </conditional_style>
    </conditional_styles>
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" mapUsesOwnSaveOptions="true" BookmarksKeys="{}" followedTemplateLocation="template:/DFGHI%20Proyecto-Groovy-Tareas-MDI-menuButton%20(vis01).mm" pruebaDiccionario="ID_311366985|:|idDictionary|-|ID_323296041|:|ToM Actions|-|" show_icon_for_attributes="true" show_notes_in_map="false" save_modification_times="false" save_last_visited_node="default" show_note_icons="true" MDI_template="v0.0.13" mdhFreeMindmapPath="hhgf" save_folding="save_folding_if_map_is_changed" followedMapLastTime="1661362125221" fit_to_viewport="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" ID="ID_118736178" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_506805493" ICON_SIZE="12 pt" FORMAT_AS_HYPERLINK="false" COLOR="#484747" BACKGROUND_COLOR="#efefef" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="5 px" SHAPE_VERTICAL_MARGIN="2 px" NUMBERED="false" FORMAT="STANDARD_FORMAT" TEXT_ALIGN="DEFAULT" BORDER_WIDTH_LIKE_EDGE="false" BORDER_WIDTH="1.9 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#8fbcbb" BORDER_DASH_LIKE_EDGE="true" BORDER_DASH="SOLID" VGAP_QUANTITY="2 px" COMMON_HGAP_QUANTITY="14 pt" CHILD_NODES_LAYOUT="AUTO" MAX_WIDTH="10 cm" MIN_WIDTH="0 cm">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#bf5d3f" WIDTH="2" TRANSPARENCY="200" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_506805493" STARTINCLINATION="45 pt;0 pt;" ENDINCLINATION="57 pt;30 pt;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<font NAME="Dialog" SIZE="10" BOLD="false" STRIKETHROUGH="false" ITALIC="false"/>
<edge STYLE="horizontal" COLOR="#2e3440" WIDTH="1" DASH="SOLID"/>
<richcontent TYPE="DETAILS" CONTENT-TYPE="plain/auto"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details" ID="ID_861824498" COLOR="#006666" BACKGROUND_COLOR="#a5cece" BACKGROUND_ALPHA="204" BORDER_WIDTH_LIKE_EDGE="false" BORDER_WIDTH="1.9 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#f0f0f0" BORDER_DASH_LIKE_EDGE="true">
<font NAME="MS UI Gothic" SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes" ID="ID_199621123">
<font NAME="Lucida Sans" SIZE="8"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" ID="ID_810825098" COLOR="#004600" BACKGROUND_COLOR="#e8e8c8" TEXT_ALIGN="LEFT">
<icon BUILTIN="clock2"/>
<font NAME="Consolas" SIZE="11"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.floating" ID="ID_608497754">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.selection" ID="ID_358779365" COLOR="#eceff4" BACKGROUND_COLOR="#bf616a" STYLE="bubble" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#bf616a"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.important" ID="ID_915433779" BORDER_COLOR="#bf616a">
<icon BUILTIN="yes"/>
<arrowlink COLOR="#bf616a" TRANSPARENCY="255" DESTINATION="ID_915433779"/>
<font NAME="Ubuntu" SIZE="14"/>
<edge COLOR="#bf616a"/>
</stylenode>
<stylenode TEXT="baseFolder" ID="ID_1246743661" ICON_SIZE="20 pt" BACKGROUND_COLOR="#ffeca9">
<icon BUILTIN="emoji-1F4BD"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="newFolderImport" ID="ID_175940221" ICON_SIZE="16 pt" BACKGROUND_COLOR="#ffeca9">
<icon BUILTIN="emoji-1F4BE"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="freshNew" ID="ID_1804698977" ICON_SIZE="16 pt" BACKGROUND_COLOR="#ace500">
<icon BUILTIN="emoji-1F195"/>
</stylenode>
<stylenode TEXT="movedRenamed" ID="ID_851444256" ICON_SIZE="16 pt" BACKGROUND_COLOR="#ace500">
<icon BUILTIN="emoji-1F500"/>
</stylenode>
<stylenode TEXT="file" ID="ID_1717966522" BACKGROUND_COLOR="#bcc6e0" FORMAT="NO_FORMAT" BORDER_WIDTH="2.5 px">
<font NAME="Consolas"/>
</stylenode>
<stylenode TEXT="file_folder" ID="ID_1554270070" BORDER_WIDTH="3 px">
<icon BUILTIN="emoji-1F4C1"/>
</stylenode>
<stylenode TEXT="missing" ID="ID_1068634079" BACKGROUND_COLOR="#f28bb3" BORDER_WIDTH="3 px">
<icon BUILTIN="broken-line"/>
</stylenode>
<stylenode TEXT="modifiedFile" ID="ID_1027988377" BACKGROUND_COLOR="#ffcc00" BORDER_WIDTH="4 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#00659b">
<icon BUILTIN="emoji-002A-20E3"/>
<font ITALIC="true"/>
</stylenode>
<stylenode TEXT="locked" ID="ID_936671747" COLOR="#e1e1e1" BACKGROUND_COLOR="#6f4e4e" BORDER_WIDTH="2.5 px">
<icon BUILTIN="emoji-1F512"/>
</stylenode>
<stylenode TEXT="file_folder_with_icon" ID="ID_927144007">
<icon BUILTIN="emoji-1F4CD"/>
</stylenode>
<stylenode TEXT="GroovyNode" ID="ID_647184451" ICON_SIZE="16 pt" COLOR="#286b86" BACKGROUND_COLOR="#92c5d7" STYLE="bubble" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#286b86">
<icon BUILTIN="groovyNode/groovy-G"/>
<font NAME="Harlow Solid Italic" SIZE="12"/>
</stylenode>
<stylenode TEXT="Warning" ID="ID_191105537" BACKGROUND_COLOR="#f28bb3" BORDER_WIDTH="6 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#990000">
<icon BUILTIN="closed"/>
</stylenode>
<stylenode TEXT="hasGroovyNode" ID="ID_547619512">
<icon BUILTIN="groovyNode/groovy-G"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.topic" ID="ID_1141135899" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" ID="ID_738828078" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" ID="ID_1196215838" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode TEXT="nextTask" ID="ID_507772011" BACKGROUND_COLOR="#ffff33">
<icon BUILTIN="yes"/>
<icon BUILTIN="unchecked"/>
</stylenode>
<stylenode TEXT="pendingTask" ID="ID_1278203117" BACKGROUND_COLOR="#99ffff">
<icon BUILTIN="unchecked"/>
</stylenode>
<stylenode TEXT="completedTask" ID="ID_263222449" COLOR="#333333" BACKGROUND_COLOR="#cccccc">
<icon BUILTIN="checked"/>
<font ITALIC="true"/>
</stylenode>
<stylenode TEXT="discardedTask" ID="ID_1726907748" COLOR="#666666" BACKGROUND_COLOR="#cccccc">
<icon BUILTIN="Descartado"/>
<font ITALIC="true"/>
</stylenode>
<stylenode TEXT="containsNextTasks" ID="ID_661211039" BACKGROUND_COLOR="#eaea86">
<icon BUILTIN="emoji-1F7E5"/>
</stylenode>
<stylenode TEXT="containsPendingTasks" ID="ID_1486748518" BACKGROUND_COLOR="#b5d7d7">
<icon BUILTIN="emoji-23F9"/>
</stylenode>
<stylenode TEXT="Proyecto" ID="ID_643179356" COLOR="#003399">
<font NAME="SansSerif" SIZE="12" BOLD="true" ITALIC="false"/>
<edge COLOR="#003399" WIDTH="6"/>
</stylenode>
<stylenode TEXT="Grupito" ID="ID_1085570108">
<cloud COLOR="#e4e6ff" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode TEXT="Iniciativa" ID="ID_604763806">
<icon BUILTIN="attach"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="Organizador" ID="ID_235021673">
<icon BUILTIN="folder"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="Minuta" ID="ID_461928519">
<icon BUILTIN="list"/>
<cloud COLOR="#69a1f8" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode TEXT="Acuerdo" ID="ID_1601320744" BACKGROUND_COLOR="#66ff33">
<icon BUILTIN="flag-black"/>
</stylenode>
<stylenode TEXT="numerado" ID="ID_1268287532" BACKGROUND_COLOR="#add1ea" STYLE="bubble" NUMBERED="true" MAX_WIDTH="200 px" MIN_WIDTH="200 px"/>
<stylenode TEXT="con duda" ID="ID_801703559" BACKGROUND_COLOR="#ffff66">
<icon BUILTIN="help"/>
<font BOLD="false" ITALIC="true"/>
</stylenode>
<stylenode TEXT="menuButton" ID="ID_398428156" COLOR="#b2dfff" BACKGROUND_COLOR="#3f657f" STYLE="bubble" BORDER_WIDTH="3 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#0097ff"/>
<stylenode TEXT="project" ID="ID_1147771750" COLOR="#e1e19c" BACKGROUND_COLOR="#1c1c63">
<icon BUILTIN="emoji-1F5C2"/>
<attribute NAME="projectCode" VALUE=""/>
</stylenode>
<stylenode TEXT="MarkdownHelperNode" ID="ID_965152203" COLOR="#dbffdb" BACKGROUND_COLOR="#333333" STYLE="rectangle" BORDER_WIDTH="4 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#009000" CHILD_NODES_LAYOUT="AUTO_AFTERPARENT">
<icon BUILTIN="emoji-1F343"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown"/>
</stylenode>
<stylenode TEXT="MarkdownHelperLink" ID="ID_1911462345" COLOR="#dbffdb" BACKGROUND_COLOR="#4c4c7f" STYLE="rectangle" BORDER_WIDTH="4 px" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#009000">
<icon BUILTIN="emoji-1F517"/>
</stylenode>
<stylenode TEXT="MarkdownHelperPreview" ID="ID_1643951673" COLOR="#333333" BACKGROUND_COLOR="#ffffff">
<font NAME="Tahoma" SIZE="14"/>
<hook NAME="NodeCss">pre {
    background-color: #e5e7ff;
    border-left: 5px solid #ccc;
    display: block;
    padding: 8px;
    margin: 5px;
}
code {
    font-family: Consolas,&quot;courier new&quot;;
    font-size: 11px;
    color: #0C5704;
}

blockquote {
    border-left: 5px solid #cccccc;
    background-color: #eeeeee;
    padding: 8px;
}</hook>
</stylenode>
<stylenode TEXT="customMenuPackage" ID="ID_1721666989" ICON_SIZE="20 pt" STYLE="rectangle" SHAPE_HORIZONTAL_MARGIN="5 px" SHAPE_VERTICAL_MARGIN="2 px" BORDER_WIDTH="3 px" BORDER_COLOR="#ae5528">
<icon BUILTIN="emoji-1F4E6"/>
<font BOLD="true" ITALIC="true"/>
</stylenode>
<stylenode TEXT="tasksBucket" ID="ID_1197921882">
<icon BUILTIN="emoji-1F5C3"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="maybeTask" ID="ID_1519585836" BACKGROUND_COLOR="#cefcfc">
<icon BUILTIN="emoji-23FA"/>
</stylenode>
<stylenode TEXT="milestone" ID="ID_1534665710">
<icon BUILTIN="emoji-1F6A9"/>
<font BOLD="true"/>
</stylenode>
<stylenode TEXT="fullMarkDown" ID="ID_897231475" FORMAT="markdownPatternFormat" BORDER_DASH="SOLID">
<richcontent TYPE="DETAILS" CONTENT-TYPE="plain/markdown"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown"/>
</stylenode>
<stylenode TEXT="notMovedRenamed" BACKGROUND_COLOR="#f28bb3" BORDER_WIDTH="3 px">
<icon BUILTIN="emoji-26D4"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" ID="ID_1209359852" COLOR="#ffffff" BACKGROUND_COLOR="#484747" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="10 pt" SHAPE_VERTICAL_MARGIN="15 pt" TEXT_ALIGN="CENTER" MAX_WIDTH="5 cm" MIN_WIDTH="3 cm">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" ID="ID_144205114" COLOR="#eceff4" BACKGROUND_COLOR="#d08770" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="8 pt" SHAPE_VERTICAL_MARGIN="5 pt">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" ID="ID_159773648" COLOR="#3b4252" BACKGROUND_COLOR="#ebcb8b">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#2e3440" BACKGROUND_COLOR="#a3be8c">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#2e3440" BACKGROUND_COLOR="#b48ead">
<font SIZE="11"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5" COLOR="#e5e9f0" BACKGROUND_COLOR="#5e81ac">
<font SIZE="11"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6" BACKGROUND_COLOR="#81a1c1">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7" BACKGROUND_COLOR="#88c0d0">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8" BACKGROUND_COLOR="#8fbcbb">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9" BACKGROUND_COLOR="#d8dee9">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10" BACKGROUND_COLOR="#e5e9f0">
<font SIZE="9"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<node TEXT="Freeplane_TabbedPanelMod" STYLE_REF="baseFolder" POSITION="bottom_or_right" ID="ID_693403649" LINK=".">
<attribute NAME="nameFilter" VALUE=""/>
<attribute NAME="maxDepth" VALUE="-1" OBJECT="org.freeplane.features.format.FormattedNumber|-1|#0.####"/>
<attribute NAME="linkType" VALUE="1" OBJECT="org.freeplane.features.format.FormattedNumber|1|#0.####"/>
<attribute NAME="markWhenMoved" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<attribute NAME="checkIfReallyBroken" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0|#0.####"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
<text>
# MDI:  parameters
The import of files and folders can be adapted by providing various options in the attributes of the BaseFolder node:

-----------------------------------------------------
# MDI: nameFilter:
A filter to perform on the name of traversed files. If set, only files which match are brought. 
This option allowes four types of inputs:
1. nothing (empty) means no filtering (default) 
2. regex
  - example: `~/.*\.mp3/ `
3. 'simplified' regex
  - example: `~.*\.mp3` 
4. string with *
  - example: `*.mp3`   
    (equivalent to regex      `~/(?i).*\.mp3/`  )
5. list of strings with '*' and ';'
  - example: ` *.mp3;*.png `   
    (equivalent to regex: ` ~/(?i)(.*\.mp3|.*\.png)/ `  )

-----------------------------------------------------

# MDI:  maxDepth:

The maximum number of directory levels when recursing   
(default is -1 which means no limit, set to 0 for no recursion)


-----------------------------------------------------

# MDI:  linkType:

Define if you want to use Absolute or Relative   
links for files and folders.

 set to:   

0 : to use Absolute links

1 : to use Relative links

-----------------------------------------------------
   
# MDI:  markWhenMoved:

change styles to moved/renamed file Nodes 

set to:   
 
0  : to change style only if node hasn't a previous one (default),

1  : to allways change the style,

-1 : to never change the style

-----------------------------------------------------

 
# MDI:  checkIfReallyBroken:
Check if existing nodes pointing to filtered files still exist.   
This option is only useful if you defined a nameFilter before 
but in the map there are also some files that doesn't match 
this filter definition 
(for example if you brought them manually or import them 
before the actual namefilter setting)  

- default is 0 which means don't check --&gt; Mark node as missing also if it doesn't match the current filter,

- set to 1 to extra check if a not matching file still exists in drive 


-----------------------------------------------------

</text></richcontent>
<node TEXT="files" ID="ID_1969083813">
<node TEXT=".gitattributes" ID="ID_43647129" LINK=".gitattributes"/>
<node TEXT="TabbedPanelMod" ID="ID_1425281966" LINK="TabbedPanelMod/">
<node TEXT="lib" STYLE_REF="Organizador" FOLDED="true" ID="ID_1958296406">
<node TEXT="src" ID="ID_1844927763" LINK="TabbedPanelMod/src/">
<node TEXT="main" ID="ID_1344912241" LINK="TabbedPanelMod/src/main/">
<node TEXT="groovy" ID="ID_648687903" LINK="TabbedPanelMod/src/main/groovy/"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      aquí van las nuevas clases para crear el/los package
    </p>
  </body>
</html></richcontent>
<node TEXT="agregar classes .groovy para crear librería" STYLE_REF="pendingTask" ID="ID_989699600"/>
<node TEXT="TPM.groovy" STYLE_REF="freshNew" ID="ID_169629068" LINK="TabbedPanelMod/src/main/groovy/TPM.groovy"/>
</node>
<node TEXT="java" ID="ID_580696252" LINK="TabbedPanelMod/src/main/java/"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      aquí van las nuevas clases para crear el/los package
    </p>
  </body>
</html></richcontent>
<node TEXT="agregar classes .java para crear librería" STYLE_REF="pendingTask" ID="ID_1331649596"/>
</node>
<node TEXT="resources" ID="ID_592812189" LINK="TabbedPanelMod/src/main/resources/"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      aquí van las nuevas clases para crear el/los package
    </p>
  </body>
</html></richcontent>
<node TEXT="agregar resources para crear librería" STYLE_REF="pendingTask" ID="ID_16517964"/>
</node>
</node>
</node>
<node TEXT="build" ID="ID_1991677648" LINK="TabbedPanelMod/build/"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      gradle lo administra
    </p>
  </body>
</html></richcontent>
<node TEXT="classes" STYLE_REF="locked" ID="ID_1864046338" LINK="TabbedPanelMod/build/classes/"/>
<node TEXT="tmp" STYLE_REF="locked" ID="ID_278788843" LINK="TabbedPanelMod/build/tmp/"/>
</node>
<node TEXT="lib" ID="ID_1143567100" LINK="TabbedPanelMod/lib/"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      - aquí se crea nuevo libreria .jar
    </p>
    <p>
      - agregar aquí otras librerías que se requieran
    </p>
  </body>
</html></richcontent>
<node TEXT="adaptar archivo build.gradle" STYLE_REF="pendingTask" ID="ID_1793329482"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      para que al &quot;build&quot; elimine las librerías que crea y no toque las que son externas.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="TabbedPanelMod.jar" STYLE_REF="freshNew" ID="ID_1028275102" LINK="TabbedPanelMod/lib/TabbedPanelMod.jar"/>
</node>
</node>
<node TEXT="scripts" ID="ID_1954520087" LINK="TabbedPanelMod/scripts/"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      aquí van los scripts que se llaman desde el menú
    </p>
  </body>
</html></richcontent>
<node TEXT="TabbedPanelMod.groovy" ID="ID_661108215" LINK="TabbedPanelMod/scripts/TabbedPanelMod.groovy"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="Tabbed panel mod" ID="ID_1422987138" LINK="menuitem:_addons.tabbedPanelMod.TabbedPanelMod_on_single_node"/>
</node>
<node TEXT="zips" ID="ID_26954450" LINK="TabbedPanelMod/zips/">
<node TEXT="icons" ID="ID_1602437280" LINK="TabbedPanelMod/zips/icons/" VGAP_QUANTITY="2 px" COMMON_HGAP_QUANTITY="14 pt"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      en caso de incluir íconos propios del AddOn
    </p>
  </body>
</html></richcontent>
<node TEXT="TabbedPanelMod" ID="ID_1254328724" LINK="TabbedPanelMod/zips/icons/TabbedPanelMod/" VSHIFT_QUANTITY="-0.75 pt">
<node TEXT="00.svg" ID="ID_1678729263" LINK="TabbedPanelMod/zips/icons/TabbedPanelMod/00.svg">
<node TEXT="00" ID="ID_476887472" LINK="menuitem:_IconAction.TabbedPanelMod/00"/>
</node>
<node TEXT="01.svg" ID="ID_167708381" LINK="TabbedPanelMod/zips/icons/TabbedPanelMod/01.svg"/>
<node TEXT="02.svg" ID="ID_113537657" LINK="TabbedPanelMod/zips/icons/TabbedPanelMod/02.svg"/>
<node TEXT="03.svg" ID="ID_838819414" LINK="TabbedPanelMod/zips/icons/TabbedPanelMod/03.svg"/>
<node TEXT="04.svg" ID="ID_584409115" LINK="TabbedPanelMod/zips/icons/TabbedPanelMod/04.svg"/>
<node TEXT="05.svg" ID="ID_605612129" LINK="TabbedPanelMod/zips/icons/TabbedPanelMod/05.svg"/>
<node TEXT="06.svg" ID="ID_813756488" LINK="TabbedPanelMod/zips/icons/TabbedPanelMod/06.svg"/>
<node TEXT="07.svg" ID="ID_1746536230" LINK="TabbedPanelMod/zips/icons/TabbedPanelMod/07.svg"/>
<node TEXT="08.svg" ID="ID_1993535029" LINK="TabbedPanelMod/zips/icons/TabbedPanelMod/08.svg"/>
<node TEXT="09.svg" ID="ID_393817510" LINK="TabbedPanelMod/zips/icons/TabbedPanelMod/09.svg"/>
<node TEXT="test.svg" ID="ID_1889146616" LINK="TabbedPanelMod/zips/icons/TabbedPanelMod/test.svg"/>
<node TEXT="TabbedPanelMod.svg" ID="ID_1895888183" LINK="TabbedPanelMod/zips/icons/TabbedPanelMod/TabbedPanelMod.svg"/>
</node>
<node TEXT="colores iconos Freeplane" ID="ID_327717405">
<node TEXT="3C83C5" ID="ID_1978542219"/>
<node TEXT="d1d1d1" ID="ID_484974937"/>
</node>
</node>
<node TEXT="doc" ID="ID_431851236" LINK="TabbedPanelMod/zips/doc/"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      en caso de incluir algún documento o mapa adicional
    </p>
  </body>
</html></richcontent>
<node TEXT="TabbedPanelMod" ID="ID_503306415" LINK="TabbedPanelMod/zips/doc/TabbedPanelMod/"/>
</node>
<node TEXT="templates" ID="ID_487457134" LINK="TabbedPanelMod/zips/templates/"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      en caso de incluir mapa template
    </p>
  </body>
</html></richcontent>
<node TEXT="TabbedPanelMod" ID="ID_780159924" LINK="TabbedPanelMod/zips/templates/TabbedPanelMod/"/>
</node>
<node TEXT="scripts" ID="ID_909188939" LINK="TabbedPanelMod/zips/scripts/">
<node TEXT="init" ID="ID_141510846" LINK="TabbedPanelMod/zips/scripts/init/">
<node TEXT="TabbedPanelMod_init.groovy" ID="ID_1038991368" LINK="TabbedPanelMod/zips/scripts/init/TabbedPanelMod_init.groovy"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      import org.freeplane.main.addons.AddOnsController
    </p>
    <p>
      
    </p>
    <p>
      def isTabbedPanelModAddOnActive = AddOnsController.getController().getInstalledAddOn('tabbedPanelMod')['active']
    </p>
    <p>
      def runOnStartingFreeplane =&#xa0;&#xa0;config.getBooleanProperty('tabbedPanelMod_runOnStartingFreeplane',false)
    </p>
    <p>
      
    </p>
    <p>
      if(isTabbedPanelModAddOnActive &amp;&amp; runOnStartingFreeplane){
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;menuUtils.executeMenuItems(['addons.tabbedPanelMod.TabbedPanelMod_on_single_node'])
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node TEXT="images" ID="ID_1648376623" LINK="TabbedPanelMod/images/">
<node TEXT="TabbedPanelMod.svg" ID="ID_633498564" LINK="TabbedPanelMod/images/TabbedPanelMod.svg"/>
<node TEXT="TabbedPanelMod-screenshot-1.png" ID="ID_293559267" LINK="TabbedPanelMod/images/TabbedPanelMod-screenshot-1.png"/>
<node TEXT="TabbedPanelMod.png" ID="ID_338501651">
<node TEXT="53x32" ID="ID_1079195239"/>
</node>
<node TEXT="TabbedPanelMod-icon.png" ID="ID_1658780343">
<node TEXT="27x16" ID="ID_282427033"/>
</node>
</node>
<node TEXT="TabbedPanelMod.mm" ID="ID_842309458" LINK="TabbedPanelMod/TabbedPanelMod.mm"/>
<node TEXT="generados automáticamente" STYLE_REF="Organizador" ID="ID_339327810"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      aquí voy reuniendo los que se generan automáticamente
    </p>
    <p>
      NO es folder
    </p>
  </body>
</html></richcontent>
<node TEXT="history.md" POSITION="bottom_or_right" ID="ID_1635185936" LINK="TabbedPanelMod/history.md"/>
<node TEXT="version.properties" POSITION="bottom_or_right" ID="ID_756696516" LINK="TabbedPanelMod/version.properties"/>
<node TEXT="TabbedPanelMod.mm.bak" POSITION="bottom_or_right" ID="ID_1277294252" LINK="TabbedPanelMod/TabbedPanelMod.mm.bak"/>
<node TEXT="TabbedPanelMod-v0.4.addon.mm" POSITION="bottom_or_right" ID="ID_817706156" LINK="TabbedPanelMod/TabbedPanelMod-v0.4.addon.mm"/>
<node TEXT="versiones anteriores" STYLE_REF="Organizador" FOLDED="true" POSITION="bottom_or_right" ID="ID_509161169">
<node TEXT="TabbedPanelMod-v0.3.addon.mm" ID="ID_1365249928" LINK="TabbedPanelMod/TabbedPanelMod-v0.3.addon.mm"/>
<node TEXT="TabbedPanelMod-v0.2.addon.mm" ID="ID_1873617501" LINK="TabbedPanelMod/TabbedPanelMod-v0.2.addon.mm"/>
<node TEXT="TabbedPanelMod-v0.1.addon.mm" ID="ID_1694910110" LINK="TabbedPanelMod/TabbedPanelMod-v0.1.addon.mm"/>
</node>
<node TEXT="gradle" STYLE_REF="Organizador" FOLDED="true" POSITION="bottom_or_right" ID="ID_1286931837">
<node TEXT="gradle" ID="ID_1277474861" LINK="TabbedPanelMod/gradle/">
<node TEXT="wrapper" ID="ID_1508388944" LINK="TabbedPanelMod/gradle/wrapper/">
<node TEXT="gradle-wrapper.jar" ID="ID_608615230" LINK="TabbedPanelMod/gradle/wrapper/gradle-wrapper.jar"/>
<node TEXT="gradle-wrapper.properties" ID="ID_182771284" LINK="TabbedPanelMod/gradle/wrapper/gradle-wrapper.properties"/>
</node>
</node>
<node TEXT="gradlew" ID="ID_1690424754" LINK="TabbedPanelMod/gradlew"/>
<node TEXT="gradlew.bat" ID="ID_1211452393" LINK="TabbedPanelMod/gradlew.bat"/>
</node>
</node>
<node TEXT="build.gradle" ID="ID_1220697041" LINK="TabbedPanelMod/build.gradle"/>
</node>
<node TEXT="resources" FOLDED="true" ID="ID_687946481" LINK="resources/">
<node TEXT="Standard.png" ID="ID_781611361" LINK="resources/Standard.png"/>
<node TEXT="TabsToTheRight.png" ID="ID_413585294" LINK="resources/TabsToTheRight.png"/>
<node TEXT="minimizedClickedAgain.png" ID="ID_1509093809" LINK="resources/minimizedClickedAgain.png"/>
</node>
<node TEXT="ignoredByGitHub" ID="ID_480970289" LINK="ignoredByGitHub/"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      folder with files not to be copied to Github
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="delete" ID="ID_1612888383" LINK="delete/"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      carpeta para acumular archivos a borrar
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT=".gitignore" ID="ID_37030934" LINK=".gitignore"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .gradle
    </p>
    <p>
      **/build/
    </p>
    <p>
      !src/**/build/
    </p>
    <p>
      
    </p>
    <p>
      # Ignore Gradle GUI config
    </p>
    <p>
      gradle-app.setting
    </p>
    <p>
      
    </p>
    <p>
      # Avoid ignoring Gradle wrapper jar file (.jar files are usually ignored)
    </p>
    <p>
      !gradle-wrapper.jar
    </p>
    <p>
      
    </p>
    <p>
      # Cache of project
    </p>
    <p>
      .gradletasknamecache
    </p>
    <p>
      
    </p>
    <p>
      # # Work around https://youtrack.jetbrains.com/issue/IDEA-116898
    </p>
    <p>
      # gradle/wrapper/gradle-wrapper.properties
    </p>
    <p>
      
    </p>
    <p>
      # Addon maps
    </p>
    <p>
      *.addon.mm
    </p>
    <p>
      *.mm.bak
    </p>
    <p>
      # version.properties
    </p>
    <p>
      
    </p>
    <p>
      # ignore .jar files
    </p>
    <p>
      *.jar
    </p>
    <p>
      
    </p>
    <p>
      # ignore some folders
    </p>
    <p>
      ignoredByGitHub/
    </p>
    <p>
      delete/
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="README.MD" ID="ID_253154217" LINK="README.MD"><richcontent TYPE="NOTE" CONTENT-TYPE="plain/markdown">
<text># Dummy readme file

justa a **dummy** markdown file
</text></richcontent>
<node TEXT="README-TabbedPanelMod-MDH.mm" POSITION="bottom_or_right" ID="ID_1744476850" LINK="README-TabbedPanelMod-MDH.mm"/>
</node>
<node TEXT="LICENSE.md" ID="ID_871638073" LINK="LICENSE.md"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      MIT License
    </p>
    <p>
      
    </p>
    <p>
      Copyright (c) 2023 Eduardo Frohlich.
    </p>
    <p>
      
    </p>
    <p>
      Permission is hereby granted, free of charge, to any person obtaining a copy
    </p>
    <p>
      of this software and associated documentation files (the &quot;Software&quot;), to deal
    </p>
    <p>
      in the Software without restriction, including without limitation the rights
    </p>
    <p>
      to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    </p>
    <p>
      copies of the Software, and to permit persons to whom the Software is
    </p>
    <p>
      furnished to do so, subject to the following conditions:
    </p>
    <p>
      
    </p>
    <p>
      The above copyright notice and this permission notice shall be included in all
    </p>
    <p>
      copies or substantial portions of the Software.
    </p>
    <p>
      
    </p>
    <p>
      THE SOFTWARE IS PROVIDED &quot;AS IS&quot;, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    </p>
    <p>
      IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    </p>
    <p>
      FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    </p>
    <p>
      AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    </p>
    <p>
      LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    </p>
    <p>
      OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    </p>
    <p>
      SOFTWARE.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="TabbedPanelMod project.mm" ID="ID_1474290422" LINK="TabbedPanelMod%20project.mm"/>
</node>
<node TEXT="new imported files" STYLE_REF="newFolderImport" ID="ID_1996504727">
<attribute NAME="log_MDI" VALUE="2" OBJECT="org.freeplane.features.format.FormattedObject|org.freeplane.plugin.script.proxy.ConvertibleText&amp;#x7c;2|number:decimal:#0.####"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Inated:&#xa0;&#xa0;&#xa0;2023-08-11&#xa0;&#xa0;00:52:49
    </p>
    <p>
      
    </p>
    <p>
      ------- Files: --------&#xa0;
    </p>
    <p>
      &#xa0;0 node(s) pointing to unexisting/filtered files (marked as 'broken')
    </p>
    <p>
      &#xa0;0 link(s) corrected in nodes
    </p>
    <p>
      &#xa0;0 new file(s) imported as node(s)&#xa0;
    </p>
    <p>
      &#xa0;0 node(s) moved/renamed in drive
    </p>
    <p>
      &#xa0;0 node(s) couldn't be moved/renamed in drive (marked as 'notMovedRenamed')
    </p>
    <p>
      
    </p>
    <p>
      ------- Folders: --------&#xa0;
    </p>
    <p>
      27 folders didn't need to be moved&#xa0;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      0.1 seconds
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      =====================================
    </p>
    <p>
      
    </p>
    <p>
      No failed operation in drive
    </p>
  </body>
</html>
</richcontent>
<node TEXT="TabbedPanelMod" ID="ID_486066267" LINK="TabbedPanelMod/">
<node TEXT="src" ID="ID_1682335685" LINK="TabbedPanelMod/src/">
<node TEXT="main" ID="ID_880317617" LINK="TabbedPanelMod/src/main/"/>
</node>
</node>
</node>
<node TEXT="Tareas" STYLE_REF="locked" ID="ID_838858443">
<node TEXT="colores Freeplane" ID="ID_574877018">
<node TEXT="3C83C5" POSITION="bottom_or_right" ID="ID_1262950870"/>
<node TEXT="d1d1d1" POSITION="bottom_or_right" ID="ID_856073408"/>
</node>
<node TEXT="sliding panel" FOLDED="true" ID="ID_1018810824">
<node TEXT="https://www.codeproject.com/Articles/565425/Sliding-Panel-in-Java" ID="ID_1383503584" LINK="https://www.codeproject.com/Articles/565425/Sliding-Panel-in-Java"/>
</node>
<node TEXT="https://www.geeksforgeeks.org/java-swing-jtoolbar/" ID="ID_1043689230" LINK="https://www.geeksforgeeks.org/java-swing-jtoolbar/"/>
<node TEXT="para que otros addon puedan agregar tabs y queden con formato lateral" ID="ID_1803072474" BACKGROUND_COLOR="#ff9900">
<icon BUILTIN="messagebox_warning"/>
<node TEXT="opcional" ID="ID_340835080">
<node TEXT="agregar ícono(s) con nombre(s) de tab en carpeta icons/tabbedPanelMod" ID="ID_1121712924">
<node TEXT="o" ID="ID_1477242999">
<node TEXT="a mano" ID="ID_511198912"/>
<node TEXT="dentro de addon" ID="ID_1414793420">
<node TEXT="ver caso menu-o-matic" ID="ID_1423109394"/>
</node>
</node>
</node>
</node>
<node TEXT="agregar en código, tras el momento de agregar la Tab:" ID="ID_1280899248">
<node TEXT="requiere import" ID="ID_1583781410">
<node TEXT="import org.freeplane.main.addons.AddOnsController" ID="ID_24059515"/>
</node>
<node TEXT="si se tiene:" ID="ID_774687409">
<node TEXT="def tabPane = ui.getFreeplaneTabbedPanel()" ID="ID_601704330"/>
</node>
<node TEXT="código:" ID="ID_229043503">
<node TEXT="OJO: revisar Menu o Matic. Ahí lo he ido desarrollando." ID="ID_1067459038"/>
<node TEXT="Cuando ya esté listo debo pasarlo para acá" ID="ID_276315454"/>
</node>
</node>
<node TEXT="tabbedPanelMod" FOLDED="true" ID="ID_953266179"><richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      add-on properties
    </p>
  </body>
</html></richcontent>
<node TEXT="OP_CONFIGURE" ID="ID_342382516"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      configure
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="OP_DEACTIVATE" ID="ID_713024266"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      deactivate
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="OP_ACTIVATE" ID="ID_140939948"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      activate
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="OP_DEINSTALL" ID="ID_1934723312"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      deinstall
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="scripts" ID="ID_41981217"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      &#xa0;&#xa0;TabbedPanelMod.groovy(ON_SINGLE_NODE/addons.tabbedPanelMod.TabbedPanelMod//menu_bar/edoTools/addons.tabbedPanelMod)
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="lib" ID="ID_456989928"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      &#xa0;&#xa0;TabbedPanelMod.jar
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="active" ID="ID_1282466186"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      true
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="addOnPropertiesFile" ID="ID_1216435323"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      null
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="addOnType" ID="ID_1882205849"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      SCRIPT
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="author" ID="ID_529127290"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      edoFro
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="class" ID="ID_378086430"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      class org.freeplane.plugin.script.addons.ScriptAddOnProperties
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="defaultProperties" ID="ID_552044564"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      tabbedPanelMod_runOnStartingFreeplane:
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;true
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="deinstallationRules" ID="ID_1217173935"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      &#xa0;&#xa0;[delete, ${installationbase}/addons/tabbedPanelMod.script.xml]
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;&#xa0;[delete, ${installationbase}/addons/tabbedPanelMod/scripts/TabbedPanelMod.groovy]
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;&#xa0;[delete, ${installationbase}/icons/TabbedPanelMod/00.svg]
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;&#xa0;[delete, ${installationbase}/icons/TabbedPanelMod/01.svg]
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;&#xa0;[delete, ${installationbase}/icons/TabbedPanelMod/02.svg]
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;&#xa0;[delete, ${installationbase}/icons/TabbedPanelMod/03.svg]
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;&#xa0;[delete, ${installationbase}/icons/TabbedPanelMod/04.svg]
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;&#xa0;[delete, ${installationbase}/icons/TabbedPanelMod/05.svg]
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;&#xa0;[delete, ${installationbase}/icons/TabbedPanelMod/06.svg]
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;&#xa0;[delete, ${installationbase}/icons/TabbedPanelMod/07.svg]
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;&#xa0;[delete, ${installationbase}/icons/TabbedPanelMod/08.svg]
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;&#xa0;[delete, ${installationbase}/icons/TabbedPanelMod/09.svg]
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;&#xa0;[delete, ${installationbase}/icons/TabbedPanelMod/test.svg]
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;&#xa0;[delete, ${installationbase}/icons/TabbedPanelMod/TabbedPanelMod.svg]
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;&#xa0;[delete, ${installationbase}/resources/images/TabbedPanelMod.svg]
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;&#xa0;[delete, ${installationbase}/resources/images/TabbedPanelMod-screenshot-1.png]
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;&#xa0;[delete, ${installationbase}/scripts/init/TabbedPanelMod_init.groovy]
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;&#xa0;[delete, ${installationbase}/addons/tabbedPanelMod/lib/TabbedPanelMod.jar]
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="description" ID="ID_368998743"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      This add-on changes the tabs in the tabbed panel (Tool panel) to the right and changes the labels to icons.
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="freeplaneVersionFrom" ID="ID_1701854952"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      1.11.0
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="freeplaneVersionTo" ID="ID_1964787053"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      null
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="homepage" ID="ID_1091564007"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      https://github.com/EdoFro/Freeplane_TabbedPanelMod
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="images" ID="ID_1093346508"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      &#xa0;&#xa0;TabbedPanelMod.svg
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;&#xa0;TabbedPanelMod-screenshot-1.png
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="latestVersion" ID="ID_1778468990"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      null
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="latestVersionChangelogUrl" ID="ID_1588245339"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      null
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="latestVersionDownloadUrl" ID="ID_1728490256"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      null
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="license" ID="ID_253014273"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      MIT License
    </p>
    <p>
      
    </p>
    <p>
      Copyright (c) 2023 Eduardo Frohlich.
    </p>
    <p>
      
    </p>
    <p>
      Permission is hereby granted, free of charge, to any person obtaining a copy
    </p>
    <p>
      of this software and associated documentation files (the &quot;Software&quot;), to deal
    </p>
    <p>
      in the Software without restriction, including without limitation the rights
    </p>
    <p>
      to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    </p>
    <p>
      copies of the Software, and to permit persons to whom the Software is
    </p>
    <p>
      furnished to do so, subject to the following conditions:
    </p>
    <p>
      
    </p>
    <p>
      The above copyright notice and this permission notice shall be included in all
    </p>
    <p>
      copies or substantial portions of the Software.
    </p>
    <p>
      
    </p>
    <p>
      THE SOFTWARE IS PROVIDED &quot;AS IS&quot;, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    </p>
    <p>
      IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    </p>
    <p>
      FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    </p>
    <p>
      AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    </p>
    <p>
      LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    </p>
    <p>
      OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    </p>
    <p>
      SOFTWARE.
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="name" ID="ID_1914111490"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      tabbedPanelMod
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="nameKey" ID="ID_248611537"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      addons.tabbedPanelMod
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="preferencesXml" ID="ID_1808451299"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      &lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;
    </p>
    <p>
      &lt;preferences_structure&gt;
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&lt;tabbed_pane&gt;
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&lt;tab name=&quot;plugins&quot;&gt;
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&lt;separator name = &quot;tabbedPanelMod&quot;&gt;
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&lt;boolean name = &quot;tabbedPanelMod_runOnStartingFreeplane&quot;/&gt;
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&lt;/separator&gt;
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&lt;/tab&gt;
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&lt;/tabbed_pane&gt;
    </p>
    <p>
      &lt;/preferences_structure&gt;
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="theme" ID="ID_1575551296"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      false
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="translatedName" ID="ID_1681295047"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      TabbedPanelMod
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="translations" ID="ID_1395684252"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      en:
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;addons.tabbedPanelMod:
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;TabbedPanelMod
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;addons.tabbedPanelMod.TabbedPanelMod:
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;Tabbed panel mod
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;OptionPanel.separator.tabbedPanelMod:
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;TabbedPanelMod
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;OptionPanel.tabbedPanelMod_runOnStartingFreeplane:
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;Apply on start up
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;OptionPanel.tabbedPanelMod_runOnStartingFreeplane.tooltip:
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;Apply right tabbed panel automatically when starting Freeplane
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="updateUrl" ID="ID_439639648"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      https://github.com/EdoFro/Freeplane_TabbedPanelMod/releases/latest/download/version.properties
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="version" ID="ID_1999833570"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      v0.4
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node TEXT="pruebas" ID="ID_1494573795">
<node TEXT="getComponent under mouse arrow" ID="ID_1582839785"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      import edofro.menuomatic.MenuAction as MA
    </p>
    <p>
      import javax.swing.JComponent&#xa0;
    </p>
    <p>
      
    </p>
    <p>
      JComponent co = (JComponent) MA. getComponent()
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="iconos elegidos" FOLDED="true" ID="ID_1753452369"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      node.children*.link*.text*.takeAfter('_')
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
<node TEXT="microbe" ID="ID_1935292178" LINK="menuitem:_IconAction.emoji-1F9A0" COLOR="#000099" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="crab" ID="ID_562341103" LINK="menuitem:_IconAction.emoji-1F980" COLOR="#000099" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="gorilla" ID="ID_1442849333" LINK="menuitem:_IconAction.emoji-1F98D" COLOR="#000099" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="butterfly" ID="ID_1618075716" LINK="menuitem:_IconAction.emoji-1F98B" COLOR="#000099" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="wolf" ID="ID_1539399569" LINK="menuitem:_IconAction.emoji-1F43A" COLOR="#000099" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="lady beetle" ID="ID_233164425" LINK="menuitem:_IconAction.emoji-1F41E" COLOR="#000099" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="fox" ID="ID_604791190" LINK="menuitem:_IconAction.emoji-1F98A" COLOR="#000099" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="spider" ID="ID_908100428" LINK="menuitem:_IconAction.emoji-1F577" COLOR="#000099" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="raccoon" ID="ID_551280507" LINK="menuitem:_IconAction.emoji-1F99D" COLOR="#000099" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="lion" ID="ID_1539658441" LINK="menuitem:_IconAction.emoji-1F981" COLOR="#000099" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="zebra" ID="ID_1119955738" LINK="menuitem:_IconAction.emoji-1F993" COLOR="#000099" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="iconos" FOLDED="true" POSITION="bottom_or_right" ID="ID_1503863936">
<icon BUILTIN="emoji-27A1"/>
<node TEXT="animals2" POSITION="bottom_or_right" ID="ID_1215825943">
<node TEXT="tiger face" POSITION="bottom_or_right" ID="ID_1444304147" LINK="menuitem:_IconAction.emoji-1F42F" COLOR="#000099" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="boar" POSITION="bottom_or_right" ID="ID_1604288304" LINK="menuitem:_IconAction.emoji-1F417" COLOR="#000099" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="mouse face" POSITION="bottom_or_right" ID="ID_1359813586" LINK="menuitem:_IconAction.emoji-1F42D" COLOR="#000099" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="bat" POSITION="bottom_or_right" ID="ID_1972382547" LINK="menuitem:_IconAction.emoji-1F987" COLOR="#000099" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="koala" POSITION="bottom_or_right" ID="ID_1475426653" LINK="menuitem:_IconAction.emoji-1F428" COLOR="#000099" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="panda" POSITION="bottom_or_right" ID="ID_1679602823" LINK="menuitem:_IconAction.emoji-1F43C" COLOR="#000099" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="sloth" POSITION="bottom_or_right" ID="ID_345422030" LINK="menuitem:_IconAction.emoji-1F9A5" COLOR="#000099" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="skunk" POSITION="bottom_or_right" ID="ID_1941349523" LINK="menuitem:_IconAction.emoji-1F9A8" COLOR="#000099" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="penguin" POSITION="bottom_or_right" ID="ID_689837752" LINK="menuitem:_IconAction.emoji-1F427" COLOR="#000099" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="owl" POSITION="bottom_or_right" ID="ID_1882624426" LINK="menuitem:_IconAction.emoji-1F989" COLOR="#000099" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="parrot" POSITION="bottom_or_right" ID="ID_1994542370" LINK="menuitem:_IconAction.emoji-1F99C" COLOR="#000099" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="T-Rex" POSITION="bottom_or_right" ID="ID_909688994" LINK="menuitem:_IconAction.emoji-1F996" COLOR="#000099" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="dolphin" POSITION="bottom_or_right" ID="ID_1988297205" LINK="menuitem:_IconAction.emoji-1F42C" COLOR="#000099" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="octopus" POSITION="bottom_or_right" ID="ID_670559802" LINK="menuitem:_IconAction.emoji-1F419" COLOR="#000099" BACKGROUND_COLOR="#cccccc"/>
</node>
<node TEXT="veg" POSITION="bottom_or_right" ID="ID_1309775427">
<node TEXT="maple leaf" ID="ID_827402324" LINK="menuitem:_IconAction.emoji-1F341" COLOR="#003399" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="grapes" ID="ID_450726636" LINK="menuitem:_IconAction.emoji-1F347" COLOR="#003399" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="watermelon" ID="ID_1756580446" LINK="menuitem:_IconAction.emoji-1F349" COLOR="#003399" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="red apple" ID="ID_1501463846" LINK="menuitem:_IconAction.emoji-1F34E" COLOR="#003399" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="green apple" ID="ID_1532465698" LINK="menuitem:_IconAction.emoji-1F34F" COLOR="#003399" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="strawberry" ID="ID_895780968" LINK="menuitem:_IconAction.emoji-1F353" COLOR="#003399" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="kiwi fruit" ID="ID_458199999" LINK="menuitem:_IconAction.emoji-1F95D" COLOR="#003399" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="tomato" ID="ID_1580885093" LINK="menuitem:_IconAction.emoji-1F345" COLOR="#003399" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="avocado" ID="ID_244201293" LINK="menuitem:_IconAction.emoji-1F951" COLOR="#003399" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="mushroom" ID="ID_445013611" LINK="menuitem:_IconAction.emoji-1F344" COLOR="#003399" BACKGROUND_COLOR="#cccccc"/>
</node>
<node TEXT="nums" POSITION="bottom_or_right" ID="ID_1705073281">
<node TEXT="keycap: 0" ID="ID_1135952945" LINK="menuitem:_IconAction.emoji-0030-20E3"/>
<node TEXT="keycap: 1" ID="ID_489007764" LINK="menuitem:_IconAction.emoji-0031-20E3"/>
<node TEXT="keycap: 2" ID="ID_95522505" LINK="menuitem:_IconAction.emoji-0032-20E3"/>
<node TEXT="keycap: 3" ID="ID_277877807" LINK="menuitem:_IconAction.emoji-0033-20E3"/>
<node TEXT="keycap: 4" ID="ID_113818954" LINK="menuitem:_IconAction.emoji-0034-20E3"/>
<node TEXT="keycap: 5" ID="ID_247170007" LINK="menuitem:_IconAction.emoji-0035-20E3"/>
<node TEXT="keycap: 6" ID="ID_90221148" LINK="menuitem:_IconAction.emoji-0036-20E3"/>
<node TEXT="keycap: 7" ID="ID_346358942" LINK="menuitem:_IconAction.emoji-0037-20E3"/>
<node TEXT="keycap: 8" ID="ID_1379513328" LINK="menuitem:_IconAction.emoji-0038-20E3"/>
<node TEXT="keycap: 9" ID="ID_525014435" LINK="menuitem:_IconAction.emoji-0039-20E3"/>
<node TEXT="keycap: 10" ID="ID_321035474" LINK="menuitem:_IconAction.emoji-1F51F"/>
</node>
<node TEXT="geom" POSITION="bottom_or_right" ID="ID_1278786081">
<node TEXT="red square" ID="ID_1691608460" LINK="menuitem:_IconAction.emoji-1F7E5"/>
<node TEXT="orange square" ID="ID_387934413" LINK="menuitem:_IconAction.emoji-1F7E7"/>
<node TEXT="yellow square" ID="ID_1446470240" LINK="menuitem:_IconAction.emoji-1F7E8"/>
<node TEXT="green square" ID="ID_1836636851" LINK="menuitem:_IconAction.emoji-1F7E9"/>
<node TEXT="blue square" ID="ID_873161466" LINK="menuitem:_IconAction.emoji-1F7E6"/>
<node TEXT="purple square" ID="ID_1056327229" LINK="menuitem:_IconAction.emoji-1F7EA"/>
<node TEXT="brown square" ID="ID_325441249" LINK="menuitem:_IconAction.emoji-1F7EB"/>
<node TEXT="black large square" ID="ID_1304800936" LINK="menuitem:_IconAction.emoji-2B1B"/>
</node>
<node TEXT="left-right arrow" ID="ID_631165714" LINK="menuitem:_IconAction.emoji-2194"/>
<node TEXT="right arrow" ID="ID_101125105" LINK="menuitem:_IconAction.emoji-27A1"/>
</node>
<node TEXT="xx" POSITION="bottom_or_right" ID="ID_140151547">
<node TEXT="artist palette" ID="ID_1642414949" LINK="menuitem:_IconAction.emoji-1F3A8" COLOR="#006666" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="List" ID="ID_1636736556" LINK="menuitem:_IconAction.list" COLOR="#006666" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="calendar" ID="ID_1760930385" LINK="menuitem:_IconAction.emoji-1F4C5" COLOR="#006666" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="clapper board" ID="ID_16514496" LINK="menuitem:_IconAction.emoji-1F3AC" COLOR="#006666" BACKGROUND_COLOR="#cccccc"/>
<node TEXT="keycap: 0" ID="ID_1359962568" LINK="menuitem:_IconAction.emoji-0030-20E3"/>
<node TEXT="keycap: 1" ID="ID_666859121" LINK="menuitem:_IconAction.emoji-0031-20E3"/>
<node TEXT="keycap: 2" ID="ID_1984783534" LINK="menuitem:_IconAction.emoji-0032-20E3"/>
<node TEXT="keycap: 3" ID="ID_83550315" LINK="menuitem:_IconAction.emoji-0033-20E3"/>
<node TEXT="keycap: 4" ID="ID_600135060" LINK="menuitem:_IconAction.emoji-0034-20E3"/>
<node TEXT="keycap: 5" ID="ID_417825803" LINK="menuitem:_IconAction.emoji-0035-20E3"/>
<node TEXT="keycap: 6" ID="ID_1572142522" LINK="menuitem:_IconAction.emoji-0036-20E3"/>
<node TEXT="keycap: 7" ID="ID_1868661663" LINK="menuitem:_IconAction.emoji-0037-20E3"/>
<node TEXT="keycap: 8" ID="ID_1497041987" LINK="menuitem:_IconAction.emoji-0038-20E3"/>
<node TEXT="keycap: 9" ID="ID_1350349944" LINK="menuitem:_IconAction.emoji-0039-20E3"/>
<node TEXT="keycap: 10" ID="ID_1911358966" LINK="menuitem:_IconAction.emoji-1F51F"/>
</node>
</node>
<node TEXT="Freeplane Tools Tab" ID="ID_1005840881"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      import javax.swing.JTabbedPane
    </p>
    <p>
      import groovy.swing.SwingBuilder
    </p>
    <p>
      import javax.swing.*
    </p>
    <p>
      import java.awt.*
    </p>
    <p>
      //import java.awt.event.*
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      def TP = ui.getFreeplaneTabbedPanel()
    </p>
    <p>
      //TP.remove(0); return
    </p>
    <p>
      
    </p>
    <p>
      def iconos = ['IconAction.emoji-1F3A8', 'IconAction.list', 'IconAction.emoji-1F4C5', 'IconAction.emoji-1F3AC',
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;'IconAction.emoji-1F9A0', 'IconAction.emoji-1F980', 'IconAction.emoji-1F98D', 'IconAction.emoji-1F98B',&#xa0;
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;'IconAction.emoji-1F43A', 'IconAction.emoji-1F41E', 'IconAction.emoji-1F98A', 'IconAction.emoji-1F577',&#xa0;
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;'IconAction.emoji-1F99D', 'IconAction.emoji-1F981', 'IconAction.emoji-1F993']
    </p>
    <p>
      
    </p>
    <p>
      def swingBuilder =&#xa0;&#xa0;new SwingBuilder()
    </p>
    <p>
      
    </p>
    <p>
      def boton = swingBuilder.toggleButton(
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;//text&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;: 'hola',
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;horizontalAlignment : SwingConstants.LEFT,
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;icon&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;: menuUtils.getMenuItemIcon('IconAction.emoji-27A1'),
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;selectedIcon&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;: menuUtils.getMenuItemIcon('IconAction.emoji-2194'),
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;toolTipText&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;: 'tt',
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;//preferredSize&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;: prefDimension,
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;//minimumSize&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;: minD,
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;margin&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;: new Insets(0,2,0,2),
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;borderPainted&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;: true,
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;actionPerformed&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;: {e -&gt;
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;c.statusInfo = e.source.selected.toString()
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;}
    </p>
    <p>
      )
    </p>
    <p>
      def panel = swingBuilder.panel()
    </p>
    <p>
      
    </p>
    <p>
      //return boton
    </p>
    <p>
      
    </p>
    <p>
      switch(TP.getTabPlacement()){
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;case JTabbedPane.TOP:
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;def numTabs = TP.tabCount
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;numTabs.times{i -&gt;
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;TP.setIconAt(i,menuUtils.getMenuItemIcon(iconos[i]))
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;TP.setToolTipTextAt(i,TP.getTitleAt(i))
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;TP.setTitleAt(i,null)
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;}
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;TP.insertTab(null,null,panel,null,0)
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;TP.setTabComponentAt(0, boton);
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;TP.setTabPlacement(JTabbedPane.RIGHT)
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;break
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;case JTabbedPane.RIGHT:
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;TP.remove(0)
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;TP.tabCount.times{i -&gt;
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;TP.setTitleAt(i,TP.getToolTipTextAt(i))
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;TP.setToolTipTextAt(i,null)
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;}
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;//'Format Attributes Calendar Presentation'.split().eachWithIndex{c,i -&gt; TP.setTitleAt(i,c)}
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;TP.tabCount.times{i -&gt;&#xa0;&#xa0;TP.setIconAt(i,null)}
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;TP.setTabPlacement(JTabbedPane.TOP)
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;break
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;//default:
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      return 'listo'
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      //TP.setTabPlacement(JTabbedPane.RIGHT)
    </p>
    <p>
      //TP.getTabComponentAt(0)
    </p>
    <p>
      
    </p>
    <p>
      //TP.getAt(1)
    </p>
    <p>
      //TP.getComponent(1)
    </p>
    <p>
      //TP.getComponentAt(1)
    </p>
    <p>
      //println TP.getComponents()*.class*.toString().join('\n')
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      //
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      /*
    </p>
    <p>
      
    </p>
    <p>
      setTabComponentAt(2, myComp)
    </p>
    <p>
      setSelectedIndex(i)
    </p>
    <p>
      setSelectedComponent(i)
    </p>
    <p>
      setName&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;(str)
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      */
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="agrega Tab &quot;test&quot;" ID="ID_1534141830"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      import groovy.swing.SwingBuilder
    </p>
    <p>
      
    </p>
    <p>
      def sb = new SwingBuilder()
    </p>
    <p>
      
    </p>
    <p>
      TP = ui.getFreeplaneTabbedPanel()
    </p>
    <p>
      def pane = sb.panel()
    </p>
    <p>
      TP.addTab(&quot;test&quot;,pane)
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="resize ToolPanel" ID="ID_1382416232"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      //import javax.swing.JTabbedPane
    </p>
    <p>
      //import groovy.swing.SwingBuilder
    </p>
    <p>
      //import javax.swing.*
    </p>
    <p>
      import java.awt.Dimension
    </p>
    <p>
      //import java.awt.event.*
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      def TP = ui.getFreeplaneTabbedPanel()
    </p>
    <p>
      def prevDim = TP.getSize()
    </p>
    <p>
      TP.setPreferredSize(new Dimension(440,(int) prevDim.height))
    </p>
    <p>
      
    </p>
    <p>
      def parentBox = TP.parent
    </p>
    <p>
      parentBox.revalidate()
    </p>
    <p>
      parentBox.repaint()
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="get icon" ID="ID_1082778338"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      def i = 1
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      menuUtils.getMenuItemIcon(&quot;IconAction.ToolTabIcons/${String.format(&quot;%02d&quot;,i)}&quot;)
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="agrega Tab &quot;test&quot; con botones" ID="ID_381894890"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      import groovy.swing.SwingBuilder
    </p>
    <p>
      import org.freeplane.core.ui.components.FreeplaneToolBar
    </p>
    <p>
      import org.freeplane.core.ui.AFreeplaneAction;
    </p>
    <p>
      import javax.swing.SwingConstants;
    </p>
    <p>
      import javax.swing.Icon;
    </p>
    <p>
      import java.awt.Insets;
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      sb = new SwingBuilder()
    </p>
    <p>
      
    </p>
    <p>
      TP = ui.getFreeplaneTabbedPanel()
    </p>
    <p>
      //return TP
    </p>
    <p>
      if (TP.tabCount&gt;= 5){TP.remove(4)}//;return
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      def tb = new FreeplaneToolBar('myToolbar', SwingConstants.VERTICAL)
    </p>
    <p>
      def i = 1
    </p>
    <p>
      3.times{tb.add(creaBoton(i++))}
    </p>
    <p>
      tb.addSeparator()
    </p>
    <p>
      4.times{tb.add(creaBoton(i++))}
    </p>
    <p>
      
    </p>
    <p>
      def pane = sb.panel()
    </p>
    <p>
      pane.add(tb)
    </p>
    <p>
      TP.addTab(&quot;test&quot;,pane)
    </p>
    <p>
      
    </p>
    <p>
      //---- methods -----
    </p>
    <p>
      
    </p>
    <p>
      def creaBoton(j) {
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;def boton = sb.button(
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;text&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;: &quot;texto $j&quot;,
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;horizontalAlignment : SwingConstants.LEFT,
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;icon&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;: menuUtils.getMenuItemIcon(&quot;IconAction.TabbedPanelMod/02&quot;),
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;toolTipText&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;: 'tt',
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;//preferredSize&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;: prefDimension,
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;//minimumSize&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;: minD,
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;margin&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;: new Insets(10,12,10,12),
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;borderPainted&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;: true,
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;actionPerformed&#xa0;&#xa0;&#xa0;&#xa0;&#xa0;: {c.statusInfo = j.toString() * 5}
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;)
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;return boton
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="ver si add-on está activo" FOLDED="true" ID="ID_714000285"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      import org.freeplane.main.addons.AddOnsController
    </p>
    <p>
      
    </p>
    <p>
      def isTabbedPanelModAddOnActive = AddOnsController.getController().getInstalledAddOn('tabbedPanelMod')['active']
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
<node TEXT="obtener datos de AddOn" ID="ID_101523590"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      import org.freeplane.main.addons.AddOnProperties
    </p>
    <p>
      import org.freeplane.main.addons.AddOnsController
    </p>
    <p>
      
    </p>
    <p>
      def nodo = node
    </p>
    <p>
      def addOnProps = AddOnsController.getController().getInstalledAddOn('tabbedPanelMod')
    </p>
    <p>
      
    </p>
    <p>
      def props = ['scripts', 'homepage', 'addOnPropertiesFile', 'freeplaneVersionTo', 'name', 'updateUrl', 'defaultProperties', 'active', 'addOnType', 'freeplaneVersionFrom', 'latestVersionChangelogUrl', 'images', 'theme', 'deinstallationRules', 'latestVersionDownloadUrl', 'class', 'latestVersion', 'lib', 'version', 'license', 'nameKey', 'preferencesXml', 'translatedName', 'description', 'translations', 'author']
    </p>
    <p>
      
    </p>
    <p>
      props.each{ p -&gt;
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;nodo.createChild(p).note = addOnProps[p].toString()
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
<richcontent TYPE="DETAILS">
<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html></richcontent>
<node TEXT="scripts" ID="ID_1300186951"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      [TabbedPanelMod.groovy(ON_SINGLE_NODE/addons.tabbedPanelMod.TabbedPanelMod//menu_bar/edoTools/addons.tabbedPanelMod)]
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="homepage" ID="ID_1822552805"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      https://github.com/EdoFro/Freeplane_TabbedPanelMod
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="addOnPropertiesFile" ID="ID_1021725229"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      C:\Users\efroh\AppData\Roaming\Freeplane\1.11.x\addons\tabbedPanelMod.script.xml
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="freeplaneVersionTo" ID="ID_398718397"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      null
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="name" ID="ID_1011584049"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      tabbedPanelMod
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="updateUrl" ID="ID_603878563"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      https://github.com/EdoFro/Freeplane_TabbedPanelMod/releases/latest/download/version.properties
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="defaultProperties" ID="ID_842308729"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      [:]
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="active" ID="ID_926696139"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      true
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="addOnType" ID="ID_1409511148"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      SCRIPT
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="freeplaneVersionFrom" ID="ID_1356734364"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      1.11.0
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="latestVersionChangelogUrl" ID="ID_955723284"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      null
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="images" ID="ID_1098468349"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      [TabbedPanelMod.svg, TabbedPanelMod-screenshot-1.png]
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="theme" ID="ID_815353816"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      false
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="deinstallationRules" ID="ID_1735732508"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      [[delete, ${installationbase}/addons/tabbedPanelMod.script.xml], [delete, ${installationbase}/addons/tabbedPanelMod/scripts/TabbedPanelMod.groovy], [delete, ${installationbase}/icons/TabbedPanelMod/00.svg], [delete, ${installationbase}/icons/TabbedPanelMod/01.svg], [delete, ${installationbase}/icons/TabbedPanelMod/02.svg], [delete, ${installationbase}/icons/TabbedPanelMod/03.svg], [delete, ${installationbase}/icons/TabbedPanelMod/04.svg], [delete, ${installationbase}/icons/TabbedPanelMod/05.svg], [delete, ${installationbase}/icons/TabbedPanelMod/06.svg], [delete, ${installationbase}/icons/TabbedPanelMod/07.svg], [delete, ${installationbase}/icons/TabbedPanelMod/08.svg], [delete, ${installationbase}/icons/TabbedPanelMod/09.svg], [delete, ${installationbase}/icons/TabbedPanelMod/test.svg], [delete, ${installationbase}/icons/TabbedPanelMod/TabbedPanelMod.svg], [delete, ${installationbase}/resources/images/TabbedPanelMod.svg], [delete, ${installationbase}/resources/images/TabbedPanelMod-screenshot-1.png]]
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="latestVersionDownloadUrl" ID="ID_892504907"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      null
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="class" ID="ID_683636549"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      class org.freeplane.plugin.script.addons.ScriptAddOnProperties
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="latestVersion" ID="ID_1014810713"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
  </body>
</html></richcontent>
</node>
<node TEXT="lib" ID="ID_1648123237"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      []
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="version" ID="ID_142686924"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      v0.2
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="license" ID="ID_263383893"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      MIT License
    </p>
    <p>
      
    </p>
    <p>
      Copyright (c) 2023 Eduardo Frohlich.
    </p>
    <p>
      
    </p>
    <p>
      Permission is hereby granted, free of charge, to any person obtaining a copy
    </p>
    <p>
      of this software and associated documentation files (the &quot;Software&quot;), to deal
    </p>
    <p>
      in the Software without restriction, including without limitation the rights
    </p>
    <p>
      to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    </p>
    <p>
      copies of the Software, and to permit persons to whom the Software is
    </p>
    <p>
      furnished to do so, subject to the following conditions:
    </p>
    <p>
      
    </p>
    <p>
      The above copyright notice and this permission notice shall be included in all
    </p>
    <p>
      copies or substantial portions of the Software.
    </p>
    <p>
      
    </p>
    <p>
      THE SOFTWARE IS PROVIDED &quot;AS IS&quot;, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    </p>
    <p>
      IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    </p>
    <p>
      FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    </p>
    <p>
      AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    </p>
    <p>
      LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    </p>
    <p>
      OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    </p>
    <p>
      SOFTWARE.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="nameKey" ID="ID_1454744782"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      addons.tabbedPanelMod
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="preferencesXml" ID="ID_1912815193"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      null
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="translatedName" ID="ID_511415201"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      TabbedPanelMod
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="description" ID="ID_763785524"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      This add-on changes the tabs in the tabbed panel (Tool panel) to the right and changes the labels to icons.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="translations" ID="ID_1007005955"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      [en:[addons.tabbedPanelMod:TabbedPanelMod, addons.tabbedPanelMod.TabbedPanelMod:Tabbed panel mod]]
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="author" ID="ID_926765166"><richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      edoFro
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
</node>
</node>
</map>
