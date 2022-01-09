global function banMenuInit


void function banMenuInit()
{
  var mainM = GetMenu("MainMenu")
  var customSettingsMenu = GetMenu("CustomMatchSettingsCategoryMenu")
  
    //AddComboButtonHeader( comboStruct, headerIndex, "#MENU_HEADER_PLAY" )
  
   AddMenu("BanMenu", $"resource/ui/menus/test_window.menu",AddConsoleText,"waaa")
  
  
  ////AddPanel(customSettingsMenu,"mep",AddConsoleText) havent tested yet 

  AddMenuFooterOption(customSettingsMenu, BUTTON_B, " gitButton ","Open Github",OpenLink)
  AddMenuFooterOption(mainM, BUTTON_B, " newManuButton ","Open new Menu",OpenMenuuu)
  print("-------------------------- Ban Init --------------------------")
  
  //AddButtonEventHandler()
  //AddMenuFooterOption(mainM ,  2 , "Nut" ,"Open Github","#OpenLink" )
  
}  

void function AddConsoleText()
{
  print("-------------------------- test --------------------------")
}

void function OpenLink(var woooo )
{
  print("---------------------------------------------------- " + woooo + " ----------------------------------------------------")
  string link = "https://github.com/R2Northstar/NorthstarMods.git"
  LaunchExternalWebBrowser(link,WEBBROWSER_FLAG_FORCEEXTERNAL)
}

// OpenMenu is already in use  // havent looked at OpenMenu function dont know if this is better 
void function OpenMenuuu(var woo)
{
  AdvanceMenu( GetMenu( "BanMenu" ) )
}