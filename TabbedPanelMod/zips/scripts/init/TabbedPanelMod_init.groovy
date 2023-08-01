import org.freeplane.main.addons.AddOnsController

//is addon active?
def isTabbedPanelModAddOnActive = AddOnsController.getController().getInstalledAddOn('tabbedPanelMod')['active']

//user wants to execute command on start up (user preferences)
def runOnStartingFreeplane =  config.getBooleanProperty('tabbedPanelMod_runOnStartingFreeplane',false)

//if both true, then it executes the script
if(isTabbedPanelModAddOnActive && runOnStartingFreeplane){
        menuUtils.executeMenuItems(['addons.tabbedPanelMod.TabbedPanelMod_on_single_node'])
}
