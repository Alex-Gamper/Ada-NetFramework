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
with NetFrameworkBase.System.Security.Cryptography.Aes;
with NetFrameworkBase.System.Security.Cryptography.CngProvider;
with NetFrameworkBase.System.Security.Cryptography.CngKeyOpenOptions;
with NetFrameworkBase.System.Security.Cryptography.ICryptoTransform;
with NetFrameworkWin32;              use NetFrameworkWin32;
with NetFrameworkAdaRuntime;         use NetFrameworkAdaRuntime;
with Ada.Unchecked_Conversion;
with Interfaces.C;
--------------------------------------------------------------------------------
package body NetFrameworkBase.System.Security.Cryptography.AesCng is
   
   use type Interfaces.C.unsigned_short;
   
   This_AssemblyFile : constant Standard.Wide_String := "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\System.Core.dll";
   This_AssemblyName : constant Standard.Wide_String := "System.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089";
   This_TypeName     : constant Standard.Wide_String := "System.Security.Cryptography.AesCng";
   TypeInstance      : aliased IType_Ptr := null;
   
   function Instance return IType_Ptr is
   begin
      if TypeInstance = null then
         declare
            Hr          : HRESULT := 0;
            Runtime     : RuntimeHost := Instance;
            Assembly    : IAssembly_Ptr := null;
            TypeName    : NetFrameworkBase.BSTR := To_BSTR(This_TypeName);
         begin
            if IsAssemblyLoaded (RunTime, This_AssemblyName) = false then
               Assembly := LoadAssembly(Runtime, This_AssemblyName);
            else
               Assembly := GetAssembly(Runtime, This_AssemblyName);
            end if;
            Hr := Assembly.GetType_2(TypeName, TypeInstance'access);
            SysFreeString(TypeName);
         end;
      end if;
      return TypeInstance;
   end;
   
   function Key
   (
      this : in out AesCng.Kind
   )
   return NetFrameworkBase.Byte_Array is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("Key");
      p_RetVal      : aliased VARIANT;
   
      function GetArray (sa : access NetFrameworkWin32.SAFEARRAY) return NetFrameworkBase.Byte_Array is
         Hr     : NetFrameworkWin32.HRESULT := 0;
         LBound : aliased NetFrameworkWin32.LONG := 0;
         UBound : aliased NetFrameworkWin32.LONG := 0;
         Index  : aliased NetFrameworkWin32.LONG := 0;
         use type Interfaces.C.long;
      begin
         Hr := SafeArrayGetLBound (sa, 1, LBound'access);
         Hr := SafeArrayGetUBound (sa, 1, UBound'access);
         Index := UBound - LBound + 1;
         declare
            RetVal : NetFrameworkBase.Byte_Array(1..integer(Index));
            Value  : aliased NetFrameworkBase.Byte;
            function Convert is new Ada.Unchecked_Conversion (NetFrameworkWin32.Address, PVOID);
         begin
            Index := 0;
            for I in RetVal'range loop
               Hr := SafeArrayGetElement (sa, Index'unchecked_access, Convert (Value'Address));
               RetVal(integer(I)) := Value;
               Index := Index + 1;
            end loop;
            Hr := SafeArrayDestroy (sa);
            return RetVal;
         end;
      end;
   
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(GetProperty)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
   
      p_Target := GetObject (this.m_kind);
      p_RetVal := InvokeMethod (Instance, p_Target, p_MethodName, p_Flags, null, False);
   
      SysFreeString (p_MethodName);
      return GetArray (p_RetVal.field_1.field_1.field_1.parray);
   end;
   
   procedure Key
   (
      this : in out AesCng.Kind;
      value : NetFrameworkBase.Byte_Array
   ) is
      function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
      Hr            : HResult := 0;
      p_Parameters  : aliased LPSAFEARRAY := null;
      p_Bounds      : aliased SAFEARRAYBOUND := (1 , 0);
      p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
      p_Value       : aliased VARIANT;
      p_Value_Ptr   : access VARIANT := p_Value'access;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("Key");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      p0_Parameters : aliased LPSAFEARRAY := null;
      p0_Bounds     : aliased SAFEARRAYBOUND := (value'Length , 0);
      p0_Index      : aliased array(1..1) of aliased LONG := (others => 0);
      p0_Tmp        : aliased NetFrameworkBase.Byte;
      p0_Tmp_Ptr    : access NetFrameworkBase.Byte := p0_Tmp'access;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or 8192;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      declare
         use Interfaces.C;
         function Convert is new Ada.Unchecked_Conversion (NetFrameworkBase.Byte_Ptr, LPVOID);
      begin
         p0_Parameters := SafeArrayCreate (VT_UI1'enum_rep, 1, p0_Bounds'access);
         for i in value'range loop
            p0_Index(1) := Interfaces.C.long(i) - 1;
            p0_Tmp := value(i);
            Hr := SafeArrayPutElement (p0_Parameters, p0_Index (p0_Index'first)'access, Convert (p0_Tmp_Ptr));
         end loop;
         p_Value := To_Variant (p0_Parameters, VT_UI1);
      end;
   
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject (this.m_kind);
      p_RetVal := InvokeMethod2 (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, p_NetRetVal, False);
   
      Hr := SafeArrayDestroy (p0_Parameters);
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
   end;
   
   function KeySize
   (
      this : in out AesCng.Kind
   )
   return NetFrameworkBase.Int32 is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("KeySize");
      p_RetVal      : aliased VARIANT;
      RetVal        : NetFrameworkBase.Int32;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(GetProperty)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
   
      p_Target := GetObject (this.m_kind);
      p_RetVal := InvokeMethod (Instance, p_Target, p_MethodName, p_Flags, null, False);
   
      SysFreeString (p_MethodName);
      RetVal := From_Variant (p_RetVal);
      return RetVal;
   end;
   
   procedure KeySize
   (
      this : in out AesCng.Kind;
      value : NetFrameworkBase.Int32
   ) is
      function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
      Hr            : HResult := 0;
      p_Parameters  : aliased LPSAFEARRAY := null;
      p_Bounds      : aliased SAFEARRAYBOUND := (1 , 0);
      p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
      p_Value       : aliased VARIANT;
      p_Value_Ptr   : access VARIANT := p_Value'access;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("KeySize");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or 8192;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      p_Value := To_Variant(value);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject (this.m_kind);
      p_RetVal := InvokeMethod2 (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, p_NetRetVal, False);
   
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
   end;
   
   function CreateDecryptor
   (
      this : in out AesCng.Kind
   )
   return NetFrameworkBase.System.Security.Cryptography.ICryptoTransform.Kind_Ptr is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("CreateDecryptor");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      RetVal        : NetFrameworkBase.System.Security.Cryptography.ICryptoTransform.Kind_Ptr;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
   
      p_Target := GetObject (this.m_kind);
      p_RetVal := InvokeMethod2 (Instance, p_Target, p_MethodName, p_Flags, null, p_NetRetVal, False);
   
      SysFreeString (p_MethodName);
      RetVal := p_RetVal.field_1.field_1.field_1.punkval;
      return RetVal;
   end;
   
   function CreateDecryptor
   (
      this : in out AesCng.Kind;
      rgbKey : NetFrameworkBase.Byte_Array; 
      rgbIV : NetFrameworkBase.Byte_Array
   )
   return NetFrameworkBase.System.Security.Cryptography.ICryptoTransform.Kind_Ptr is
      function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
      Hr            : HResult := 0;
      p_Parameters  : aliased LPSAFEARRAY := null;
      p_Bounds      : aliased SAFEARRAYBOUND := (2 , 0);
      p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
      p_Value       : aliased VARIANT;
      p_Value_Ptr   : access VARIANT := p_Value'access;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("CreateDecryptor");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      p0_Parameters : aliased LPSAFEARRAY := null;
      p0_Bounds     : aliased SAFEARRAYBOUND := (rgbKey'Length , 0);
      p0_Index      : aliased array(1..1) of aliased LONG := (others => 0);
      p0_Tmp        : aliased NetFrameworkBase.Byte;
      p0_Tmp_Ptr    : access NetFrameworkBase.Byte := p0_Tmp'access;
      p1_Parameters : aliased LPSAFEARRAY := null;
      p1_Bounds     : aliased SAFEARRAYBOUND := (rgbIV'Length , 0);
      p1_Index      : aliased array(1..1) of aliased LONG := (others => 0);
      p1_Tmp        : aliased NetFrameworkBase.Byte;
      p1_Tmp_Ptr    : access NetFrameworkBase.Byte := p1_Tmp'access;
      RetVal        : NetFrameworkBase.System.Security.Cryptography.ICryptoTransform.Kind_Ptr;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      declare
         use Interfaces.C;
         function Convert is new Ada.Unchecked_Conversion (NetFrameworkBase.Byte_Ptr, LPVOID);
      begin
         p0_Parameters := SafeArrayCreate (VT_UI1'enum_rep, 1, p0_Bounds'access);
         for i in rgbKey'range loop
            p0_Index(1) := Interfaces.C.long(i) - 1;
            p0_Tmp := rgbKey(i);
            Hr := SafeArrayPutElement (p0_Parameters, p0_Index (p0_Index'first)'access, Convert (p0_Tmp_Ptr));
         end loop;
         p_Value := To_Variant (p0_Parameters, VT_UI1);
      end;
   
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 1;
      declare
         use Interfaces.C;
         function Convert is new Ada.Unchecked_Conversion (NetFrameworkBase.Byte_Ptr, LPVOID);
      begin
         p1_Parameters := SafeArrayCreate (VT_UI1'enum_rep, 1, p1_Bounds'access);
         for i in rgbIV'range loop
            p1_Index(1) := Interfaces.C.long(i) - 1;
            p1_Tmp := rgbIV(i);
            Hr := SafeArrayPutElement (p1_Parameters, p1_Index (p1_Index'first)'access, Convert (p1_Tmp_Ptr));
         end loop;
         p_Value := To_Variant (p1_Parameters, VT_UI1);
      end;
   
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject(this.m_kind);
      p_RetVal := InvokeMethod2 (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, p_NetRetVal, False);
   
      Hr := SafeArrayDestroy (p0_Parameters);
      Hr := SafeArrayDestroy (p1_Parameters);
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
      RetVal := p_RetVal.field_1.field_1.field_1.punkval;
      return RetVal;
   end;
   
   function CreateEncryptor
   (
      this : in out AesCng.Kind
   )
   return NetFrameworkBase.System.Security.Cryptography.ICryptoTransform.Kind_Ptr is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("CreateEncryptor");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      RetVal        : NetFrameworkBase.System.Security.Cryptography.ICryptoTransform.Kind_Ptr;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
   
      p_Target := GetObject (this.m_kind);
      p_RetVal := InvokeMethod2 (Instance, p_Target, p_MethodName, p_Flags, null, p_NetRetVal, False);
   
      SysFreeString (p_MethodName);
      RetVal := p_RetVal.field_1.field_1.field_1.punkval;
      return RetVal;
   end;
   
   function CreateEncryptor
   (
      this : in out AesCng.Kind;
      rgbKey : NetFrameworkBase.Byte_Array; 
      rgbIV : NetFrameworkBase.Byte_Array
   )
   return NetFrameworkBase.System.Security.Cryptography.ICryptoTransform.Kind_Ptr is
      function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
      Hr            : HResult := 0;
      p_Parameters  : aliased LPSAFEARRAY := null;
      p_Bounds      : aliased SAFEARRAYBOUND := (2 , 0);
      p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
      p_Value       : aliased VARIANT;
      p_Value_Ptr   : access VARIANT := p_Value'access;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("CreateEncryptor");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      p0_Parameters : aliased LPSAFEARRAY := null;
      p0_Bounds     : aliased SAFEARRAYBOUND := (rgbKey'Length , 0);
      p0_Index      : aliased array(1..1) of aliased LONG := (others => 0);
      p0_Tmp        : aliased NetFrameworkBase.Byte;
      p0_Tmp_Ptr    : access NetFrameworkBase.Byte := p0_Tmp'access;
      p1_Parameters : aliased LPSAFEARRAY := null;
      p1_Bounds     : aliased SAFEARRAYBOUND := (rgbIV'Length , 0);
      p1_Index      : aliased array(1..1) of aliased LONG := (others => 0);
      p1_Tmp        : aliased NetFrameworkBase.Byte;
      p1_Tmp_Ptr    : access NetFrameworkBase.Byte := p1_Tmp'access;
      RetVal        : NetFrameworkBase.System.Security.Cryptography.ICryptoTransform.Kind_Ptr;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      declare
         use Interfaces.C;
         function Convert is new Ada.Unchecked_Conversion (NetFrameworkBase.Byte_Ptr, LPVOID);
      begin
         p0_Parameters := SafeArrayCreate (VT_UI1'enum_rep, 1, p0_Bounds'access);
         for i in rgbKey'range loop
            p0_Index(1) := Interfaces.C.long(i) - 1;
            p0_Tmp := rgbKey(i);
            Hr := SafeArrayPutElement (p0_Parameters, p0_Index (p0_Index'first)'access, Convert (p0_Tmp_Ptr));
         end loop;
         p_Value := To_Variant (p0_Parameters, VT_UI1);
      end;
   
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 1;
      declare
         use Interfaces.C;
         function Convert is new Ada.Unchecked_Conversion (NetFrameworkBase.Byte_Ptr, LPVOID);
      begin
         p1_Parameters := SafeArrayCreate (VT_UI1'enum_rep, 1, p1_Bounds'access);
         for i in rgbIV'range loop
            p1_Index(1) := Interfaces.C.long(i) - 1;
            p1_Tmp := rgbIV(i);
            Hr := SafeArrayPutElement (p1_Parameters, p1_Index (p1_Index'first)'access, Convert (p1_Tmp_Ptr));
         end loop;
         p_Value := To_Variant (p1_Parameters, VT_UI1);
      end;
   
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject(this.m_kind);
      p_RetVal := InvokeMethod2 (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, p_NetRetVal, False);
   
      Hr := SafeArrayDestroy (p0_Parameters);
      Hr := SafeArrayDestroy (p1_Parameters);
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
      RetVal := p_RetVal.field_1.field_1.field_1.punkval;
      return RetVal;
   end;
   
   procedure GenerateKey
   (
      this : in out AesCng.Kind
   ) is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("GenerateKey");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
   
      p_Target := GetObject (this.m_kind);
      p_RetVal := InvokeMethod2 (Instance, p_Target, p_MethodName, p_Flags, null, p_NetRetVal, False);
   
      SysFreeString (p_MethodName);
   end;
   
   procedure GenerateIV
   (
      this : in out AesCng.Kind
   ) is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("GenerateIV");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
   
      p_Target := GetObject (this.m_kind);
      p_RetVal := InvokeMethod2 (Instance, p_Target, p_MethodName, p_Flags, null, p_NetRetVal, False);
   
      SysFreeString (p_MethodName);
   end;
   
   function Constructor return NetFrameworkBase.System.Security.Cryptography.AesCng.Kind_Ptr is
   begin
      return RetVal : NetFrameworkBase.System.Security.Cryptography.AesCng.Kind_Ptr := new NetFrameworkBase.System.Security.Cryptography.AesCng.Kind do
          NetFrameworkAdaRuntime.CreateInstance (RetVal.m_Kind, This_AssemblyName, This_TypeName, Instance, NetFrameworkWin32.BindingFlags'(CreateInstance)'Enum_rep, null);
      end return;
   end;
   
   function Constructor
   (
      keyName : NetFrameworkBase.BSTR
   )
   return NetFrameworkBase.System.Security.Cryptography.AesCng.Kind_Ptr is
   begin
      return RetVal : NetFrameworkBase.System.Security.Cryptography.AesCng.Kind_Ptr := new NetFrameworkBase.System.Security.Cryptography.AesCng.Kind do
      declare
         function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
         Hr            : HResult := 0;
         p_Parameters  : aliased LPSAFEARRAY := null;
         p_Bounds      : aliased SAFEARRAYBOUND := (1 , 0);
         p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
         p_Value       : aliased VARIANT;
         p_Value_Ptr   : access VARIANT := p_Value'access;
         p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      begin
         p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
         ------------------------------------------------------------
         p_Index(1) := 0;
         p_Value := To_Variant(keyName);
         Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
         NetFrameworkAdaRuntime.CreateInstance (RetVal.m_Kind, This_AssemblyName, This_TypeName, Instance, NetFrameworkWin32.BindingFlags'(CreateInstance)'Enum_rep, p_Parameters);
         Hr := SafeArrayDestroy(p_Parameters);
      end;
      end return;
   end;
   
   function Constructor
   (
      keyName : NetFrameworkBase.BSTR;
      provider : NetFrameworkBase.System.Security.Cryptography.CngProvider.Kind_Ptr
   )
   return NetFrameworkBase.System.Security.Cryptography.AesCng.Kind_Ptr is
   begin
      return RetVal : NetFrameworkBase.System.Security.Cryptography.AesCng.Kind_Ptr := new NetFrameworkBase.System.Security.Cryptography.AesCng.Kind do
      declare
         function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
         Hr            : HResult := 0;
         p_Parameters  : aliased LPSAFEARRAY := null;
         p_Bounds      : aliased SAFEARRAYBOUND := (2 , 0);
         p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
         p_Value       : aliased VARIANT;
         p_Value_Ptr   : access VARIANT := p_Value'access;
         p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      begin
         p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
         ------------------------------------------------------------
         p_Index(1) := 0;
         p_Value := To_Variant(keyName);
         Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
         ------------------------------------------------------------
         p_Index(1) := 1;
         p_Value := GetObject (provider.m_Kind);
         Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
         NetFrameworkAdaRuntime.CreateInstance (RetVal.m_Kind, This_AssemblyName, This_TypeName, Instance, NetFrameworkWin32.BindingFlags'(CreateInstance)'Enum_rep, p_Parameters);
         Hr := SafeArrayDestroy(p_Parameters);
      end;
      end return;
   end;
   
   function Constructor
   (
      keyName : NetFrameworkBase.BSTR;
      provider : NetFrameworkBase.System.Security.Cryptography.CngProvider.Kind_Ptr;
      openOptions : NetFrameworkBase.System.Security.Cryptography.CngKeyOpenOptions.Kind
   )
   return NetFrameworkBase.System.Security.Cryptography.AesCng.Kind_Ptr is
   begin
      return RetVal : NetFrameworkBase.System.Security.Cryptography.AesCng.Kind_Ptr := new NetFrameworkBase.System.Security.Cryptography.AesCng.Kind do
      declare
         function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
         Hr            : HResult := 0;
         p_Parameters  : aliased LPSAFEARRAY := null;
         p_Bounds      : aliased SAFEARRAYBOUND := (3 , 0);
         p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
         p_Value       : aliased VARIANT;
         p_Value_Ptr   : access VARIANT := p_Value'access;
         p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
         p_openOptionsEnumType : NetFrameworkWin32.IType_Ptr := NetFrameworkBase.System.Security.Cryptography.CngKeyOpenOptions.Instance;
         p_openOptionsEnum : aliased VARIANT := To_Variant (CreateEnum (p_openOptionsEnumType, openOptions'Enum_rep));
      begin
         p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
         ------------------------------------------------------------
         p_Index(1) := 0;
         p_Value := To_Variant(keyName);
         Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
         ------------------------------------------------------------
         p_Index(1) := 1;
         p_Value := GetObject (provider.m_Kind);
         Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
         ------------------------------------------------------------
         p_Index(1) := 2;
         p_Value := p_openOptionsEnum;
         Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
         NetFrameworkAdaRuntime.CreateInstance (RetVal.m_Kind, This_AssemblyName, This_TypeName, Instance, NetFrameworkWin32.BindingFlags'(CreateInstance)'Enum_rep, p_Parameters);
         Hr := SafeArrayDestroy(p_Parameters);
      end;
      end return;
   end;
   
end;