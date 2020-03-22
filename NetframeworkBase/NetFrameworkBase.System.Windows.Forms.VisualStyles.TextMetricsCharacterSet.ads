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
package NetFrameworkBase.System.Windows.Forms.VisualStyles.TextMetricsCharacterSet is
   
   type Kind_Clr is new NetFrameworkBase.System.Enum.Kind with null record;
   type Kind_Clr_Ptr is access Kind_Clr;
   type Kind_Clr_Array is array(Natural range<>) of Kind_Clr_Ptr;
   type Kind_Clr_Array_Ptr is access all Kind_Clr_Array;
   
   type Kind is (
      Ansi,
      Default,
      Symbol,
      Mac,
      ShiftJis,
      Hangul,
      Johab,
      Gb2312,
      ChineseBig5,
      Greek,
      Turkish,
      Vietnamese,
      Hebrew,
      Arabic,
      Baltic,
      Russian,
      Thai,
      EastEurope,
      Oem
   );
   
   for Kind use (
      Ansi => 0,
      Default => 1,
      Symbol => 2,
      Mac => 77,
      ShiftJis => 128,
      Hangul => 129,
      Johab => 130,
      Gb2312 => 134,
      ChineseBig5 => 136,
      Greek => 161,
      Turkish => 162,
      Vietnamese => 163,
      Hebrew => 177,
      Arabic => 178,
      Baltic => 186,
      Russian => 204,
      Thai => 222,
      EastEurope => 238,
      Oem => 255
   );
   
   for Kind'Size use 32;
   
   type Kind_Ptr is access Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
   function Instance return NetFrameworkWin32.IType_Ptr;
   
end;