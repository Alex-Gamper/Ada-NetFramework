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
with NetFrameworkBase.System.ArgumentException;
with NetFrameworkBase.System.Exception_x;
with NetFrameworkWin32;              use NetFrameworkWin32;
with NetFrameworkAdaRuntime;         use NetFrameworkAdaRuntime;
with Ada.Unchecked_Conversion;
with Interfaces.C;
--------------------------------------------------------------------------------
package body NetFrameworkBase.System.Text.EncoderFallbackException is
   
   use type Interfaces.C.unsigned_short;
   
   This_AssemblyFile : constant Standard.Wide_String := "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\mscorlib.dll";
   This_AssemblyName : constant Standard.Wide_String := "mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089";
   This_TypeName     : constant Standard.Wide_String := "System.Text.EncoderFallbackException";
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
   
   function CharUnknown
   (
      this : in out EncoderFallbackException.Kind
   )
   return NetFrameworkBase.Wide_Char is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("CharUnknown");
      p_RetVal      : aliased VARIANT;
      RetVal        : NetFrameworkBase.Wide_Char;
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
   
   function CharUnknownHigh
   (
      this : in out EncoderFallbackException.Kind
   )
   return NetFrameworkBase.Wide_Char is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("CharUnknownHigh");
      p_RetVal      : aliased VARIANT;
      RetVal        : NetFrameworkBase.Wide_Char;
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
   
   function CharUnknownLow
   (
      this : in out EncoderFallbackException.Kind
   )
   return NetFrameworkBase.Wide_Char is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("CharUnknownLow");
      p_RetVal      : aliased VARIANT;
      RetVal        : NetFrameworkBase.Wide_Char;
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
   
   function Index
   (
      this : in out EncoderFallbackException.Kind
   )
   return NetFrameworkBase.Int32 is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("Index");
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
   
   function IsUnknownSurrogate
   (
      this : in out EncoderFallbackException.Kind
   )
   return NetFrameworkBase.Boolean is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("IsUnknownSurrogate");
      p_RetVal      : aliased VARIANT;
      RetVal        : NetFrameworkBase.Boolean;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
   
      p_Target := GetObject (this.m_kind);
      p_RetVal := InvokeMethod (Instance, p_Target, p_MethodName, p_Flags, null, False);
   
      SysFreeString (p_MethodName);
      RetVal := From_Variant (p_RetVal);
      return RetVal;
   end;
   
   function Constructor return NetFrameworkBase.System.Text.EncoderFallbackException.Kind_Ptr is
   begin
      return RetVal : NetFrameworkBase.System.Text.EncoderFallbackException.Kind_Ptr := new NetFrameworkBase.System.Text.EncoderFallbackException.Kind do
          NetFrameworkAdaRuntime.CreateInstance (RetVal.m_Kind, This_AssemblyName, This_TypeName, Instance, NetFrameworkWin32.BindingFlags'(CreateInstance)'Enum_rep, null);
      end return;
   end;
   
   function Constructor
   (
      message : NetFrameworkBase.BSTR
   )
   return NetFrameworkBase.System.Text.EncoderFallbackException.Kind_Ptr is
   begin
      return RetVal : NetFrameworkBase.System.Text.EncoderFallbackException.Kind_Ptr := new NetFrameworkBase.System.Text.EncoderFallbackException.Kind do
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
         p_Value := To_Variant(message);
         Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
         NetFrameworkAdaRuntime.CreateInstance (RetVal.m_Kind, This_AssemblyName, This_TypeName, Instance, NetFrameworkWin32.BindingFlags'(CreateInstance)'Enum_rep, p_Parameters);
         Hr := SafeArrayDestroy(p_Parameters);
      end;
      end return;
   end;
   
   function Constructor
   (
      message : NetFrameworkBase.BSTR;
      innerException : NetFrameworkBase.System.Exception_x.Kind_Ptr
   )
   return NetFrameworkBase.System.Text.EncoderFallbackException.Kind_Ptr is
   begin
      return RetVal : NetFrameworkBase.System.Text.EncoderFallbackException.Kind_Ptr := new NetFrameworkBase.System.Text.EncoderFallbackException.Kind do
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
         p_Value := To_Variant(message);
         Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
         ------------------------------------------------------------
         p_Index(1) := 1;
         p_Value := GetObject (innerException.m_Kind);
         Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
         NetFrameworkAdaRuntime.CreateInstance (RetVal.m_Kind, This_AssemblyName, This_TypeName, Instance, NetFrameworkWin32.BindingFlags'(CreateInstance)'Enum_rep, p_Parameters);
         Hr := SafeArrayDestroy(p_Parameters);
      end;
      end return;
   end;
   
end;
