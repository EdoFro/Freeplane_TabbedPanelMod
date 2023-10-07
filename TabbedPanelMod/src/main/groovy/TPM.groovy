package edofro.tabbedpanelmod


import java.awt.Dimension
import java.awt.Insets

import javax.swing.SwingConstants
import javax.swing.JTabbedPane

import groovy.swing.SwingBuilder
import org.freeplane.core.ui.components.UITools as ui
import org.freeplane.core.util.MenuUtils as menuUtils
import org.freeplane.plugin.script.proxy.ScriptUtils



class TPM{
    // region properties
    static final c = ScriptUtils.c()
    static final JTabbedPane FPTabPane = ui.getFreeplaneTabbedPanel()

    static final String[] iconos = ['IconAction.emoji-1F3A8', 'IconAction.list', 'IconAction.emoji-1F4C5', 'IconAction.emoji-1F3AC',
                  'IconAction.emoji-1F9A0', 'IconAction.emoji-1F980', 'IconAction.emoji-1F98D', 'IconAction.emoji-1F98B',
                  'IconAction.emoji-1F43A', 'IconAction.emoji-1F41E', 'IconAction.emoji-1F98A', 'IconAction.emoji-1F577',
                  'IconAction.emoji-1F99D', 'IconAction.emoji-1F981', 'IconAction.emoji-1F993']

    static int collapsedWidth=100

    static final SwingBuilder swingBuilder =  new SwingBuilder()

    static Properties tpmProps = new Properties()

    static File tpmPropsFile = new File (c.getUserDirectory(),'resources/TabbedPanelMod/TPM.properties')

    static boolean ignoreResizing = false

    static boolean savingTpmProps = false

    // endregion

    // region methods

    def static modifyTab(int i,  iconForTab = null){
        if(isModActive()) {
            def tabName = FPTabPane.getTitleAt(i) ?: FPTabPane.getToolTipTextAt(i)
            FPTabPane.setToolTipTextAt(i, tabName)
            FPTabPane.setTitleAt(i, null)
            FPTabPane.setTabComponentAt(i, tabButton(i, tabName, iconForTab))
            def w = FPTabPane.tabWidths[tabName]
            if(w)
                resizeTP(w)
        }
    }

    def static isModActive(){
        FPTabPane.hasProperty('isModded')? FPTabPane.isModded : false
    }

    def static tabButton(int indexP, String tabName,  iconForTab = null){
        def TPMaction = {e ->
            collapsedWidth = e.source.parent.width
            def botones = e.source.parent.components
            def i = 0
            while(i<50 && !botones[i].equals(e.source)){i++}
            def index = botones[i].equals(e.source)?i:-1
            //println "Se presionó botón de Tab $index"
            if ( FPTabPane.selectedIndex==index && !FPTabPane.collapsed ){
//                resizeTP(collapsedWidth)
                FPTabPane.collapsed = true
                resizeTP(collapsedWidth)
            }else{
                FPTabPane.setSelectedIndex(index)
                if(FPTabPane.tabWidths[tabName]){
                    resizeTP(FPTabPane.tabWidths[tabName])
                } else if (FPTabPane.collapsed){
                    resizeTP(FPTabPane.originalWidth)
                } else {
                    FPTabPane.tabWidths[tabName] = FPTabPane.width
                }
                FPTabPane.collapsed = false
            }
        }
        def icono = iconForTab?menuUtils.getMenuItemIcon('IconAction.' + iconForTab):null
        icono ?= getIconFromTPM(indexP, tabName)
        def btn = swingBuilder.button(
                horizontalAlignment : SwingConstants.LEFT,
                icon                : icono,
                margin              : new Insets(0,0,0,0),
                borderPainted       : false,
                opaque              : false,
                actionPerformed     : TPMaction
                toolTipText         : tabName,
        )
        return btn
    }

    def static resizeTP(w){
        ignoreResizing = true
        def prevDim = FPTabPane.getSize()
        FPTabPane.setPreferredSize(new Dimension(w,(int) prevDim.height))
        def parentBox = FPTabPane.parent
        parentBox.revalidate()
        parentBox.repaint()
    }

    def static getIconFromTPM(i, t){
        def ico = 'IconAction.TabbedPanelMod/'
        menuUtils.getMenuItemIcon("${ico}${t}")?:menuUtils.getMenuItemIcon("${ico}${t.toLowerCase()}")?: menuUtils.getMenuItemIcon("${ico}${String.format('%02d',i)}")?: menuUtils.getMenuItemIcon(iconos[i])
    }

    def static getInitialTabWidths(){
        def tw = [:]
        if(tpmPropsFile.exists()){
            tpmProps.load(new FileInputStream(tpmPropsFile))
            tpmProps.each{k,v ->
                tw[k] = ((String) v).isInteger()?v.toInteger():v
            }
            // println tw
        }
        return tw
    }

    def static saveTabWidths(){
        if (!savingTpmProps && FPTabPane.hasProperty('tabWidths')) {
            savingTpmProps = true
            new Timer().runAfter(2000) {
                def map2 = FPTabPane.tabWidths.clone()
                map2.each { k, v -> map2[k] = v.toString() }
                if (tpmProps != map2) {
                    //println 'tpmProps cambió. se debe guardar'
                    map2.each { k, v ->
                        tpmProps.setProperty(k, v)
                    }
                    if(!tpmPropsFile.exists()) tpmPropsFile.parentFile.mkdirs()
                    tpmProps.store(new FileWriter(tpmPropsFile), 'tabbedPanel widths:')
                } //else println 'tpmProps NO cambió'
                savingTpmProps = false
            }
        }

    }

    // endregion
}
