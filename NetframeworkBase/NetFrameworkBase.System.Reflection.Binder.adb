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
with NetFrameworkBase.System.Reflection.BindingFlags;
with NetFrameworkBase.System.Reflection.MethodBase;
with NetFrameworkBase.System.Reflection.ParameterModifier;
with NetFrameworkBase.System.Globalization.CultureInfo;
with NetFrameworkBase.System.Reflection.FieldInfo;
with NetFrameworkBase.System.Type_x;
with NetFrameworkBase.System.Reflection.PropertyInfo;
with NetFrameworkWin32;              use NetFrameworkWin32;
with NetFrameworkAdaRuntime;         use NetFrameworkAdaRuntime;
with Ada.Unchecked_Conversion;
with Interfaces.C;
--------------------------------------------------------------------------------
package body NetFrameworkBase.System.Reflection.Binder is
   
   use type Interfaces.C.unsigned_short;
   
   This_AssemblyFile : constant Standard.Wide_String := "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\mscorlib.dll";
   This_AssemblyName : constant Standard.Wide_String := "mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089";
   This_TypeName     : constant Standard.Wide_String := "System.Reflection.Binder";
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
   
   function BindToMethod
   (
      this : in out Binder.Kind;
      bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind; 
      match : NetFrameworkBase.System.Reflection.MethodBase.Kind_Array; 
      args : NetFrameworkBase.System.Object.Kind_Array; 
      modifiers : NetFrameworkBase.System.Reflection.ParameterModifier.Kind_Array_Ptr; 
      culture : NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr; 
      names : NetFrameworkBase.BSTR_Array; 
      state : out NetFrameworkBase.System.Object.Kind_Ptr
   )
   return NetFrameworkBase.System.Reflection.MethodBase.Kind_Ptr is
      function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
      Hr            : HResult := 0;
      p_Parameters  : aliased LPSAFEARRAY := null;
      p_Bounds      : aliased SAFEARRAYBOUND := (7 , 0);
      p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
      p_Value       : aliased VARIANT;
      p_Value_Ptr   : access VARIANT := p_Value'access;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("BindToMethod");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      p_bindingAttrEnumType : NetFrameworkWin32.IType_Ptr := NetFrameworkBase.System.Reflection.BindingFlags.Instance;
      p_bindingAttrEnum : aliased VARIANT := To_Variant (CreateEnum (p_bindingAttrEnumType, bindingAttr'Enum_rep));
      p1_Parameters : aliased LPSAFEARRAY := null;
      p1_Bounds     : aliased SAFEARRAYBOUND := (match'Length , 0);
      p1_Index      : aliased array(1..1) of aliased LONG := (others => 0);
      p1_Tmp        : aliased IUnknown_Ptr;
      p1_Tmp_Ptr    : access IUnknown_Ptr := p1_Tmp'access;
   -- check reference array
      p2_Parameters : aliased LPSAFEARRAY := null;
      p2_Bounds     : aliased SAFEARRAYBOUND := (args'Length , 0);
      p2_Index      : aliased array(1..1) of aliased LONG := (others => 0);
      p2_Tmp        : aliased IUnknown_Ptr;
      p2_Tmp_Ptr    : access IUnknown_Ptr := p2_Tmp'access;
      p3_Parameters : aliased LPSAFEARRAY := null;
      p3_Bounds     : aliased SAFEARRAYBOUND := (modifiers'Length , 0);
      p3_Index      : aliased array(1..1) of aliased LONG := (others => 0);
      p3_Tmp        : aliased IUnknown_Ptr;
      p3_Tmp_Ptr    : access IUnknown_Ptr := p3_Tmp'access;
      p5_Parameters : aliased LPSAFEARRAY := null;
      p5_Bounds     : aliased SAFEARRAYBOUND := (names'Length , 0);
      p5_Index      : aliased array(1..1) of aliased LONG := (others => 0);
      p5_Tmp        : aliased NetFrameworkBase.BSTR;
      p5_Tmp_Ptr    : access NetFrameworkBase.BSTR := p5_Tmp'access;
      RetVal        : NetFrameworkBase.System.Reflection.MethodBase.Kind_Ptr := new NetFrameworkBase.System.Reflection.MethodBase.Kind;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      p_Value := p_bindingAttrEnum;
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 1;
      declare
         use Interfaces.C;
         function Convert is new Ada.Unchecked_Conversion (IUnknown_Ptr, LPVOID);
      begin
         p1_Parameters := SafeArrayCreate (VT_UNKNOWN'enum_rep, 1, p1_Bounds'access);
         for i in match'range loop
            p1_Index(1) := Interfaces.C.long(i) - 1;
            p1_Tmp := GetObject (match(i).m_Kind);
            Hr := SafeArrayPutElement (p1_Parameters, p1_Index (p1_Index'first)'access, Convert (p1_Tmp));
         end loop;
         p_Value := To_Variant (p1_Parameters, VT_UNKNOWN);
      end;
      -- fixme parameter type := [array] System.Reflection.MethodBase[]
   
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 2;
      declare
         use Interfaces.C;
         function Convert is new Ada.Unchecked_Conversion (IUnknown_Ptr, LPVOID);
      begin
         p2_Parameters := SafeArrayCreate (VT_UNKNOWN'enum_rep, 1, p2_Bounds'access);
         for i in args'range loop
            p2_Index(1) := Interfaces.C.long(i) - 1;
            p2_Tmp := GetObject (args(i).m_Kind);
            Hr := SafeArrayPutElement (p2_Parameters, p2_Index (p2_Index'first)'access, Convert (p2_Tmp));
         end loop;
         p_Value := To_Variant (p2_Parameters, VT_UNKNOWN);
      end;
      -- fixme parameter type := [array] System.Object[]&
   
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 3;
      declare
         use Interfaces.C;
         function Convert is new Ada.Unchecked_Conversion (IUnknown_Ptr, LPVOID);
      begin
         p3_Parameters := SafeArrayCreate (VT_UNKNOWN'enum_rep, 1, p3_Bounds'access);
         for i in modifiers'range loop
            p3_Index(1) := Interfaces.C.long(i) - 1;
            p3_Tmp := GetObject (modifiers(i).m_Kind);
            Hr := SafeArrayPutElement (p3_Parameters, p3_Index (p3_Index'first)'access, Convert (p3_Tmp));
         end loop;
         p_Value := To_Variant (p3_Parameters, VT_UNKNOWN);
      end;
      -- fixme parameter type := [array] System.Reflection.ParameterModifier[]
   
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 4;
      p_Value := GetObject (culture.m_Kind);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 5;
      declare
         use Interfaces.C;
         function Convert is new Ada.Unchecked_Conversion (NetFrameworkBase.BSTR_Ptr, LPVOID);
      begin
         p5_Parameters := SafeArrayCreate (VT_BSTR'enum_rep, 1, p5_Bounds'access);
         for i in names'range loop
            p5_Index(1) := Interfaces.C.long(i) - 1;
            p5_Tmp := names(i);
            Hr := SafeArrayPutElement (p5_Parameters, p5_Index (p5_Index'first)'access, Convert (p5_Tmp_Ptr));
         end loop;
         p_Value := To_Variant (p5_Parameters, VT_BSTR);
      end;
   
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 6;
      VariantInit (p_Value'access);
      p_Value.field_1.field_1.vt := VT_UNKNOWN'Enum_rep;
      -- parameter type := [out] System.Object&
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject(this.m_kind);
      p_RetVal := InvokeMethod2 (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, p_NetRetVal);
   
      -- set out parameter [state : System.Object]
      p_Index(1) := 6;
      Hr := SafeArrayGetElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      state := new NetFrameworkBase.System.Object.Kind;
      SetObject (state.m_Kind, p_Value);
      SetObject (RetVal.m_Kind, p_RetVal);
      SetObject (RetVal.m_Kind, p_NetRetVal);
      Hr := SafeArrayDestroy (p1_Parameters);
      Hr := SafeArrayDestroy (p2_Parameters);
      Hr := SafeArrayDestroy (p3_Parameters);
      Hr := SafeArrayDestroy (p5_Parameters);
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
      return RetVal;
   end;
   
   function BindToField
   (
      this : in out Binder.Kind;
      bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind; 
      match : NetFrameworkBase.System.Reflection.FieldInfo.Kind_Array; 
      value : NetFrameworkBase.System.Object.Kind_Ptr; 
      culture : NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr
   )
   return NetFrameworkBase.System.Reflection.FieldInfo.Kind_Ptr is
      function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
      Hr            : HResult := 0;
      p_Parameters  : aliased LPSAFEARRAY := null;
      p_Bounds      : aliased SAFEARRAYBOUND := (4 , 0);
      p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
      p_Value       : aliased VARIANT;
      p_Value_Ptr   : access VARIANT := p_Value'access;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("BindToField");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      p_bindingAttrEnumType : NetFrameworkWin32.IType_Ptr := NetFrameworkBase.System.Reflection.BindingFlags.Instance;
      p_bindingAttrEnum : aliased VARIANT := To_Variant (CreateEnum (p_bindingAttrEnumType, bindingAttr'Enum_rep));
      p1_Parameters : aliased LPSAFEARRAY := null;
      p1_Bounds     : aliased SAFEARRAYBOUND := (match'Length , 0);
      p1_Index      : aliased array(1..1) of aliased LONG := (others => 0);
      p1_Tmp        : aliased IUnknown_Ptr;
      p1_Tmp_Ptr    : access IUnknown_Ptr := p1_Tmp'access;
      RetVal        : NetFrameworkBase.System.Reflection.FieldInfo.Kind_Ptr := new NetFrameworkBase.System.Reflection.FieldInfo.Kind;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      p_Value := p_bindingAttrEnum;
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 1;
      declare
         use Interfaces.C;
         function Convert is new Ada.Unchecked_Conversion (IUnknown_Ptr, LPVOID);
      begin
         p1_Parameters := SafeArrayCreate (VT_UNKNOWN'enum_rep, 1, p1_Bounds'access);
         for i in match'range loop
            p1_Index(1) := Interfaces.C.long(i) - 1;
            p1_Tmp := GetObject (match(i).m_Kind);
            Hr := SafeArrayPutElement (p1_Parameters, p1_Index (p1_Index'first)'access, Convert (p1_Tmp));
         end loop;
         p_Value := To_Variant (p1_Parameters, VT_UNKNOWN);
      end;
      -- fixme parameter type := [array] System.Reflection.FieldInfo[]
   
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 2;
      p_Value := GetObject (value.m_Kind);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 3;
      p_Value := GetObject (culture.m_Kind);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject(this.m_kind);
      p_RetVal := InvokeMethod2 (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, p_NetRetVal);
   
      SetObject (RetVal.m_Kind, p_RetVal);
      SetObject (RetVal.m_Kind, p_NetRetVal);
      Hr := SafeArrayDestroy (p1_Parameters);
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
      return RetVal;
   end;
   
   function SelectMethod
   (
      this : in out Binder.Kind;
      bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind; 
      match : NetFrameworkBase.System.Reflection.MethodBase.Kind_Array; 
      types : NetFrameworkBase.System.Type_x.Kind_Array; 
      modifiers : NetFrameworkBase.System.Reflection.ParameterModifier.Kind_Array_Ptr
   )
   return NetFrameworkBase.System.Reflection.MethodBase.Kind_Ptr is
      function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
      Hr            : HResult := 0;
      p_Parameters  : aliased LPSAFEARRAY := null;
      p_Bounds      : aliased SAFEARRAYBOUND := (4 , 0);
      p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
      p_Value       : aliased VARIANT;
      p_Value_Ptr   : access VARIANT := p_Value'access;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("SelectMethod");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      p_bindingAttrEnumType : NetFrameworkWin32.IType_Ptr := NetFrameworkBase.System.Reflection.BindingFlags.Instance;
      p_bindingAttrEnum : aliased VARIANT := To_Variant (CreateEnum (p_bindingAttrEnumType, bindingAttr'Enum_rep));
      p1_Parameters : aliased LPSAFEARRAY := null;
      p1_Bounds     : aliased SAFEARRAYBOUND := (match'Length , 0);
      p1_Index      : aliased array(1..1) of aliased LONG := (others => 0);
      p1_Tmp        : aliased IUnknown_Ptr;
      p1_Tmp_Ptr    : access IUnknown_Ptr := p1_Tmp'access;
      p2_Parameters : aliased LPSAFEARRAY := null;
      p2_Bounds     : aliased SAFEARRAYBOUND := (types'Length , 0);
      p2_Index      : aliased array(1..1) of aliased LONG := (others => 0);
      p2_Tmp        : aliased IUnknown_Ptr;
      p2_Tmp_Ptr    : access IUnknown_Ptr := p2_Tmp'access;
      p3_Parameters : aliased LPSAFEARRAY := null;
      p3_Bounds     : aliased SAFEARRAYBOUND := (modifiers'Length , 0);
      p3_Index      : aliased array(1..1) of aliased LONG := (others => 0);
      p3_Tmp        : aliased IUnknown_Ptr;
      p3_Tmp_Ptr    : access IUnknown_Ptr := p3_Tmp'access;
      RetVal        : NetFrameworkBase.System.Reflection.MethodBase.Kind_Ptr := new NetFrameworkBase.System.Reflection.MethodBase.Kind;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      p_Value := p_bindingAttrEnum;
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 1;
      declare
         use Interfaces.C;
         function Convert is new Ada.Unchecked_Conversion (IUnknown_Ptr, LPVOID);
      begin
         p1_Parameters := SafeArrayCreate (VT_UNKNOWN'enum_rep, 1, p1_Bounds'access);
         for i in match'range loop
            p1_Index(1) := Interfaces.C.long(i) - 1;
            p1_Tmp := GetObject (match(i).m_Kind);
            Hr := SafeArrayPutElement (p1_Parameters, p1_Index (p1_Index'first)'access, Convert (p1_Tmp));
         end loop;
         p_Value := To_Variant (p1_Parameters, VT_UNKNOWN);
      end;
      -- fixme parameter type := [array] System.Reflection.MethodBase[]
   
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 2;
      declare
         use Interfaces.C;
         function Convert is new Ada.Unchecked_Conversion (IUnknown_Ptr, LPVOID);
      begin
         p2_Parameters := SafeArrayCreate (VT_UNKNOWN'enum_rep, 1, p2_Bounds'access);
         for i in types'range loop
            p2_Index(1) := Interfaces.C.long(i) - 1;
            p2_Tmp := GetObject (types(i).m_Kind);
            Hr := SafeArrayPutElement (p2_Parameters, p2_Index (p2_Index'first)'access, Convert (p2_Tmp));
         end loop;
         p_Value := To_Variant (p2_Parameters, VT_UNKNOWN);
      end;
      -- fixme parameter type := [array] System.Type[]
   
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 3;
      declare
         use Interfaces.C;
         function Convert is new Ada.Unchecked_Conversion (IUnknown_Ptr, LPVOID);
      begin
         p3_Parameters := SafeArrayCreate (VT_UNKNOWN'enum_rep, 1, p3_Bounds'access);
         for i in modifiers'range loop
            p3_Index(1) := Interfaces.C.long(i) - 1;
            p3_Tmp := GetObject (modifiers(i).m_Kind);
            Hr := SafeArrayPutElement (p3_Parameters, p3_Index (p3_Index'first)'access, Convert (p3_Tmp));
         end loop;
         p_Value := To_Variant (p3_Parameters, VT_UNKNOWN);
      end;
      -- fixme parameter type := [array] System.Reflection.ParameterModifier[]
   
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject(this.m_kind);
      p_RetVal := InvokeMethod2 (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, p_NetRetVal);
   
      SetObject (RetVal.m_Kind, p_RetVal);
      SetObject (RetVal.m_Kind, p_NetRetVal);
      Hr := SafeArrayDestroy (p1_Parameters);
      Hr := SafeArrayDestroy (p2_Parameters);
      Hr := SafeArrayDestroy (p3_Parameters);
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
      return RetVal;
   end;
   
   function SelectProperty
   (
      this : in out Binder.Kind;
      bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind; 
      match : NetFrameworkBase.System.Reflection.PropertyInfo.Kind_Array; 
      returnType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
      indexes : NetFrameworkBase.System.Type_x.Kind_Array; 
      modifiers : NetFrameworkBase.System.Reflection.ParameterModifier.Kind_Array_Ptr
   )
   return NetFrameworkBase.System.Reflection.PropertyInfo.Kind_Ptr is
      function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
      Hr            : HResult := 0;
      p_Parameters  : aliased LPSAFEARRAY := null;
      p_Bounds      : aliased SAFEARRAYBOUND := (5 , 0);
      p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
      p_Value       : aliased VARIANT;
      p_Value_Ptr   : access VARIANT := p_Value'access;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("SelectProperty");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      p_bindingAttrEnumType : NetFrameworkWin32.IType_Ptr := NetFrameworkBase.System.Reflection.BindingFlags.Instance;
      p_bindingAttrEnum : aliased VARIANT := To_Variant (CreateEnum (p_bindingAttrEnumType, bindingAttr'Enum_rep));
      p1_Parameters : aliased LPSAFEARRAY := null;
      p1_Bounds     : aliased SAFEARRAYBOUND := (match'Length , 0);
      p1_Index      : aliased array(1..1) of aliased LONG := (others => 0);
      p1_Tmp        : aliased IUnknown_Ptr;
      p1_Tmp_Ptr    : access IUnknown_Ptr := p1_Tmp'access;
      p3_Parameters : aliased LPSAFEARRAY := null;
      p3_Bounds     : aliased SAFEARRAYBOUND := (indexes'Length , 0);
      p3_Index      : aliased array(1..1) of aliased LONG := (others => 0);
      p3_Tmp        : aliased IUnknown_Ptr;
      p3_Tmp_Ptr    : access IUnknown_Ptr := p3_Tmp'access;
      p4_Parameters : aliased LPSAFEARRAY := null;
      p4_Bounds     : aliased SAFEARRAYBOUND := (modifiers'Length , 0);
      p4_Index      : aliased array(1..1) of aliased LONG := (others => 0);
      p4_Tmp        : aliased IUnknown_Ptr;
      p4_Tmp_Ptr    : access IUnknown_Ptr := p4_Tmp'access;
      RetVal        : NetFrameworkBase.System.Reflection.PropertyInfo.Kind_Ptr := new NetFrameworkBase.System.Reflection.PropertyInfo.Kind;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      p_Value := p_bindingAttrEnum;
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 1;
      declare
         use Interfaces.C;
         function Convert is new Ada.Unchecked_Conversion (IUnknown_Ptr, LPVOID);
      begin
         p1_Parameters := SafeArrayCreate (VT_UNKNOWN'enum_rep, 1, p1_Bounds'access);
         for i in match'range loop
            p1_Index(1) := Interfaces.C.long(i) - 1;
            p1_Tmp := GetObject (match(i).m_Kind);
            Hr := SafeArrayPutElement (p1_Parameters, p1_Index (p1_Index'first)'access, Convert (p1_Tmp));
         end loop;
         p_Value := To_Variant (p1_Parameters, VT_UNKNOWN);
      end;
      -- fixme parameter type := [array] System.Reflection.PropertyInfo[]
   
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 2;
      p_Value := GetObject (returnType.m_Kind);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 3;
      declare
         use Interfaces.C;
         function Convert is new Ada.Unchecked_Conversion (IUnknown_Ptr, LPVOID);
      begin
         p3_Parameters := SafeArrayCreate (VT_UNKNOWN'enum_rep, 1, p3_Bounds'access);
         for i in indexes'range loop
            p3_Index(1) := Interfaces.C.long(i) - 1;
            p3_Tmp := GetObject (indexes(i).m_Kind);
            Hr := SafeArrayPutElement (p3_Parameters, p3_Index (p3_Index'first)'access, Convert (p3_Tmp));
         end loop;
         p_Value := To_Variant (p3_Parameters, VT_UNKNOWN);
      end;
      -- fixme parameter type := [array] System.Type[]
   
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 4;
      declare
         use Interfaces.C;
         function Convert is new Ada.Unchecked_Conversion (IUnknown_Ptr, LPVOID);
      begin
         p4_Parameters := SafeArrayCreate (VT_UNKNOWN'enum_rep, 1, p4_Bounds'access);
         for i in modifiers'range loop
            p4_Index(1) := Interfaces.C.long(i) - 1;
            p4_Tmp := GetObject (modifiers(i).m_Kind);
            Hr := SafeArrayPutElement (p4_Parameters, p4_Index (p4_Index'first)'access, Convert (p4_Tmp));
         end loop;
         p_Value := To_Variant (p4_Parameters, VT_UNKNOWN);
      end;
      -- fixme parameter type := [array] System.Reflection.ParameterModifier[]
   
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject(this.m_kind);
      p_RetVal := InvokeMethod2 (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, p_NetRetVal);
   
      SetObject (RetVal.m_Kind, p_RetVal);
      SetObject (RetVal.m_Kind, p_NetRetVal);
      Hr := SafeArrayDestroy (p1_Parameters);
      Hr := SafeArrayDestroy (p3_Parameters);
      Hr := SafeArrayDestroy (p4_Parameters);
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
      return RetVal;
   end;
   
   function ChangeType
   (
      this : in out Binder.Kind;
      value : NetFrameworkBase.System.Object.Kind_Ptr; 
      type_x : NetFrameworkBase.System.Type_x.Kind_Ptr; 
      culture : NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr
   )
   return NetFrameworkBase.System.Object.Kind_Ptr is
      function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
      Hr            : HResult := 0;
      p_Parameters  : aliased LPSAFEARRAY := null;
      p_Bounds      : aliased SAFEARRAYBOUND := (3 , 0);
      p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
      p_Value       : aliased VARIANT;
      p_Value_Ptr   : access VARIANT := p_Value'access;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("ChangeType");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      RetVal        : NetFrameworkBase.System.Object.Kind_Ptr := new NetFrameworkBase.System.Object.Kind;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      p_Value := GetObject (value.m_Kind);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 1;
      p_Value := GetObject (type_x.m_Kind);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 2;
      p_Value := GetObject (culture.m_Kind);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject(this.m_kind);
      p_RetVal := InvokeMethod2 (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, p_NetRetVal);
   
      SetObject (RetVal.m_Kind, p_RetVal);
      SetObject (RetVal.m_Kind, p_NetRetVal);
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
      return RetVal;
   end;
   
   procedure ReorderArgumentArray
   (
      this : in out Binder.Kind;
      args : NetFrameworkBase.System.Object.Kind_Array; 
      state : NetFrameworkBase.System.Object.Kind_Ptr
   ) is
      function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
      Hr            : HResult := 0;
      p_Parameters  : aliased LPSAFEARRAY := null;
      p_Bounds      : aliased SAFEARRAYBOUND := (2 , 0);
      p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
      p_Value       : aliased VARIANT;
      p_Value_Ptr   : access VARIANT := p_Value'access;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("ReorderArgumentArray");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
   -- check reference array
      p0_Parameters : aliased LPSAFEARRAY := null;
      p0_Bounds     : aliased SAFEARRAYBOUND := (args'Length , 0);
      p0_Index      : aliased array(1..1) of aliased LONG := (others => 0);
      p0_Tmp        : aliased IUnknown_Ptr;
      p0_Tmp_Ptr    : access IUnknown_Ptr := p0_Tmp'access;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      declare
         use Interfaces.C;
         function Convert is new Ada.Unchecked_Conversion (IUnknown_Ptr, LPVOID);
      begin
         p0_Parameters := SafeArrayCreate (VT_UNKNOWN'enum_rep, 1, p0_Bounds'access);
         for i in args'range loop
            p0_Index(1) := Interfaces.C.long(i) - 1;
            p0_Tmp := GetObject (args(i).m_Kind);
            Hr := SafeArrayPutElement (p0_Parameters, p0_Index (p0_Index'first)'access, Convert (p0_Tmp));
         end loop;
         p_Value := To_Variant (p0_Parameters, VT_UNKNOWN);
      end;
      -- fixme parameter type := [array] System.Object[]&
   
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 1;
      p_Value := GetObject (state.m_Kind);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject (this.m_kind);
      p_RetVal := InvokeMethod2 (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, p_NetRetVal);
   
      Hr := SafeArrayDestroy (p0_Parameters);
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
   end;
   
end;
