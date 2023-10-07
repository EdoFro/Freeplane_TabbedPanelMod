import java.awt.event.ComponentEvent
import java.awt.event.ComponentListener
import java.awt.Insets

import javax.swing.JTabbedPane
import javax.swing.UIManager

import edofro.tabbedpanelmod.TPM


TP = TPM.FPTabPane

switch(TP.getTabPlacement()){
    case JTabbedPane.TOP:
        setTabProperty('originalWidth', TP.width)
        setTabProperty('collapsed',false)
        setTabProperty('isModded', true)
        if (!TP.hasProperty('tabWidths')){
            def tw = TPM.getInitialTabWidths()
            TP.metaClass.tabWidths = tw
            TP.tabWidths[TP.getTitleAt(TP.selectedIndex)] = TP.width
        }
        }

        TP.tabCount.times{i -> TPM.modifyTab(i) }
        TP.setTabPlacement(JTabbedPane.RIGHT)

        def initialTabWidth = TP.tabWidths[TP.getToolTipTextAt(TP.selectedIndex)]
        if(initialTabWidth)
            TPM.resizeTP(initialTabWidth)

        resizeTabsContainer()

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
        TP.updateUI()
        TPM.resizeTP(TP.originalWidth)
        //TP.tabWidths.clear() //this here is for testing purposes. can be commented/deleted
        //println TP.tabWidths
        break
    //default:

}


return 'done'

def setTabProperty(String name, value){
    if (TP.hasProperty(name))
        TP[name] = value
    else
        TP.metaClass[name] = value
}

def resizeTabsContainer(){
    def previousTabInsets = UIManager.getInsets('TabbedPane.tabInsets')
    UIManager.put('TabbedPane.tabInsets',new Insets(0,2,0,1))
    TP.updateUI()
    TP.revalidate()
    TP.repaint()
    UIManager.put('TabbedPane.tabInsets', previousTabInsets)
}


class CustomTabPanelComponentListener implements ComponentListener {
    void componentResized(ComponentEvent e) { //https://docs.oracle.com/javase/8/docs/api/java/awt/event/ComponentEvent.html
        def comp = e.component
        //println "componentResized: ignorar: ${TPM.ignoreResizing}"
        if (!TPM.ignoreResizing && comp.getTabPlacement()==JTabbedPane.RIGHT && !comp.collapsed && comp.width>=TPM.collapsedWidth+10){
            def selectedTabName = comp.getToolTipTextAt(comp.selectedIndex)
            comp.tabWidths[selectedTabName] = comp.width
            TPM.saveTabWidths()
            //println comp.tabWidths
        }
        TPM.ignoreResizing = false
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