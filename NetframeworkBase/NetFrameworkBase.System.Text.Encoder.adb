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
with NetFrameworkBase.System.Object;
with NetFrameworkBase.System.Text.EncoderFallback;
with NetFrameworkBase.System.Text.EncoderFallbackBuffer;
with NetFrameworkWin32;              use NetFrameworkWin32;
with NetFrameworkAdaRuntime;         use NetFrameworkAdaRuntime;
with Ada.Unchecked_Conversion;
with Interfaces.C;
--------------------------------------------------------------------------------
package body NetFrameworkBase.System.Text.Encoder is
   
   use type Interfaces.C.unsigned_short;
   
   This_AssemblyFile : constant Standard.Wide_String := "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\mscorlib.dll";
   This_AssemblyName : constant Standard.Wide_String := "mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089";
   This_TypeName     : constant Standard.Wide_String := "System.Text.Encoder";
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
   
   function Fallback
   (
      this : in out Encoder.Kind
   )
   return NetFrameworkBase.System.Text.EncoderFallback.Kind_Ptr is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("Fallback");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      RetVal        : NetFrameworkBase.System.Text.EncoderFallback.Kind_Ptr := new NetFrameworkBase.System.Text.EncoderFallback.Kind;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(GetProperty)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
   
      p_Target := GetObject (this.m_kind);
      p_RetVal := InvokeMethod (Instance, p_Target, p_MethodName, p_Flags, null, p_NetRetVal);
   
      SetObject (RetVal.m_Kind, p_RetVal);
      SetObject (RetVal.m_Kind, p_NetRetVal);
      SysFreeString (p_MethodName);
      return RetVal;
   end;
   
   procedure Fallback
   (
      this : in out Encoder.Kind;
      value : NetFrameworkBase.System.Text.EncoderFallback.Kind_Ptr
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
      p_MethodName  : BSTR := To_BSTR("Fallback");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or 8192;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      p_Value := GetObject (value.m_Kind);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject (this.m_kind);
      p_RetVal := InvokeMethod (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, p_NetRetVal);
   
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
   end;
   
   function FallbackBuffer
   (
      this : in out Encoder.Kind
   )
   return NetFrameworkBase.System.Text.EncoderFallbackBuffer.Kind_Ptr is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("FallbackBuffer");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      RetVal        : NetFrameworkBase.System.Text.EncoderFallbackBuffer.Kind_Ptr := new NetFrameworkBase.System.Text.EncoderFallbackBuffer.Kind;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(GetProperty)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
   
      p_Target := GetObject (this.m_kind);
      p_RetVal := InvokeMethod (Instance, p_Target, p_MethodName, p_Flags, null, p_NetRetVal);
   
      SetObject (RetVal.m_Kind, p_RetVal);
      SetObject (RetVal.m_Kind, p_NetRetVal);
      SysFreeString (p_MethodName);
      return RetVal;
   end;
   
   procedure Reset
   (
      this : in out Encoder.Kind
   ) is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("Reset");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
   
      p_Target := GetObject (this.m_kind);
      p_RetVal := InvokeMethod (Instance, p_Target, p_MethodName, p_Flags, null, p_NetRetVal);
   
      SysFreeString (p_MethodName);
   end;
   
   function GetByteCount
   (
      this : in out Encoder.Kind;
      chars : NetFrameworkBase.Wide_Char_Ptr; 
      count : NetFrameworkBase.Int32; 
      flush : NetFrameworkBase.Boolean
   )
   return NetFrameworkBase.Int32 is
      function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
      Hr            : HResult := 0;
      p_Parameters  : aliased LPSAFEARRAY := null;
      p_Bounds      : aliased SAFEARRAYBOUND := (3 , 0);
      p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
      p_Value       : aliased VARIANT;
      p_Value_Ptr   : access VARIANT := p_Value'access;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("GetByteCount");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      RetVal        : NetFrameworkBase.Int32;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      -- fixme parameter type := [builtin] [in out] System.Char*
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 1;
      p_Value := To_Variant(count);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 2;
      p_Value := To_Variant(flush);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject(this.m_kind);
      p_RetVal := InvokeMethod (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, p_NetRetVal);
   
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
      RetVal := From_Variant (p_RetVal);
      return RetVal;
   end;
   
   function GetByteCount
   (
      this : in out Encoder.Kind;
      chars : NetFrameworkBase.Wide_Char_Array; 
      index : NetFrameworkBase.Int32; 
      count : NetFrameworkBase.Int32; 
      flush : NetFrameworkBase.Boolean
   )
   return NetFrameworkBase.Int32 is
      function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
      Hr            : HResult := 0;
      p_Parameters  : aliased LPSAFEARRAY := null;
      p_Bounds      : aliased SAFEARRAYBOUND := (4 , 0);
      p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
      p_Value       : aliased VARIANT;
      p_Value_Ptr   : access VARIANT := p_Value'access;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("GetByteCount");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      p0_Parameters : aliased LPSAFEARRAY := null;
      p0_Bounds     : aliased SAFEARRAYBOUND := (chars'Length , 0);
      p0_Index      : aliased array(1..1) of aliased LONG := (others => 0);
      p0_Tmp        : aliased NetFrameworkBase.Wide_Char;
      p0_Tmp_Ptr    : access NetFrameworkBase.Wide_Char := p0_Tmp'access;
      RetVal        : NetFrameworkBase.Int32;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      declare
         use Interfaces.C;
         function Convert is new Ada.Unchecked_Conversion (NetFrameworkBase.Wide_Char_Ptr, LPVOID);
      begin
         p0_Parameters := SafeArrayCreate (VT_UI2'enum_rep, 1, p0_Bounds'access);
         for i in chars'range loop
            p0_Index(1) := Interfaces.C.long(i) - 1;
            p0_Tmp := chars(i);
            Hr := SafeArrayPutElement (p0_Parameters, p0_Index (p0_Index'first)'access, Convert (p0_Tmp_Ptr));
         end loop;
         p_Value := To_Variant (p0_Parameters, VT_UI2);
      end;
   
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 1;
      p_Value := To_Variant(index);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 2;
      p_Value := To_Variant(count);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 3;
      p_Value := To_Variant(flush);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject(this.m_kind);
      p_RetVal := InvokeMethod (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, p_NetRetVal);
   
      Hr := SafeArrayDestroy (p0_Parameters);
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
      RetVal := From_Variant (p_RetVal);
      return RetVal;
   end;
   
   function GetBytes
   (
      this : in out Encoder.Kind;
      chars : NetFrameworkBase.Wide_Char_Array; 
      charIndex : NetFrameworkBase.Int32; 
      charCount : NetFrameworkBase.Int32; 
      bytes : NetFrameworkBase.Byte_Array; 
      byteIndex : NetFrameworkBase.Int32; 
      flush : NetFrameworkBase.Boolean
   )
   return NetFrameworkBase.Int32 is
      function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
      Hr            : HResult := 0;
      p_Parameters  : aliased LPSAFEARRAY := null;
      p_Bounds      : aliased SAFEARRAYBOUND := (6 , 0);
      p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
      p_Value       : aliased VARIANT;
      p_Value_Ptr   : access VARIANT := p_Value'access;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("GetBytes");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      p0_Parameters : aliased LPSAFEARRAY := null;
      p0_Bounds     : aliased SAFEARRAYBOUND := (chars'Length , 0);
      p0_Index      : aliased array(1..1) of aliased LONG := (others => 0);
      p0_Tmp        : aliased NetFrameworkBase.Wide_Char;
      p0_Tmp_Ptr    : access NetFrameworkBase.Wide_Char := p0_Tmp'access;
      p3_Parameters : aliased LPSAFEARRAY := null;
      p3_Bounds     : aliased SAFEARRAYBOUND := (bytes'Length , 0);
      p3_Index      : aliased array(1..1) of aliased LONG := (others => 0);
      p3_Tmp        : aliased NetFrameworkBase.Byte;
      p3_Tmp_Ptr    : access NetFrameworkBase.Byte := p3_Tmp'access;
      RetVal        : NetFrameworkBase.Int32;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      declare
         use Interfaces.C;
         function Convert is new Ada.Unchecked_Conversion (NetFrameworkBase.Wide_Char_Ptr, LPVOID);
      begin
         p0_Parameters := SafeArrayCreate (VT_UI2'enum_rep, 1, p0_Bounds'access);
         for i in chars'range loop
            p0_Index(1) := Interfaces.C.long(i) - 1;
            p0_Tmp := chars(i);
            Hr := SafeArrayPutElement (p0_Parameters, p0_Index (p0_Index'first)'access, Convert (p0_Tmp_Ptr));
         end loop;
         p_Value := To_Variant (p0_Parameters, VT_UI2);
      end;
   
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 1;
      p_Value := To_Variant(charIndex);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 2;
      p_Value := To_Variant(charCount);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 3;
      declare
         use Interfaces.C;
         function Convert is new Ada.Unchecked_Conversion (NetFrameworkBase.Byte_Ptr, LPVOID);
      begin
         p3_Parameters := SafeArrayCreate (VT_UI1'enum_rep, 1, p3_Bounds'access);
         for i in bytes'range loop
            p3_Index(1) := Interfaces.C.long(i) - 1;
            p3_Tmp := bytes(i);
            Hr := SafeArrayPutElement (p3_Parameters, p3_Index (p3_Index'first)'access, Convert (p3_Tmp_Ptr));
         end loop;
         p_Value := To_Variant (p3_Parameters, VT_UI1);
      end;
   
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 4;
      p_Value := To_Variant(byteIndex);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 5;
      p_Value := To_Variant(flush);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject(this.m_kind);
      p_RetVal := InvokeMethod (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, p_NetRetVal);
   
      Hr := SafeArrayDestroy (p0_Parameters);
      Hr := SafeArrayDestroy (p3_Parameters);
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
      RetVal := From_Variant (p_RetVal);
      return RetVal;
   end;
   
   function GetBytes
   (
      this : in out Encoder.Kind;
      chars : NetFrameworkBase.Wide_Char_Ptr; 
      charCount : NetFrameworkBase.Int32; 
      bytes : NetFrameworkBase.Byte_Ptr; 
      byteCount : NetFrameworkBase.Int32; 
      flush : NetFrameworkBase.Boolean
   )
   return NetFrameworkBase.Int32 is
      function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
      Hr            : HResult := 0;
      p_Parameters  : aliased LPSAFEARRAY := null;
      p_Bounds      : aliased SAFEARRAYBOUND := (5 , 0);
      p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
      p_Value       : aliased VARIANT;
      p_Value_Ptr   : access VARIANT := p_Value'access;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("GetBytes");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      RetVal        : NetFrameworkBase.Int32;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      -- fixme parameter type := [builtin] [in out] System.Char*
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 1;
      p_Value := To_Variant(charCount);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 2;
      -- fixme parameter type := [builtin] [in out] System.Byte*
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 3;
      p_Value := To_Variant(byteCount);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 4;
      p_Value := To_Variant(flush);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject(this.m_kind);
      p_RetVal := InvokeMethod (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, p_NetRetVal);
   
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
      RetVal := From_Variant (p_RetVal);
      return RetVal;
   end;
   
   procedure Convert
   (
      this : in out Encoder.Kind;
      chars : NetFrameworkBase.Wide_Char_Array; 
      charIndex : NetFrameworkBase.Int32; 
      charCount : NetFrameworkBase.Int32; 
      bytes : NetFrameworkBase.Byte_Array; 
      byteIndex : NetFrameworkBase.Int32; 
      byteCount : NetFrameworkBase.Int32; 
      flush : NetFrameworkBase.Boolean; 
      charsUsed : out NetFrameworkBase.Int32; 
      bytesUsed : out NetFrameworkBase.Int32; 
      completed : out NetFrameworkBase.Boolean
   ) is
      function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
      Hr            : HResult := 0;
      p_Parameters  : aliased LPSAFEARRAY := null;
      p_Bounds      : aliased SAFEARRAYBOUND := (10 , 0);
      p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
      p_Value       : aliased VARIANT;
      p_Value_Ptr   : access VARIANT := p_Value'access;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("Convert");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      p0_Parameters : aliased LPSAFEARRAY := null;
      p0_Bounds     : aliased SAFEARRAYBOUND := (chars'Length , 0);
      p0_Index      : aliased array(1..1) of aliased LONG := (others => 0);
      p0_Tmp        : aliased NetFrameworkBase.Wide_Char;
      p0_Tmp_Ptr    : access NetFrameworkBase.Wide_Char := p0_Tmp'access;
      p3_Parameters : aliased LPSAFEARRAY := null;
      p3_Bounds     : aliased SAFEARRAYBOUND := (bytes'Length , 0);
      p3_Index      : aliased array(1..1) of aliased LONG := (others => 0);
      p3_Tmp        : aliased NetFrameworkBase.Byte;
      p3_Tmp_Ptr    : access NetFrameworkBase.Byte := p3_Tmp'access;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      declare
         use Interfaces.C;
         function Convert is new Ada.Unchecked_Conversion (NetFrameworkBase.Wide_Char_Ptr, LPVOID);
      begin
         p0_Parameters := SafeArrayCreate (VT_UI2'enum_rep, 1, p0_Bounds'access);
         for i in chars'range loop
            p0_Index(1) := Interfaces.C.long(i) - 1;
            p0_Tmp := chars(i);
            Hr := SafeArrayPutElement (p0_Parameters, p0_Index (p0_Index'first)'access, Convert (p0_Tmp_Ptr));
         end loop;
         p_Value := To_Variant (p0_Parameters, VT_UI2);
      end;
   
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 1;
      p_Value := To_Variant(charIndex);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 2;
      p_Value := To_Variant(charCount);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 3;
      declare
         use Interfaces.C;
         function Convert is new Ada.Unchecked_Conversion (NetFrameworkBase.Byte_Ptr, LPVOID);
      begin
         p3_Parameters := SafeArrayCreate (VT_UI1'enum_rep, 1, p3_Bounds'access);
         for i in bytes'range loop
            p3_Index(1) := Interfaces.C.long(i) - 1;
            p3_Tmp := bytes(i);
            Hr := SafeArrayPutElement (p3_Parameters, p3_Index (p3_Index'first)'access, Convert (p3_Tmp_Ptr));
         end loop;
         p_Value := To_Variant (p3_Parameters, VT_UI1);
      end;
   
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 4;
      p_Value := To_Variant(byteIndex);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 5;
      p_Value := To_Variant(byteCount);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 6;
      p_Value := To_Variant(flush);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 7;
      VariantInit (p_Value'access);
      p_Value.field_1.field_1.vt := VT_I4'Enum_rep;
      -- parameter type := [out] [builtin] System.Int32&
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 8;
      VariantInit (p_Value'access);
      p_Value.field_1.field_1.vt := VT_I4'Enum_rep;
      -- parameter type := [out] [builtin] System.Int32&
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 9;
      VariantInit (p_Value'access);
      p_Value.field_1.field_1.vt := VT_BOOL'Enum_rep;
      -- parameter type := [out] [builtin] System.Boolean&
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject (this.m_kind);
      p_RetVal := InvokeMethod (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, p_NetRetVal);
   
      -- set out parameter [charsUsed : System.Int32]
      p_Index(1) := 7;
      Hr := SafeArrayGetElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      charsUsed := From_Variant (p_Value);
      -- set out parameter [bytesUsed : System.Int32]
      p_Index(1) := 8;
      Hr := SafeArrayGetElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      bytesUsed := From_Variant (p_Value);
      -- set out parameter [completed : System.Boolean]
      p_Index(1) := 9;
      Hr := SafeArrayGetElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      completed := From_Variant (p_Value);
      Hr := SafeArrayDestroy (p0_Parameters);
      Hr := SafeArrayDestroy (p3_Parameters);
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
   end;
   
   procedure Convert
   (
      this : in out Encoder.Kind;
      chars : NetFrameworkBase.Wide_Char_Ptr; 
      charCount : NetFrameworkBase.Int32; 
      bytes : NetFrameworkBase.Byte_Ptr; 
      byteCount : NetFrameworkBase.Int32; 
      flush : NetFrameworkBase.Boolean; 
      charsUsed : out NetFrameworkBase.Int32; 
      bytesUsed : out NetFrameworkBase.Int32; 
      completed : out NetFrameworkBase.Boolean
   ) is
      function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
      Hr            : HResult := 0;
      p_Parameters  : aliased LPSAFEARRAY := null;
      p_Bounds      : aliased SAFEARRAYBOUND := (8 , 0);
      p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
      p_Value       : aliased VARIANT;
      p_Value_Ptr   : access VARIANT := p_Value'access;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("Convert");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      -- fixme parameter type := [builtin] [in out] System.Char*
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 1;
      p_Value := To_Variant(charCount);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 2;
      -- fixme parameter type := [builtin] [in out] System.Byte*
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 3;
      p_Value := To_Variant(byteCount);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 4;
      p_Value := To_Variant(flush);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 5;
      VariantInit (p_Value'access);
      p_Value.field_1.field_1.vt := VT_I4'Enum_rep;
      -- parameter type := [out] [builtin] System.Int32&
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 6;
      VariantInit (p_Value'access);
      p_Value.field_1.field_1.vt := VT_I4'Enum_rep;
      -- parameter type := [out] [builtin] System.Int32&
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 7;
      VariantInit (p_Value'access);
      p_Value.field_1.field_1.vt := VT_BOOL'Enum_rep;
      -- parameter type := [out] [builtin] System.Boolean&
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject (this.m_kind);
      p_RetVal := InvokeMethod (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, p_NetRetVal);
   
      -- set out parameter [charsUsed : System.Int32]
      p_Index(1) := 5;
      Hr := SafeArrayGetElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      charsUsed := From_Variant (p_Value);
      -- set out parameter [bytesUsed : System.Int32]
      p_Index(1) := 6;
      Hr := SafeArrayGetElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      bytesUsed := From_Variant (p_Value);
      -- set out parameter [completed : System.Boolean]
      p_Index(1) := 7;
      Hr := SafeArrayGetElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      completed := From_Variant (p_Value);
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
   end;
   
end;
