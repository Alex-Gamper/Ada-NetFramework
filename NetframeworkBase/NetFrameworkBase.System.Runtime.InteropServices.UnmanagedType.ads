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
package NetFrameworkBase.System.Runtime.InteropServices.UnmanagedType is
   
   type Kind_Clr is new NetFrameworkBase.System.Enum.Kind with null record;
   type Kind_Clr_Ptr is access Kind_Clr;
   type Kind_Clr_Array is array(Natural range<>) of Kind_Clr_Ptr;
   type Kind_Clr_Array_Ptr is access all Kind_Clr_Array;
   
   type Kind is (
      Bool,
      I1,
      U1,
      I2,
      U2,
      I4,
      U4,
      I8,
      U8,
      R4,
      R8,
      Currency,
      BStr,
      LPStr,
      LPWStr,
      LPTStr,
      ByValTStr,
      IUnknown,
      IDispatch,
      Struct,
      Interface_x,
      SafeArray,
      ByValArray,
      SysInt,
      SysUInt,
      VBByRefStr,
      AnsiBStr,
      TBStr,
      VariantBool,
      FunctionPtr,
      AsAny,
      LPArray,
      LPStruct,
      CustomMarshaler,
      Error,
      IInspectable,
      HString,
      LPUTF8Str
   );
   
   for Kind use (
      Bool => 2,
      I1 => 3,
      U1 => 4,
      I2 => 5,
      U2 => 6,
      I4 => 7,
      U4 => 8,
      I8 => 9,
      U8 => 10,
      R4 => 11,
      R8 => 12,
      Currency => 15,
      BStr => 19,
      LPStr => 20,
      LPWStr => 21,
      LPTStr => 22,
      ByValTStr => 23,
      IUnknown => 25,
      IDispatch => 26,
      Struct => 27,
      Interface_x => 28,
      SafeArray => 29,
      ByValArray => 30,
      SysInt => 31,
      SysUInt => 32,
      VBByRefStr => 34,
      AnsiBStr => 35,
      TBStr => 36,
      VariantBool => 37,
      FunctionPtr => 38,
      AsAny => 40,
      LPArray => 42,
      LPStruct => 43,
      CustomMarshaler => 44,
      Error => 45,
      IInspectable => 46,
      HString => 47,
      LPUTF8Str => 48
   );
   
   for Kind'Size use 32;
   
   type Kind_Ptr is access Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
   function Instance return NetFrameworkWin32.IType_Ptr;
   
end;
