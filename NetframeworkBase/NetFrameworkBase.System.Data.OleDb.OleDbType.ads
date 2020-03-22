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
package NetFrameworkBase.System.Data.OleDb.OleDbType is
   
   type Kind_Clr is new NetFrameworkBase.System.Enum.Kind with null record;
   type Kind_Clr_Ptr is access Kind_Clr;
   type Kind_Clr_Array is array(Natural range<>) of Kind_Clr_Ptr;
   type Kind_Clr_Array_Ptr is access all Kind_Clr_Array;
   
   type Kind is (
      Empty,
      SmallInt,
      Integer,
      Single,
      Double,
      Currency,
      Date,
      BSTR,
      IDispatch,
      Error,
      Boolean,
      Variant,
      IUnknown,
      Decimal,
      TinyInt,
      UnsignedTinyInt,
      UnsignedSmallInt,
      UnsignedInt,
      BigInt,
      UnsignedBigInt,
      Filetime,
      Guid,
      Binary,
      Char,
      WChar,
      Numeric,
      DBDate,
      DBTime,
      DBTimeStamp,
      PropVariant,
      VarNumeric,
      VarChar,
      LongVarChar,
      VarWChar,
      LongVarWChar,
      VarBinary,
      LongVarBinary
   );
   
   for Kind use (
      Empty => 0,
      SmallInt => 2,
      Integer => 3,
      Single => 4,
      Double => 5,
      Currency => 6,
      Date => 7,
      BSTR => 8,
      IDispatch => 9,
      Error => 10,
      Boolean => 11,
      Variant => 12,
      IUnknown => 13,
      Decimal => 14,
      TinyInt => 16,
      UnsignedTinyInt => 17,
      UnsignedSmallInt => 18,
      UnsignedInt => 19,
      BigInt => 20,
      UnsignedBigInt => 21,
      Filetime => 64,
      Guid => 72,
      Binary => 128,
      Char => 129,
      WChar => 130,
      Numeric => 131,
      DBDate => 133,
      DBTime => 134,
      DBTimeStamp => 135,
      PropVariant => 138,
      VarNumeric => 139,
      VarChar => 200,
      LongVarChar => 201,
      VarWChar => 202,
      LongVarWChar => 203,
      VarBinary => 204,
      LongVarBinary => 205
   );
   
   for Kind'Size use 32;
   
   type Kind_Ptr is access Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
   function Instance return NetFrameworkWin32.IType_Ptr;
   
end;