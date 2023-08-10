package edofro.tabbedpanelmod

import javax.swing.JButton
import java.awt.Dimension
import java.awt.Insets

import javax.swing.SwingConstants
import javax.swing.JTabbedPane

import groovy.swing.SwingBuilder
import org.freeplane.core.ui.components.UITools as ui
import org.freeplane.core.util.MenuUtils as menuUtils



class TPM{
    static final JTabbedPane FPTabPane = ui.getFreeplaneTabbedPanel()

    static final String[] iconos = ['IconAction.emoji-1F3A8', 'IconAction.list', 'IconAction.emoji-1F4C5', 'IconAction.emoji-1F3AC',
                  'IconAction.emoji-1F9A0', 'IconAction.emoji-1F980', 'IconAction.emoji-1F98D', 'IconAction.emoji-1F98B',
                  'IconAction.emoji-1F43A', 'IconAction.emoji-1F41E', 'IconAction.emoji-1F98A', 'IconAction.emoji-1F577',
                  'IconAction.emoji-1F99D', 'IconAction.emoji-1F981', 'IconAction.emoji-1F993']

    static final int collapsedWidth = 40

    static final SwingBuilder swingBuilder =  new SwingBuilder()

    def static modifyTab(int i, String iconForTab = null){
        if(isModActive()) {
            def toolTip = FPTabPane.getTitleAt(i) ?: FPTabPane.getToolTipTextAt(i)
            FPTabPane.setToolTipTextAt(i, toolTip)
            FPTabPane.setTitleAt(i, null)
            FPTabPane.setTabComponentAt(i, tabButton(i, toolTip, iconForTab))
        }
    }

    def static isModActive(){
        FPTabPane.hasProperty('isModded')? FPTabPane.isModded : false
    }

    static JButton tabButton(Integer num, String toolTip, String iconForTab = null){
        def TPMaction = {e ->
            if ( FPTabPane.selectedIndex==num && !FPTabPane.collapsed ){
                resizeTP(collapsedWidth)
                FPTabPane.collapsed = true
            }else{
                FPTabPane.setSelectedIndex(num)
                if(FPTabPane.tabWidths[num]){
                    resizeTP(FPTabPane.tabWidths[num])
                } else if (FPTabPane.collapsed){
                    resizeTP(FPTabPane.originalWidth)
                } else {
                    FPTabPane.tabWidths[num] = FPTabPane.width
                }
                FPTabPane.collapsed = false
            }
        }
        def icono = iconForTab?menuUtils.getMenuItemIcon('IconAction.' + iconForTab):null
        icono ?= getIcon(num,toolTip)
        JButton btn = swingBuilder.button(
                horizontalAlignment : SwingConstants.LEFT,
                icon                : icono,
                toolTipText         : toolTip,
                margin              : new Insets(0,0,0,0),
                borderPainted       : false,
                opaque              : false,
                actionPerformed     : TPMaction,
        ) as JButton
        return btn
    }

    def static resizeTP(w){
        def prevDim = FPTabPane.getSize()
        FPTabPane.setPreferredSize(new Dimension(w,(int) prevDim.height))
        def parentBox = FPTabPane.parent
        parentBox.revalidate()
        parentBox.repaint()
    }

    def static getIcon(i,t){
        def ico = 'IconAction.TabbedPanelMod/'
        menuUtils.getMenuItemIcon("${ico}${t}")?:menuUtils.getMenuItemIcon("${ico}${t.toLowerCase()}")?: menuUtils.getMenuItemIcon("${ico}${String.format('%02d',i)}")?: menuUtils.getMenuItemIcon(iconos[i])
    }
}
