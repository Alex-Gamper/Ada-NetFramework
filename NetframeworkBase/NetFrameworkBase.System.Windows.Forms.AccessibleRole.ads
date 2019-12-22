--------------------------------------------------------------------------------
-- <auto-generated>                                                           --
--     This code was generated by a tool.                                     --
--                                                                            --
--     Changes to this file may cause incorrect behavior and will be lost if  --
--     the code is regenerated.                                               --
-- </auto-generated>                                                          --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--                                                                            --
--    Copyright(c) 2019 Alexander Gamper, All Rights Reserved.                --
--                                                                            --
--    Ada-NetFramework                                                        --
--    Version   : 1.0.0.0                                                     --
--                                                                            --
-- This program is free software: you can redistribute it and / or modify     --
-- it under the terms of the GNU Lesser General Public License as published by--
-- the Free Software Foundation, either version 3 of the License, or          --
-- (at your option) any later version.                                        --
--                                                                            --
-- This program is distributed in the hope that it will be useful,            --
-- but WITHOUT ANY WARRANTY; without even the implied warranty of             --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the               --
-- GNU Lesser General Public License for more details.                        --
--                                                                            --
-- You should have received a copy of the GNU Lesser General Public License   --
-- along with this program.If not, see http://www.gnu.org/licenses            --
--                                                                            --
--------------------------------------------------------------------------------
with NetFrameworkBase.System.Enum;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.AccessibleRole is
   
   type Kind_Clr is new NetFrameworkBase.System.Enum.Kind with null record;
   type Kind_Clr_Ptr is access Kind_Clr;
   type Kind_Clr_Array is array(Natural range<>) of Kind_Clr_Ptr;
   type Kind_Clr_Array_Ptr is access all Kind_Clr_Array;
   
   type Kind is (
      Default,
      None,
      TitleBar,
      MenuBar,
      ScrollBar,
      Grip,
      Sound,
      Cursor,
      Caret,
      Alert,
      Window,
      Client,
      MenuPopup,
      MenuItem,
      ToolTip,
      Application,
      Document,
      Pane,
      Chart,
      Dialog,
      Border,
      Grouping,
      Separator,
      ToolBar,
      StatusBar,
      Table,
      ColumnHeader,
      RowHeader,
      Column,
      Row,
      Cell,
      Link,
      HelpBalloon,
      Character,
      List,
      ListItem,
      Outline,
      OutlineItem,
      PageTab,
      PropertyPage,
      Indicator,
      Graphic,
      StaticText,
      Text,
      PushButton,
      CheckButton,
      RadioButton,
      ComboBox,
      DropList,
      ProgressBar,
      Dial,
      HotkeyField,
      Slider,
      SpinButton,
      Diagram,
      Animation,
      Equation,
      ButtonDropDown,
      ButtonMenu,
      ButtonDropDownGrid,
      WhiteSpace,
      PageTabList,
      Clock,
      SplitButton,
      IpAddress,
      OutlineButton
   );
   
   for Kind use (
      Default => -1,
      None => 0,
      TitleBar => 1,
      MenuBar => 2,
      ScrollBar => 3,
      Grip => 4,
      Sound => 5,
      Cursor => 6,
      Caret => 7,
      Alert => 8,
      Window => 9,
      Client => 10,
      MenuPopup => 11,
      MenuItem => 12,
      ToolTip => 13,
      Application => 14,
      Document => 15,
      Pane => 16,
      Chart => 17,
      Dialog => 18,
      Border => 19,
      Grouping => 20,
      Separator => 21,
      ToolBar => 22,
      StatusBar => 23,
      Table => 24,
      ColumnHeader => 25,
      RowHeader => 26,
      Column => 27,
      Row => 28,
      Cell => 29,
      Link => 30,
      HelpBalloon => 31,
      Character => 32,
      List => 33,
      ListItem => 34,
      Outline => 35,
      OutlineItem => 36,
      PageTab => 37,
      PropertyPage => 38,
      Indicator => 39,
      Graphic => 40,
      StaticText => 41,
      Text => 42,
      PushButton => 43,
      CheckButton => 44,
      RadioButton => 45,
      ComboBox => 46,
      DropList => 47,
      ProgressBar => 48,
      Dial => 49,
      HotkeyField => 50,
      Slider => 51,
      SpinButton => 52,
      Diagram => 53,
      Animation => 54,
      Equation => 55,
      ButtonDropDown => 56,
      ButtonMenu => 57,
      ButtonDropDownGrid => 58,
      WhiteSpace => 59,
      PageTabList => 60,
      Clock => 61,
      SplitButton => 62,
      IpAddress => 63,
      OutlineButton => 64
   );
   
   for Kind'Size use 32;
   
   type Kind_Ptr is access Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
   function Instance return NetFrameworkWin32.IType_Ptr;
   
end;
