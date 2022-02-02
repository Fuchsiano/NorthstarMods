global function banMenuInit


void function banMenuInit()
{
  var mainM = GetMenu("MainMenu")
  var customSettingsMenu = GetMenu("CustomMatchSettingsCategoryMenu")
  var WeaponSelectMenu = GetMenu("AbilitySelectMenu")

	//datatable/default_pilot_loadouts.rpak //no image
  //datatable/non_loadout_weapons.rpak //no images 
  //datatable/faction_leaders.rpak // bro idk
  //datatable/pilot_weapon_mods_common.rpak 25
  //datatable/burn_meter_rewards.rpak 19
  //datatable/pilot_weapons.rpak // no images
  //datatable/unlocks_weapon_level_pilot.rpak //no images
	//datatable/titan_abilities.rpak // no images 
  //datatable/weapon_skins.rpak  //
  //datatable/spotlight_images.rpak 

  var dataTable = GetDataTable( $"datatable/burn_meter_rewards.rpak")
  for (int i = 0; i <= 19; i++ )
  {
  asset image = GetDataTableAsset( dataTable,i, GetDataTableColumnByName( dataTable, "image" ) )

   print("-------------------------- index num: " + i  +". asset name: "+ image  + "--------------------------")
  }
    //AddComboButtonHeader( comboStruct, headerIndex, "#MENU_HEADER_PLAY" )
  
   AddMenu("BanMenu", $"resource/ui/menus/test_window.menu",AddConsoleText,"waaa")
  
  
  ////AddPanel(customSettingsMenu,"mep",AddConsoleText) havent tested yet 

  AddMenuFooterOption(customSettingsMenu, BUTTON_B, " gitButton ","Open Github",OpenLink)
  
  AddMenuFooterOption(WeaponSelectMenu, BUTTON_A, " getstuff ","getStuff",Printloadout)
  AddMenuFooterOption(WeaponSelectMenu, BUTTON_A, " GetWeapon ","GetWeapon",Printloadout)
  
  AddMenuFooterOption(mainM, BUTTON_B, " newManuButton ","Open new Menu",OpenMenuuu)
  print("-------------------------- Ban Init --------------------------")
  
  //AddButtonEventHandler()
  
}  

void function AddConsoleText()
{
  print("-------------------------- test --------------------------")
}

void function OpenLink(var woooo )
{
  string link = "https://github.com/R2Northstar/NorthstarMods.git"
  LaunchExternalWebBrowser(link,WEBBROWSER_FLAG_FORCEEXTERNAL)
}

// OpenMenu is already in use  // havent looked at OpenMenu function dont know if this is better 
void function OpenMenuuu(var woo)
{
  AdvanceMenu( GetMenu( "BanMenu" ) )
}
void function Printloadout(var woo)
{
  Assert( uiGlobal.editingLoadoutType == "pilot" )

  PilotLoadoutDef loadout = GetCachedPilotLoadout( uiGlobal.editingLoadoutIndex )
  print(  "--------------" + loadout.primaryAttachment)
  

 //var image = GetImage(eItemTypes.PILOT_PRIMARY_ATTACHMENT, loadout.primaryAttachment , "" )
  
  //print(  "--------------" + image)

}
void function GetWeapon(var woo)
{
   PilotLoadoutDef loadout = GetCachedPilotLoadout( uiGlobal.editingLoadoutIndex )
    print(  "--------------" + loadout.primary)

}