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
with NetFrameworkBase.System.Dynamic.DynamicMetaObjectBinder;
with NetFrameworkBase.System.Dynamic.DynamicMetaObject;
with NetFrameworkBase.System.Type_x;
with NetFrameworkBase.System.Dynamic.CallInfo;
with NetFrameworkWin32;              use NetFrameworkWin32;
with NetFrameworkAdaRuntime;         use NetFrameworkAdaRuntime;
with Ada.Unchecked_Conversion;
with Interfaces.C;
--------------------------------------------------------------------------------
package body NetFrameworkBase.System.Dynamic.DeleteIndexBinder is
   
   use type Interfaces.C.unsigned_short;
   
   This_AssemblyFile : constant Standard.Wide_String := "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\System.Core.dll";
   This_AssemblyName : constant Standard.Wide_String := "System.Core, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089";
   This_TypeName     : constant Standard.Wide_String := "System.Dynamic.DeleteIndexBinder";
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
   
   function ReturnType
   (
      this : in out DeleteIndexBinder.Kind
   )
   return NetFrameworkBase.System.Type_x.Kind_Ptr is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("ReturnType");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      RetVal        : NetFrameworkBase.System.Type_x.Kind_Ptr := new NetFrameworkBase.System.Type_x.Kind;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(GetProperty)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
   
      p_Target := GetObject (this.m_kind);
      p_RetVal := InvokeMethod2 (Instance, p_Target, p_MethodName, p_Flags, null, p_NetRetVal, False);
   
      SetObject (RetVal.m_Kind, p_RetVal);
      SetObject (RetVal.m_Kind, p_NetRetVal);
      SysFreeString (p_MethodName);
      return RetVal;
   end;
   
   function CallInfo
   (
      this : in out DeleteIndexBinder.Kind
   )
   return NetFrameworkBase.System.Dynamic.CallInfo.Kind_Ptr is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("CallInfo");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      RetVal        : NetFrameworkBase.System.Dynamic.CallInfo.Kind_Ptr := new NetFrameworkBase.System.Dynamic.CallInfo.Kind;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(GetProperty)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
   
      p_Target := GetObject (this.m_kind);
      p_RetVal := InvokeMethod2 (Instance, p_Target, p_MethodName, p_Flags, null, p_NetRetVal, False);
   
      SetObject (RetVal.m_Kind, p_RetVal);
      SetObject (RetVal.m_Kind, p_NetRetVal);
      SysFreeString (p_MethodName);
      return RetVal;
   end;
   
   function FallbackDeleteIndex
   (
      this : in out DeleteIndexBinder.Kind;
      target : NetFrameworkBase.System.Dynamic.DynamicMetaObject.Kind_Ptr; 
      indexes : NetFrameworkBase.System.Dynamic.DynamicMetaObject.Kind_Array
   )
   return NetFrameworkBase.System.Dynamic.DynamicMetaObject.Kind_Ptr is
      function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
      Hr            : HResult := 0;
      p_Parameters  : aliased LPSAFEARRAY := null;
      p_Bounds      : aliased SAFEARRAYBOUND := (2 , 0);
      p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
      p_Value       : aliased VARIANT;
      p_Value_Ptr   : access VARIANT := p_Value'access;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("FallbackDeleteIndex");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      p1_Parameters : aliased LPSAFEARRAY := null;
      p1_Bounds     : aliased SAFEARRAYBOUND := (indexes'Length , 0);
      p1_Index      : aliased array(1..1) of aliased LONG := (others => 0);
      p1_Tmp        : aliased IUnknown_Ptr;
      p1_Tmp_Ptr    : access IUnknown_Ptr := p1_Tmp'access;
      RetVal        : NetFrameworkBase.System.Dynamic.DynamicMetaObject.Kind_Ptr := new NetFrameworkBase.System.Dynamic.DynamicMetaObject.Kind;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      p_Value := GetObject (target.m_Kind);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 1;
      declare
         use Interfaces.C;
         function Convert is new Ada.Unchecked_Conversion (IUnknown_Ptr, LPVOID);
      begin
         p1_Parameters := SafeArrayCreate (VT_UNKNOWN'enum_rep, 1, p1_Bounds'access);
         for i in indexes'range loop
            p1_Index(1) := Interfaces.C.long(i) - 1;
            p1_Tmp := GetObject (indexes(i).m_Kind);
            Hr := SafeArrayPutElement (p1_Parameters, p1_Index (p1_Index'first)'access, Convert (p1_Tmp));
         end loop;
         p_Value := To_Variant (p1_Parameters, VT_UNKNOWN);
      end;
      -- fixme parameter type := [array] System.Dynamic.DynamicMetaObject[]
   
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject(this.m_kind);
      p_RetVal := InvokeMethod2 (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, p_NetRetVal, False);
   
      SetObject (RetVal.m_Kind, p_RetVal);
      SetObject (RetVal.m_Kind, p_NetRetVal);
      Hr := SafeArrayDestroy (p1_Parameters);
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
      return RetVal;
   end;
   
   function Bind
   (
      this : in out DeleteIndexBinder.Kind;
      target : NetFrameworkBase.System.Dynamic.DynamicMetaObject.Kind_Ptr; 
      args : NetFrameworkBase.System.Dynamic.DynamicMetaObject.Kind_Array
   )
   return NetFrameworkBase.System.Dynamic.DynamicMetaObject.Kind_Ptr is
      function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
      Hr            : HResult := 0;
      p_Parameters  : aliased LPSAFEARRAY := null;
      p_Bounds      : aliased SAFEARRAYBOUND := (2 , 0);
      p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
      p_Value       : aliased VARIANT;
      p_Value_Ptr   : access VARIANT := p_Value'access;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("Bind");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      p1_Parameters : aliased LPSAFEARRAY := null;
      p1_Bounds     : aliased SAFEARRAYBOUND := (args'Length , 0);
      p1_Index      : aliased array(1..1) of aliased LONG := (others => 0);
      p1_Tmp        : aliased IUnknown_Ptr;
      p1_Tmp_Ptr    : access IUnknown_Ptr := p1_Tmp'access;
      RetVal        : NetFrameworkBase.System.Dynamic.DynamicMetaObject.Kind_Ptr := new NetFrameworkBase.System.Dynamic.DynamicMetaObject.Kind;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      p_Value := GetObject (target.m_Kind);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 1;
      declare
         use Interfaces.C;
         function Convert is new Ada.Unchecked_Conversion (IUnknown_Ptr, LPVOID);
      begin
         p1_Parameters := SafeArrayCreate (VT_UNKNOWN'enum_rep, 1, p1_Bounds'access);
         for i in args'range loop
            p1_Index(1) := Interfaces.C.long(i) - 1;
            p1_Tmp := GetObject (args(i).m_Kind);
            Hr := SafeArrayPutElement (p1_Parameters, p1_Index (p1_Index'first)'access, Convert (p1_Tmp));
         end loop;
         p_Value := To_Variant (p1_Parameters, VT_UNKNOWN);
      end;
      -- fixme parameter type := [array] System.Dynamic.DynamicMetaObject[]
   
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject(this.m_kind);
      p_RetVal := InvokeMethod2 (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, p_NetRetVal, False);
   
      SetObject (RetVal.m_Kind, p_RetVal);
      SetObject (RetVal.m_Kind, p_NetRetVal);
      Hr := SafeArrayDestroy (p1_Parameters);
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
      return RetVal;
   end;
   
   function FallbackDeleteIndex
   (
      this : in out DeleteIndexBinder.Kind;
      target : NetFrameworkBase.System.Dynamic.DynamicMetaObject.Kind_Ptr; 
      indexes : NetFrameworkBase.System.Dynamic.DynamicMetaObject.Kind_Array; 
      errorSuggestion : NetFrameworkBase.System.Dynamic.DynamicMetaObject.Kind_Ptr
   )
   return NetFrameworkBase.System.Dynamic.DynamicMetaObject.Kind_Ptr is
      function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
      Hr            : HResult := 0;
      p_Parameters  : aliased LPSAFEARRAY := null;
      p_Bounds      : aliased SAFEARRAYBOUND := (3 , 0);
      p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
      p_Value       : aliased VARIANT;
      p_Value_Ptr   : access VARIANT := p_Value'access;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("FallbackDeleteIndex");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      p1_Parameters : aliased LPSAFEARRAY := null;
      p1_Bounds     : aliased SAFEARRAYBOUND := (indexes'Length , 0);
      p1_Index      : aliased array(1..1) of aliased LONG := (others => 0);
      p1_Tmp        : aliased IUnknown_Ptr;
      p1_Tmp_Ptr    : access IUnknown_Ptr := p1_Tmp'access;
      RetVal        : NetFrameworkBase.System.Dynamic.DynamicMetaObject.Kind_Ptr := new NetFrameworkBase.System.Dynamic.DynamicMetaObject.Kind;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      p_Value := GetObject (target.m_Kind);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 1;
      declare
         use Interfaces.C;
         function Convert is new Ada.Unchecked_Conversion (IUnknown_Ptr, LPVOID);
      begin
         p1_Parameters := SafeArrayCreate (VT_UNKNOWN'enum_rep, 1, p1_Bounds'access);
         for i in indexes'range loop
            p1_Index(1) := Interfaces.C.long(i) - 1;
            p1_Tmp := GetObject (indexes(i).m_Kind);
            Hr := SafeArrayPutElement (p1_Parameters, p1_Index (p1_Index'first)'access, Convert (p1_Tmp));
         end loop;
         p_Value := To_Variant (p1_Parameters, VT_UNKNOWN);
      end;
      -- fixme parameter type := [array] System.Dynamic.DynamicMetaObject[]
   
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 2;
      p_Value := GetObject (errorSuggestion.m_Kind);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject(this.m_kind);
      p_RetVal := InvokeMethod2 (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, p_NetRetVal, False);
   
      SetObject (RetVal.m_Kind, p_RetVal);
      SetObject (RetVal.m_Kind, p_NetRetVal);
      Hr := SafeArrayDestroy (p1_Parameters);
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
      return RetVal;
   end;
   
end;
