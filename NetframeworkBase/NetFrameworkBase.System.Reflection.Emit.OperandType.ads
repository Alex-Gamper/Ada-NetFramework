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
package NetFrameworkBase.System.Reflection.Emit.OperandType is
   
   type Kind_Clr is new NetFrameworkBase.System.Enum.Kind with null record;
   type Kind_Clr_Ptr is access Kind_Clr;
   type Kind_Clr_Array is array(Natural range<>) of Kind_Clr_Ptr;
   type Kind_Clr_Array_Ptr is access all Kind_Clr_Array;
   
   type Kind is (
      InlineBrTarget,
      InlineField,
      InlineI,
      InlineI8,
      InlineMethod,
      InlineNone,
      InlinePhi,
      InlineR,
      InlineSig,
      InlineString,
      InlineSwitch,
      InlineTok,
      InlineType,
      InlineVar,
      ShortInlineBrTarget,
      ShortInlineI,
      ShortInlineR,
      ShortInlineVar
   );
   
   for Kind use (
      InlineBrTarget => 0,
      InlineField => 1,
      InlineI => 2,
      InlineI8 => 3,
      InlineMethod => 4,
      InlineNone => 5,
      InlinePhi => 6,
      InlineR => 7,
      InlineSig => 9,
      InlineString => 10,
      InlineSwitch => 11,
      InlineTok => 12,
      InlineType => 13,
      InlineVar => 14,
      ShortInlineBrTarget => 15,
      ShortInlineI => 16,
      ShortInlineR => 17,
      ShortInlineVar => 18
   );
   
   for Kind'Size use 32;
   
   type Kind_Ptr is access Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
   function Instance return NetFrameworkWin32.IType_Ptr;
   
end;
