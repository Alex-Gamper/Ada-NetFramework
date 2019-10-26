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
package NetFrameworkBase.System.ConsoleKey is
   
   type Kind_Clr is new NetFrameworkBase.System.Enum.Kind with null record;
   type Kind_Clr_Ptr is access Kind_Clr;
   type Kind_Clr_Array is array(Natural range<>) of Kind_Clr_Ptr;
   type Kind_Clr_Array_Ptr is access all Kind_Clr_Array;
   
   type Kind is (
      Backspace,
      Tab,
      Clear,
      Enter,
      Pause,
      Escape,
      Spacebar,
      PageUp,
      PageDown,
      End_x,
      Home,
      LeftArrow,
      UpArrow,
      RightArrow,
      DownArrow,
      Select_x,
      Print,
      Execute,
      PrintScreen,
      Insert,
      Delete,
      Help,
      D0,
      D1,
      D2,
      D3,
      D4,
      D5,
      D6,
      D7,
      D8,
      D9,
      A,
      B,
      C,
      D,
      E,
      F,
      G,
      H,
      I,
      J,
      K,
      L,
      M,
      N,
      O,
      P,
      Q,
      R,
      S,
      T,
      U,
      V,
      W,
      X,
      Y,
      Z,
      LeftWindows,
      RightWindows,
      Applications,
      Sleep,
      NumPad0,
      NumPad1,
      NumPad2,
      NumPad3,
      NumPad4,
      NumPad5,
      NumPad6,
      NumPad7,
      NumPad8,
      NumPad9,
      Multiply,
      Add,
      Separator,
      Subtract,
      Decimal,
      Divide,
      F1,
      F2,
      F3,
      F4,
      F5,
      F6,
      F7,
      F8,
      F9,
      F10,
      F11,
      F12,
      F13,
      F14,
      F15,
      F16,
      F17,
      F18,
      F19,
      F20,
      F21,
      F22,
      F23,
      F24,
      BrowserBack,
      BrowserForward,
      BrowserRefresh,
      BrowserStop,
      BrowserSearch,
      BrowserFavorites,
      BrowserHome,
      VolumeMute,
      VolumeDown,
      VolumeUp,
      MediaNext,
      MediaPrevious,
      MediaStop,
      MediaPlay,
      LaunchMail,
      LaunchMediaSelect,
      LaunchApp1,
      LaunchApp2,
      Oem1,
      OemPlus,
      OemComma,
      OemMinus,
      OemPeriod,
      Oem2,
      Oem3,
      Oem4,
      Oem5,
      Oem6,
      Oem7,
      Oem8,
      Oem102,
      Process,
      Packet,
      Attention,
      CrSel,
      ExSel,
      EraseEndOfFile,
      Play,
      Zoom,
      NoName,
      Pa1,
      OemClear
   );
   
   for Kind use (
      Backspace => 8,
      Tab => 9,
      Clear => 12,
      Enter => 13,
      Pause => 19,
      Escape => 27,
      Spacebar => 32,
      PageUp => 33,
      PageDown => 34,
      End_x => 35,
      Home => 36,
      LeftArrow => 37,
      UpArrow => 38,
      RightArrow => 39,
      DownArrow => 40,
      Select_x => 41,
      Print => 42,
      Execute => 43,
      PrintScreen => 44,
      Insert => 45,
      Delete => 46,
      Help => 47,
      D0 => 48,
      D1 => 49,
      D2 => 50,
      D3 => 51,
      D4 => 52,
      D5 => 53,
      D6 => 54,
      D7 => 55,
      D8 => 56,
      D9 => 57,
      A => 65,
      B => 66,
      C => 67,
      D => 68,
      E => 69,
      F => 70,
      G => 71,
      H => 72,
      I => 73,
      J => 74,
      K => 75,
      L => 76,
      M => 77,
      N => 78,
      O => 79,
      P => 80,
      Q => 81,
      R => 82,
      S => 83,
      T => 84,
      U => 85,
      V => 86,
      W => 87,
      X => 88,
      Y => 89,
      Z => 90,
      LeftWindows => 91,
      RightWindows => 92,
      Applications => 93,
      Sleep => 95,
      NumPad0 => 96,
      NumPad1 => 97,
      NumPad2 => 98,
      NumPad3 => 99,
      NumPad4 => 100,
      NumPad5 => 101,
      NumPad6 => 102,
      NumPad7 => 103,
      NumPad8 => 104,
      NumPad9 => 105,
      Multiply => 106,
      Add => 107,
      Separator => 108,
      Subtract => 109,
      Decimal => 110,
      Divide => 111,
      F1 => 112,
      F2 => 113,
      F3 => 114,
      F4 => 115,
      F5 => 116,
      F6 => 117,
      F7 => 118,
      F8 => 119,
      F9 => 120,
      F10 => 121,
      F11 => 122,
      F12 => 123,
      F13 => 124,
      F14 => 125,
      F15 => 126,
      F16 => 127,
      F17 => 128,
      F18 => 129,
      F19 => 130,
      F20 => 131,
      F21 => 132,
      F22 => 133,
      F23 => 134,
      F24 => 135,
      BrowserBack => 166,
      BrowserForward => 167,
      BrowserRefresh => 168,
      BrowserStop => 169,
      BrowserSearch => 170,
      BrowserFavorites => 171,
      BrowserHome => 172,
      VolumeMute => 173,
      VolumeDown => 174,
      VolumeUp => 175,
      MediaNext => 176,
      MediaPrevious => 177,
      MediaStop => 178,
      MediaPlay => 179,
      LaunchMail => 180,
      LaunchMediaSelect => 181,
      LaunchApp1 => 182,
      LaunchApp2 => 183,
      Oem1 => 186,
      OemPlus => 187,
      OemComma => 188,
      OemMinus => 189,
      OemPeriod => 190,
      Oem2 => 191,
      Oem3 => 192,
      Oem4 => 219,
      Oem5 => 220,
      Oem6 => 221,
      Oem7 => 222,
      Oem8 => 223,
      Oem102 => 226,
      Process => 229,
      Packet => 231,
      Attention => 246,
      CrSel => 247,
      ExSel => 248,
      EraseEndOfFile => 249,
      Play => 250,
      Zoom => 251,
      NoName => 252,
      Pa1 => 253,
      OemClear => 254
   );
   
   for Kind'Size use 32;
   
   type Kind_Ptr is access Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
private

   This_AssemblyFile : constant Standard.Wide_String := "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\mscorlib.dll";
   This_AssemblyName : constant Standard.Wide_String := "mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089";
   This_TypeName     : constant Standard.Wide_String := "System.ConsoleKey";
   
end;
