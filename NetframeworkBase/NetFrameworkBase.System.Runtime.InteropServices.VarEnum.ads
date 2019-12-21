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
package NetFrameworkBase.System.Runtime.InteropServices.VarEnum is
   
   type Kind_Clr is new NetFrameworkBase.System.Enum.Kind with null record;
   type Kind_Clr_Ptr is access Kind_Clr;
   type Kind_Clr_Array is array(Natural range<>) of Kind_Clr_Ptr;
   type Kind_Clr_Array_Ptr is access all Kind_Clr_Array;
   
   type Kind is (
      VT_EMPTY,
      VT_NULL,
      VT_I2,
      VT_I4,
      VT_R4,
      VT_R8,
      VT_CY,
      VT_DATE,
      VT_BSTR,
      VT_DISPATCH,
      VT_ERROR,
      VT_BOOL,
      VT_VARIANT,
      VT_UNKNOWN,
      VT_DECIMAL,
      VT_I1,
      VT_UI1,
      VT_UI2,
      VT_UI4,
      VT_I8,
      VT_UI8,
      VT_INT,
      VT_UINT,
      VT_VOID,
      VT_HRESULT,
      VT_PTR,
      VT_SAFEARRAY,
      VT_CARRAY,
      VT_USERDEFINED,
      VT_LPSTR,
      VT_LPWSTR,
      VT_RECORD,
      VT_FILETIME,
      VT_BLOB,
      VT_STREAM,
      VT_STORAGE,
      VT_STREAMED_OBJECT,
      VT_STORED_OBJECT,
      VT_BLOB_OBJECT,
      VT_CF,
      VT_CLSID,
      VT_VECTOR,
      VT_ARRAY,
      VT_BYREF
   );
   
   for Kind use (
      VT_EMPTY => 0,
      VT_NULL => 1,
      VT_I2 => 2,
      VT_I4 => 3,
      VT_R4 => 4,
      VT_R8 => 5,
      VT_CY => 6,
      VT_DATE => 7,
      VT_BSTR => 8,
      VT_DISPATCH => 9,
      VT_ERROR => 10,
      VT_BOOL => 11,
      VT_VARIANT => 12,
      VT_UNKNOWN => 13,
      VT_DECIMAL => 14,
      VT_I1 => 16,
      VT_UI1 => 17,
      VT_UI2 => 18,
      VT_UI4 => 19,
      VT_I8 => 20,
      VT_UI8 => 21,
      VT_INT => 22,
      VT_UINT => 23,
      VT_VOID => 24,
      VT_HRESULT => 25,
      VT_PTR => 26,
      VT_SAFEARRAY => 27,
      VT_CARRAY => 28,
      VT_USERDEFINED => 29,
      VT_LPSTR => 30,
      VT_LPWSTR => 31,
      VT_RECORD => 36,
      VT_FILETIME => 64,
      VT_BLOB => 65,
      VT_STREAM => 66,
      VT_STORAGE => 67,
      VT_STREAMED_OBJECT => 68,
      VT_STORED_OBJECT => 69,
      VT_BLOB_OBJECT => 70,
      VT_CF => 71,
      VT_CLSID => 72,
      VT_VECTOR => 4096,
      VT_ARRAY => 8192,
      VT_BYREF => 16384
   );
   
   for Kind'Size use 32;
   
   type Kind_Ptr is access Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
   function Instance return NetFrameworkWin32.IType_Ptr;
   
end;