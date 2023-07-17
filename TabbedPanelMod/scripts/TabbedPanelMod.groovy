import javax.swing.JTabbedPane
import groovy.swing.SwingBuilder
import javax.swing.*
import java.awt.*
import java.awt.event.*


TP = ui.getFreeplaneTabbedPanel()
//return TP

iconos = ['IconAction.emoji-1F3A8', 'IconAction.list', 'IconAction.emoji-1F4C5', 'IconAction.emoji-1F3AC',
     'IconAction.emoji-1F9A0', 'IconAction.emoji-1F980', 'IconAction.emoji-1F98D', 'IconAction.emoji-1F98B',
     'IconAction.emoji-1F43A', 'IconAction.emoji-1F41E', 'IconAction.emoji-1F98A', 'IconAction.emoji-1F577',
     'IconAction.emoji-1F99D', 'IconAction.emoji-1F981', 'IconAction.emoji-1F993']

swingBuilder =  new SwingBuilder()
collapsedWidth = 40

switch(TP.getTabPlacement()){
    case JTabbedPane.TOP:
        def numTabs = TP.tabCount
        if (TP.hasProperty('collapsed')){
            TP.collapsed = false
        } else {
            TP.metaClass.collapsed = false
        }
        if (!TP.hasProperty('tabWidths')){
        //if (!TP.hasProperty('tabWidths') || !TP.tabWidths ){ //this here is for testing purposes. can be commented/deleted, (and uncomment the previous line)
            def tw = []
            numTabs.times{ tw << null}
            TP.metaClass.tabWidths = tw
            TP.tabWidths[TP.selectedIndex] = TP.width
        }
        if (TP.hasProperty('originalWidth')){
            TP.originalWidth = TP.width
        } else {
            TP.metaClass.originalWidth = TP.width
        }
        numTabs.times{i ->
            def toolTip = TP.getTitleAt(i)?:TP.getToolTipTextAt(i)
            TP.setToolTipTextAt(i, toolTip)
            TP.setTabComponentAt(i, tabButton(i, toolTip))
            TP.setTitleAt(i,null)
        }
        TP.setTabPlacement(JTabbedPane.RIGHT)
        if(TP.tabWidths[TP.selectedIndex]){
            resizeTP(TP.tabWidths[TP.selectedIndex])
        }
        TP.componentListeners.findAll{ it.class.toString() == 'class CustomTabPanelComponentListener' }.each{TP.removeComponentListener(it)}
        TP.addComponentListener(new CustomTabPanelComponentListener())
        break
    case JTabbedPane.RIGHT:
        TP.tabCount.times{i ->  TP.setTabComponentAt(i,null)}
        TP.tabCount.times{i ->
            TP.setTitleAt(i, TP.getToolTipTextAt(i)?:TP.getTitleAt(i))
            TP.setToolTipTextAt(i,null)
        }
        TP.setTabPlacement(JTabbedPane.TOP)
        TP.collapsed = false
        resizeTP(TP.originalWidth)
        //TP.tabWidths.clear() //this here is for testing purposes. can be commented/deleted
        break
    //default:

}


return 'done'

def tabButton(num, toolTip){
    return swingBuilder.button(
        horizontalAlignment : SwingConstants.LEFT,
        icon                : getIcon(num,toolTip),
        toolTipText         : toolTip,
        margin              : new Insets(0,0,0,0),
        borderPainted       : false,
        opaque              : false,
        actionPerformed     : {e ->
                                if ( TP.selectedIndex==num && !TP.collapsed ){
                                    resizeTP(collapsedWidth)
                                    TP.collapsed = true
                                }else{
                                    TP.setSelectedIndex(num)
                                    if(TP.tabWidths[num]){
                                        resizeTP(TP.tabWidths[num])
                                    } else if (TP.collapsed){
                                        resizeTP(TP.originalWidth)
                                    } else {
                                        TP.tabWidths[num] = TP.width
                                    }
                                    TP.collapsed = false
                                }
                            }
                    )
}

def getIcon(i,t){
    def ico = 'IconAction.TabbedPanelMod/'
    menuUtils.getMenuItemIcon("${ico}${t}")?:menuUtils.getMenuItemIcon("${ico}${t.toLowerCase()}")?: menuUtils.getMenuItemIcon("${ico}${String.format('%02d',i)}")?: menuUtils.getMenuItemIcon(iconos[i])
}


def resizeTP(w){
    def prevDim = TP.getSize()
    TP.setPreferredSize(new Dimension(w,(int) prevDim.height))
    def parentBox = TP.parent
    parentBox.revalidate()
    parentBox.repaint()
}


class CustomTabPanelComponentListener implements ComponentListener {
    public void componentResized(ComponentEvent e) { //https://docs.oracle.com/javase/8/docs/api/java/awt/event/ComponentEvent.html
        def comp = e.component
        if (comp.getTabPlacement()==JTabbedPane.RIGHT && !comp.collapsed){
            def selTab = comp.selectedIndex
            comp.tabWidths[selTab] = comp.width
        }
    }
    
    public void componentMoved(ComponentEvent e) {
        // e.source.title =  " moved. "
    }
    public void componentShown(ComponentEvent e) {
        // e.source.title =  " shown. "
    }
    public void componentHidden(ComponentEvent e) {
        // e.getSource().title =  " hidden. "
    }
}