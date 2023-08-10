import javax.swing.JTabbedPane
import java.awt.event.ComponentEvent
import java.awt.event.ComponentListener

import edofro.tabbedpanelmod.TPM


TP = TPM.FPTabPane

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
        if (TP.hasProperty('isModded')){
            TP.isModded = true
        } else {
            TP.metaClass.isModded = true
        }
        numTabs.times{i ->
            TPM.modifyTab(i)
        }
        TP.setTabPlacement(JTabbedPane.RIGHT)
        if(TP.tabWidths[TP.selectedIndex]){
            TPM.resizeTP(TP.tabWidths[TP.selectedIndex])
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
        TP.isModded = false
        TPM.resizeTP(TP.originalWidth)
        //TP.tabWidths.clear() //this here is for testing purposes. can be commented/deleted
        break
    //default:

}


return 'done'


class CustomTabPanelComponentListener implements ComponentListener {
    void componentResized(ComponentEvent e) { //https://docs.oracle.com/javase/8/docs/api/java/awt/event/ComponentEvent.html
        def comp = e.component
        if (comp.getTabPlacement()==JTabbedPane.RIGHT && !comp.collapsed){
            def selTab = comp.selectedIndex
            comp.tabWidths[selTab] = comp.width
        }
    }

    void componentMoved(ComponentEvent e) {
        // e.source.title =  " moved. "
    }

    void componentShown(ComponentEvent e) {
        // e.source.title =  " shown. "
    }

    void componentHidden(ComponentEvent e) {
        // e.getSource().title =  " hidden. "
    }
}