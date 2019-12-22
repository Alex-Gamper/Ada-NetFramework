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
package NetFrameworkBase.System.Data.DbType is
   
   type Kind_Clr is new NetFrameworkBase.System.Enum.Kind with null record;
   type Kind_Clr_Ptr is access Kind_Clr;
   type Kind_Clr_Array is array(Natural range<>) of Kind_Clr_Ptr;
   type Kind_Clr_Array_Ptr is access all Kind_Clr_Array;
   
   type Kind is (
      AnsiString,
      Binary,
      Byte,
      Boolean,
      Currency,
      Date,
      DateTime,
      Decimal,
      Double,
      Guid,
      Int16,
      Int32,
      Int64,
      Object,
      SByte,
      Single,
      String,
      Time,
      UInt16,
      UInt32,
      UInt64,
      VarNumeric,
      AnsiStringFixedLength,
      StringFixedLength,
      Xml,
      DateTime2,
      DateTimeOffset
   );
   
   for Kind use (
      AnsiString => 0,
      Binary => 1,
      Byte => 2,
      Boolean => 3,
      Currency => 4,
      Date => 5,
      DateTime => 6,
      Decimal => 7,
      Double => 8,
      Guid => 9,
      Int16 => 10,
      Int32 => 11,
      Int64 => 12,
      Object => 13,
      SByte => 14,
      Single => 15,
      String => 16,
      Time => 17,
      UInt16 => 18,
      UInt32 => 19,
      UInt64 => 20,
      VarNumeric => 21,
      AnsiStringFixedLength => 22,
      StringFixedLength => 23,
      Xml => 25,
      DateTime2 => 26,
      DateTimeOffset => 27
   );
   
   for Kind'Size use 32;
   
   type Kind_Ptr is access Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
   function Instance return NetFrameworkWin32.IType_Ptr;
   
end;
