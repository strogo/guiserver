/*
 * extGUI - GUI framework for Harbour
 * This test demonstrates using of a dialog form, created by Designer
 *
 * Copyright 2018 Alexander S.Kresin <alex@kresin.ru>
 * www - http://www.kresin.ru
 */

FUNCTION Main

   LOCAL cInitString := "", nInitRes

   IF ( nInitRes := eGUI_Init( cInitString ) ) != 0
      ? Iif( nInitRes==1, "No connection...", "Protocol differs" )
      RETURN Nil
   ENDIF

   eGUI_InitMainWindow( 100, 100, 400, 350, "extGUI test" )

   egui_Menu()
      egui_Menu( "File" )
         eGUI_AddMenuItem( "Open form", "openfile" )
         eGUI_AddMenuSeparator()
         eGUI_AddMenuItem( "Exit",,"hwg_EndWindow()" )
      egui_EndMenu()
      egui_Menu( "Help" )
         eGUI_AddMenuItem( "About",, 'hwg_MsgInfo("Dialog form testing","About")' )
      egui_EndMenu()
   egui_EndMenu()

   eGUI_ActivateMainWindow()

   eGUI_Exit()

   RETURN Nil

FUNCTION openfile()

   eGUI_OpenForm( "forms\testget2.xml" )

   RETURN Nil
