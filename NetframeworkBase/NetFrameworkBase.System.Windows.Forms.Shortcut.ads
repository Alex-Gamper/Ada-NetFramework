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
package NetFrameworkBase.System.Windows.Forms.Shortcut is
   
   type Kind_Clr is new NetFrameworkBase.System.Enum.Kind with null record;
   type Kind_Clr_Ptr is access Kind_Clr;
   type Kind_Clr_Array is array(Natural range<>) of Kind_Clr_Ptr;
   type Kind_Clr_Array_Ptr is access all Kind_Clr_Array;
   
   type Kind is (
      None,
      Ins,
      Del,
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
      ShiftIns,
      ShiftDel,
      ShiftF1,
      ShiftF2,
      ShiftF3,
      ShiftF4,
      ShiftF5,
      ShiftF6,
      ShiftF7,
      ShiftF8,
      ShiftF9,
      ShiftF10,
      ShiftF11,
      ShiftF12,
      CtrlIns,
      CtrlDel,
      Ctrl0,
      Ctrl1,
      Ctrl2,
      Ctrl3,
      Ctrl4,
      Ctrl5,
      Ctrl6,
      Ctrl7,
      Ctrl8,
      Ctrl9,
      CtrlA,
      CtrlB,
      CtrlC,
      CtrlD,
      CtrlE,
      CtrlF,
      CtrlG,
      CtrlH,
      CtrlI,
      CtrlJ,
      CtrlK,
      CtrlL,
      CtrlM,
      CtrlN,
      CtrlO,
      CtrlP,
      CtrlQ,
      CtrlR,
      CtrlS,
      CtrlT,
      CtrlU,
      CtrlV,
      CtrlW,
      CtrlX,
      CtrlY,
      CtrlZ,
      CtrlF1,
      CtrlF2,
      CtrlF3,
      CtrlF4,
      CtrlF5,
      CtrlF6,
      CtrlF7,
      CtrlF8,
      CtrlF9,
      CtrlF10,
      CtrlF11,
      CtrlF12,
      CtrlShift0,
      CtrlShift1,
      CtrlShift2,
      CtrlShift3,
      CtrlShift4,
      CtrlShift5,
      CtrlShift6,
      CtrlShift7,
      CtrlShift8,
      CtrlShift9,
      CtrlShiftA,
      CtrlShiftB,
      CtrlShiftC,
      CtrlShiftD,
      CtrlShiftE,
      CtrlShiftF,
      CtrlShiftG,
      CtrlShiftH,
      CtrlShiftI,
      CtrlShiftJ,
      CtrlShiftK,
      CtrlShiftL,
      CtrlShiftM,
      CtrlShiftN,
      CtrlShiftO,
      CtrlShiftP,
      CtrlShiftQ,
      CtrlShiftR,
      CtrlShiftS,
      CtrlShiftT,
      CtrlShiftU,
      CtrlShiftV,
      CtrlShiftW,
      CtrlShiftX,
      CtrlShiftY,
      CtrlShiftZ,
      CtrlShiftF1,
      CtrlShiftF2,
      CtrlShiftF3,
      CtrlShiftF4,
      CtrlShiftF5,
      CtrlShiftF6,
      CtrlShiftF7,
      CtrlShiftF8,
      CtrlShiftF9,
      CtrlShiftF10,
      CtrlShiftF11,
      CtrlShiftF12,
      AltBksp,
      AltLeftArrow,
      AltUpArrow,
      AltRightArrow,
      AltDownArrow,
      Alt0,
      Alt1,
      Alt2,
      Alt3,
      Alt4,
      Alt5,
      Alt6,
      Alt7,
      Alt8,
      Alt9,
      AltF1,
      AltF2,
      AltF3,
      AltF4,
      AltF5,
      AltF6,
      AltF7,
      AltF8,
      AltF9,
      AltF10,
      AltF11,
      AltF12
   );
   
   for Kind use (
      None => 0,
      Ins => 45,
      Del => 46,
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
      ShiftIns => 65581,
      ShiftDel => 65582,
      ShiftF1 => 65648,
      ShiftF2 => 65649,
      ShiftF3 => 65650,
      ShiftF4 => 65651,
      ShiftF5 => 65652,
      ShiftF6 => 65653,
      ShiftF7 => 65654,
      ShiftF8 => 65655,
      ShiftF9 => 65656,
      ShiftF10 => 65657,
      ShiftF11 => 65658,
      ShiftF12 => 65659,
      CtrlIns => 131117,
      CtrlDel => 131118,
      Ctrl0 => 131120,
      Ctrl1 => 131121,
      Ctrl2 => 131122,
      Ctrl3 => 131123,
      Ctrl4 => 131124,
      Ctrl5 => 131125,
      Ctrl6 => 131126,
      Ctrl7 => 131127,
      Ctrl8 => 131128,
      Ctrl9 => 131129,
      CtrlA => 131137,
      CtrlB => 131138,
      CtrlC => 131139,
      CtrlD => 131140,
      CtrlE => 131141,
      CtrlF => 131142,
      CtrlG => 131143,
      CtrlH => 131144,
      CtrlI => 131145,
      CtrlJ => 131146,
      CtrlK => 131147,
      CtrlL => 131148,
      CtrlM => 131149,
      CtrlN => 131150,
      CtrlO => 131151,
      CtrlP => 131152,
      CtrlQ => 131153,
      CtrlR => 131154,
      CtrlS => 131155,
      CtrlT => 131156,
      CtrlU => 131157,
      CtrlV => 131158,
      CtrlW => 131159,
      CtrlX => 131160,
      CtrlY => 131161,
      CtrlZ => 131162,
      CtrlF1 => 131184,
      CtrlF2 => 131185,
      CtrlF3 => 131186,
      CtrlF4 => 131187,
      CtrlF5 => 131188,
      CtrlF6 => 131189,
      CtrlF7 => 131190,
      CtrlF8 => 131191,
      CtrlF9 => 131192,
      CtrlF10 => 131193,
      CtrlF11 => 131194,
      CtrlF12 => 131195,
      CtrlShift0 => 196656,
      CtrlShift1 => 196657,
      CtrlShift2 => 196658,
      CtrlShift3 => 196659,
      CtrlShift4 => 196660,
      CtrlShift5 => 196661,
      CtrlShift6 => 196662,
      CtrlShift7 => 196663,
      CtrlShift8 => 196664,
      CtrlShift9 => 196665,
      CtrlShiftA => 196673,
      CtrlShiftB => 196674,
      CtrlShiftC => 196675,
      CtrlShiftD => 196676,
      CtrlShiftE => 196677,
      CtrlShiftF => 196678,
      CtrlShiftG => 196679,
      CtrlShiftH => 196680,
      CtrlShiftI => 196681,
      CtrlShiftJ => 196682,
      CtrlShiftK => 196683,
      CtrlShiftL => 196684,
      CtrlShiftM => 196685,
      CtrlShiftN => 196686,
      CtrlShiftO => 196687,
      CtrlShiftP => 196688,
      CtrlShiftQ => 196689,
      CtrlShiftR => 196690,
      CtrlShiftS => 196691,
      CtrlShiftT => 196692,
      CtrlShiftU => 196693,
      CtrlShiftV => 196694,
      CtrlShiftW => 196695,
      CtrlShiftX => 196696,
      CtrlShiftY => 196697,
      CtrlShiftZ => 196698,
      CtrlShiftF1 => 196720,
      CtrlShiftF2 => 196721,
      CtrlShiftF3 => 196722,
      CtrlShiftF4 => 196723,
      CtrlShiftF5 => 196724,
      CtrlShiftF6 => 196725,
      CtrlShiftF7 => 196726,
      CtrlShiftF8 => 196727,
      CtrlShiftF9 => 196728,
      CtrlShiftF10 => 196729,
      CtrlShiftF11 => 196730,
      CtrlShiftF12 => 196731,
      AltBksp => 262152,
      AltLeftArrow => 262181,
      AltUpArrow => 262182,
      AltRightArrow => 262183,
      AltDownArrow => 262184,
      Alt0 => 262192,
      Alt1 => 262193,
      Alt2 => 262194,
      Alt3 => 262195,
      Alt4 => 262196,
      Alt5 => 262197,
      Alt6 => 262198,
      Alt7 => 262199,
      Alt8 => 262200,
      Alt9 => 262201,
      AltF1 => 262256,
      AltF2 => 262257,
      AltF3 => 262258,
      AltF4 => 262259,
      AltF5 => 262260,
      AltF6 => 262261,
      AltF7 => 262262,
      AltF8 => 262263,
      AltF9 => 262264,
      AltF10 => 262265,
      AltF11 => 262266,
      AltF12 => 262267
   );
   
   for Kind'Size use 32;
   
   type Kind_Ptr is access Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
   function Instance return NetFrameworkWin32.IType_Ptr;
   
end;