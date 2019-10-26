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
with NetFrameworkWin32;
--------------------------------------------------------------------------------
package NetFrameworkBase is
   
   subtype Int8 is NetFrameworkWin32.Int8;
   subtype Int8_Ptr is NetFrameworkWin32.Int8_Ptr;
   subtype Int8_Array is NetFrameworkWin32.Int8_Array;
   subtype Int8_Array_Ptr is NetFrameworkWin32.Int8_Array_Ptr;
   
   subtype SByte is NetFrameworkWin32.SByte;
   subtype SByte_Ptr is NetFrameworkWin32.SByte_Ptr;
   subtype SByte_Array is NetFrameworkWin32.SByte_Array;
   subtype SByte_Array_Ptr is NetFrameworkWin32.SByte_Array_Ptr;
   
   subtype Int16 is NetFrameworkWin32.Int16;
   subtype Int16_Ptr is NetFrameworkWin32.Int16_Ptr;
   subtype Int16_Array is NetFrameworkWin32.Int16_Array;
   subtype Int16_Array_Ptr is NetFrameworkWin32.Int16_Array_Ptr;
   
   subtype Int32 is NetFrameworkWin32.Int32;
   subtype Int32_Ptr is NetFrameworkWin32.Int32_Ptr;
   subtype Int32_Array is NetFrameworkWin32.Int32_Array;
   subtype Int32_Array_Ptr is NetFrameworkWin32.Int32_Array_Ptr;
   
   subtype Int64 is NetFrameworkWin32.Int64;
   subtype Int64_Ptr is NetFrameworkWin32.Int64_Ptr;
   subtype Int64_Array is NetFrameworkWin32.Int64_Array;
   subtype Int64_Array_Ptr is NetFrameworkWin32.Int64_Array_Ptr;
   
   subtype IntPtr is NetFrameworkWin32.IntPtr;
   subtype IntPtr_Ptr is NetFrameworkWin32.IntPtr_Ptr;
   subtype IntPtr_Array is NetFrameworkWin32.IntPtr_Array;
   subtype IntPtr_Array_Ptr is NetFrameworkWin32.IntPtr_Array_Ptr;
   
   subtype UInt8 is NetFrameworkWin32.UInt8;
   subtype UInt8_Ptr is NetFrameworkWin32.UInt8_Ptr;
   subtype UInt8_Array is NetFrameworkWin32.UInt8_Array;
   subtype UInt8_Array_Ptr is NetFrameworkWin32.UInt8_Array_Ptr;
   
   subtype Byte is NetFrameworkWin32.Byte;
   subtype Byte_Ptr is NetFrameworkWin32.Byte_Ptr;
   subtype Byte_Array is NetFrameworkWin32.Byte_Array;
   subtype Byte_Array_Ptr is NetFrameworkWin32.Byte_Array_Ptr;
   
   subtype UInt16 is NetFrameworkWin32.UInt16;
   subtype UInt16_Ptr is NetFrameworkWin32.UInt16_Ptr;
   subtype UInt16_Array is NetFrameworkWin32.UInt16_Array;
   subtype UInt16_Array_Ptr is NetFrameworkWin32.UInt16_Array_Ptr;
   
   subtype UInt32 is NetFrameworkWin32.UInt32;
   subtype UInt32_Ptr is NetFrameworkWin32.UInt32_Ptr;
   subtype UInt32_Array is NetFrameworkWin32.UInt32_Array;
   subtype UInt32_Array_Ptr is NetFrameworkWin32.UInt32_Array_Ptr;
   
   subtype UInt64 is NetFrameworkWin32.UInt64;
   subtype UInt64_Ptr is NetFrameworkWin32.UInt64_Ptr;
   subtype UInt64_Array is NetFrameworkWin32.UInt64_Array;
   subtype UInt64_Array_Ptr is NetFrameworkWin32.UInt64_Array_Ptr;
   
   subtype UIntPtr is NetFrameworkWin32.UIntPtr;
   subtype UIntPtr_Ptr is NetFrameworkWin32.UIntPtr_Ptr;
   subtype UIntPtr_Array is NetFrameworkWin32.UIntPtr_Array;
   subtype UIntPtr_Array_Ptr is NetFrameworkWin32.UIntPtr_Array_Ptr;
   
   subtype Single is NetFrameworkWin32.Single;
   subtype Single_Ptr is NetFrameworkWin32.Single_Ptr;
   subtype Single_Array is NetFrameworkWin32.Single_Array;
   subtype Single_Array_Ptr is NetFrameworkWin32.Single_Array_Ptr;
   
   subtype Double is NetFrameworkWin32.Double;
   subtype Double_Ptr is NetFrameworkWin32.Double_Ptr;
   subtype Double_Array is NetFrameworkWin32.Double_Array;
   subtype Double_Array_Ptr is NetFrameworkWin32.Double_Array_Ptr;
   
   subtype Date is NetFrameworkWin32.Date;
   subtype Date_Ptr is NetFrameworkWin32.Date_Ptr;
   subtype Date_Array is NetFrameworkWin32.Date_Array;
   subtype Date_Array_Ptr is NetFrameworkWin32.Date_Array_Ptr;
   
   subtype Boolean is NetFrameworkWin32.Boolean;
   subtype Boolean_Ptr is NetFrameworkWin32.Boolean_Ptr;
   subtype Boolean_Array is NetFrameworkWin32.Boolean_Array;
   subtype Boolean_Array_Ptr is NetFrameworkWin32.Boolean_Array_Ptr;
   
   subtype String is NetFrameworkWin32.String;
   subtype String_Ptr is NetFrameworkWin32.String_Ptr;
   subtype String_Array is NetFrameworkWin32.String_Array;
   subtype String_Array_Ptr is NetFrameworkWin32.String_Array_Ptr;
   
   subtype Wide_String is NetFrameworkWin32.Wide_String;
   subtype Wide_String_Ptr is NetFrameworkWin32.Wide_String_Ptr;
   subtype Wide_String_Array is NetFrameworkWin32.Wide_String_Array;
   subtype Wide_String_Array_Ptr is NetFrameworkWin32.Wide_String_Array_Ptr;
   
   subtype BSTR is NetFrameworkWin32.BSTR;
   subtype BSTR_Ptr is NetFrameworkWin32.BSTR_Ptr;
   subtype BSTR_Array is NetFrameworkWin32.BSTR_Array;
   subtype BSTR_Array_Ptr is NetFrameworkWin32.BSTR_Array_Ptr;
   
   subtype Void is NetFrameworkWin32.Void;
   subtype Void_Ptr is NetFrameworkWin32.Void_Ptr;
   subtype Void_Array is NetFrameworkWin32.Void_Array;
   subtype Void_Array_Ptr is NetFrameworkWin32.Void_Array_Ptr;
   
   subtype GUID is NetFrameworkWin32.GUID;
   subtype GUID_Ptr is NetFrameworkWin32.GUID_Ptr;
   subtype GUID_Array is NetFrameworkWin32.GUID_Array;
   
   subtype HResult is NetFrameworkWin32.HResult;
   
end;
