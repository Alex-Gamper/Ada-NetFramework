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
with NetFrameworkBase.System.Security.Cryptography.Xml.Transform;
with NetFrameworkBase.System.Type_x;
with NetFrameworkBase.System.Xml.XmlNodeList;
with NetFrameworkBase.System.Object;
with NetFrameworkWin32;              use NetFrameworkWin32;
with NetFrameworkAdaRuntime;         use NetFrameworkAdaRuntime;
with Ada.Unchecked_Conversion;
with Interfaces.C;
--------------------------------------------------------------------------------
package body NetFrameworkBase.System.Security.Cryptography.Xml.XmlDsigBase64Transform is
   
   use type Interfaces.C.unsigned_short;
   
   This_AssemblyFile : constant Standard.Wide_String := "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\System.Security.dll";
   This_AssemblyName : constant Standard.Wide_String := "System.Security, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a";
   This_TypeName     : constant Standard.Wide_String := "System.Security.Cryptography.Xml.XmlDsigBase64Transform";
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
   
   function InputTypes
   (
      this : in out XmlDsigBase64Transform.Kind
   )
   return NetFrameworkBase.System.Type_x.Kind_Array is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("InputTypes");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
   
      function GetArray (sa : access NetFrameworkWin32.SAFEARRAY) return NetFrameworkBase.System.Type_x.Kind_Array is
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
            RetVal : NetFrameworkBase.System.Type_x.Kind_Array(1..integer(Index));
            Value  : NetFrameworkBase.System.Type_x.Kind_Ptr;
            Var    : aliased VARIANT;
            Item   : PVOID;
            function Convert is new Ada.Unchecked_Conversion (NetFrameworkWin32.Address, PVOID);
            function Convert is new Ada.Unchecked_Conversion (VOID, PVOID);
         begin
            Index := 0;
            for I in RetVal'range loop
               Hr := SafeArrayGetElement (sa, Index'unchecked_access, Convert (Item'Address));
               VariantInit (Var'access);
               Var.field_1.field_1.vt := VT_UNKNOWN'Enum_rep;
               Var.field_1.field_1.field_1.byref := Item;
               Value := new NetFrameworkBase.System.Type_x.Kind;
               SetObject (Value.m_Kind, Var);
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
      p_RetVal := InvokeMethod2 (Instance, p_Target, p_MethodName, p_Flags, null, p_NetRetVal, False);
   
      SysFreeString (p_MethodName);
      return GetArray (p_RetVal.field_1.field_1.field_1.parray);
   end;
   
   function OutputTypes
   (
      this : in out XmlDsigBase64Transform.Kind
   )
   return NetFrameworkBase.System.Type_x.Kind_Array is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("OutputTypes");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
   
      function GetArray (sa : access NetFrameworkWin32.SAFEARRAY) return NetFrameworkBase.System.Type_x.Kind_Array is
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
            RetVal : NetFrameworkBase.System.Type_x.Kind_Array(1..integer(Index));
            Value  : NetFrameworkBase.System.Type_x.Kind_Ptr;
            Var    : aliased VARIANT;
            Item   : PVOID;
            function Convert is new Ada.Unchecked_Conversion (NetFrameworkWin32.Address, PVOID);
            function Convert is new Ada.Unchecked_Conversion (VOID, PVOID);
         begin
            Index := 0;
            for I in RetVal'range loop
               Hr := SafeArrayGetElement (sa, Index'unchecked_access, Convert (Item'Address));
               VariantInit (Var'access);
               Var.field_1.field_1.vt := VT_UNKNOWN'Enum_rep;
               Var.field_1.field_1.field_1.byref := Item;
               Value := new NetFrameworkBase.System.Type_x.Kind;
               SetObject (Value.m_Kind, Var);
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
      p_RetVal := InvokeMethod2 (Instance, p_Target, p_MethodName, p_Flags, null, p_NetRetVal, False);
   
      SysFreeString (p_MethodName);
      return GetArray (p_RetVal.field_1.field_1.field_1.parray);
   end;
   
   function GetOutput
   (
      this : in out XmlDsigBase64Transform.Kind
   )
   return NetFrameworkBase.System.Object.Kind_Ptr is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("GetOutput");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      RetVal        : NetFrameworkBase.System.Object.Kind_Ptr := new NetFrameworkBase.System.Object.Kind;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
   
      p_Target := GetObject (this.m_kind);
      p_RetVal := InvokeMethod2 (Instance, p_Target, p_MethodName, p_Flags, null, p_NetRetVal, False);
   
      SetObject (RetVal.m_Kind, p_RetVal);
      SetObject (RetVal.m_Kind, p_NetRetVal);
      SysFreeString (p_MethodName);
      return RetVal;
   end;
   
   function GetOutput
   (
      this : in out XmlDsigBase64Transform.Kind;
      type_x : NetFrameworkBase.System.Type_x.Kind_Ptr
   )
   return NetFrameworkBase.System.Object.Kind_Ptr is
      function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
      Hr            : HResult := 0;
      p_Parameters  : aliased LPSAFEARRAY := null;
      p_Bounds      : aliased SAFEARRAYBOUND := (1 , 0);
      p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
      p_Value       : aliased VARIANT;
      p_Value_Ptr   : access VARIANT := p_Value'access;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("GetOutput");
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
      p_Value := GetObject (type_x.m_Kind);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject(this.m_kind);
      p_RetVal := InvokeMethod2 (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, p_NetRetVal, False);
   
      SetObject (RetVal.m_Kind, p_RetVal);
      SetObject (RetVal.m_Kind, p_NetRetVal);
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
      return RetVal;
   end;
   
   procedure LoadInnerXml
   (
      this : in out XmlDsigBase64Transform.Kind;
      nodeList : NetFrameworkBase.System.Xml.XmlNodeList.Kind_Ptr
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
      p_MethodName  : BSTR := To_BSTR("LoadInnerXml");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      p_Value := GetObject (nodeList.m_Kind);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject (this.m_kind);
      p_RetVal := InvokeMethod2 (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, p_NetRetVal, False);
   
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
   end;
   
   procedure LoadInput
   (
      this : in out XmlDsigBase64Transform.Kind;
      obj : NetFrameworkBase.System.Object.Kind_Ptr
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
      p_MethodName  : BSTR := To_BSTR("LoadInput");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      p_Value := GetObject (obj.m_Kind);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject (this.m_kind);
      p_RetVal := InvokeMethod2 (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, p_NetRetVal, False);
   
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
   end;
   
   function Constructor return NetFrameworkBase.System.Security.Cryptography.Xml.XmlDsigBase64Transform.Kind_Ptr is
   begin
      return RetVal : NetFrameworkBase.System.Security.Cryptography.Xml.XmlDsigBase64Transform.Kind_Ptr := new NetFrameworkBase.System.Security.Cryptography.Xml.XmlDsigBase64Transform.Kind do
          NetFrameworkAdaRuntime.CreateInstance (RetVal.m_Kind, This_AssemblyName, This_TypeName, Instance, NetFrameworkWin32.BindingFlags'(CreateInstance)'Enum_rep, null);
      end return;
   end;
   
end;
