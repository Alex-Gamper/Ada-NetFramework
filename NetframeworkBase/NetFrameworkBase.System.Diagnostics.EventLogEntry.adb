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
with NetFrameworkBase.System.ComponentModel.Component;
with NetFrameworkBase.System.Diagnostics.EventLogEntryType;
with NetFrameworkWin32;              use NetFrameworkWin32;
with NetFrameworkAdaRuntime;         use NetFrameworkAdaRuntime;
with Ada.Unchecked_Conversion;
with Interfaces.C;
--------------------------------------------------------------------------------
package body NetFrameworkBase.System.Diagnostics.EventLogEntry is
   
   use type Interfaces.C.unsigned_short;
   
   This_AssemblyFile : constant Standard.Wide_String := "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\System.dll";
   This_AssemblyName : constant Standard.Wide_String := "System, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089";
   This_TypeName     : constant Standard.Wide_String := "System.Diagnostics.EventLogEntry";
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
   
   function MachineName
   (
      this : in out EventLogEntry.Kind
   )
   return NetFrameworkBase.BSTR is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("MachineName");
      p_RetVal      : aliased VARIANT;
      RetVal        : NetFrameworkBase.BSTR;
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
   
   function Data
   (
      this : in out EventLogEntry.Kind
   )
   return NetFrameworkBase.Byte_Array is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("Data");
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
   
   function Index
   (
      this : in out EventLogEntry.Kind
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
   
   function Category
   (
      this : in out EventLogEntry.Kind
   )
   return NetFrameworkBase.BSTR is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("Category");
      p_RetVal      : aliased VARIANT;
      RetVal        : NetFrameworkBase.BSTR;
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
   
   function CategoryNumber
   (
      this : in out EventLogEntry.Kind
   )
   return NetFrameworkBase.Int16 is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("CategoryNumber");
      p_RetVal      : aliased VARIANT;
      RetVal        : NetFrameworkBase.Int16;
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
   
   function EventID
   (
      this : in out EventLogEntry.Kind
   )
   return NetFrameworkBase.Int32 is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("EventID");
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
   
   function EntryType
   (
      this : in out EventLogEntry.Kind
   )
   return NetFrameworkBase.System.Diagnostics.EventLogEntryType.Kind is
      function ConvertEnum is new Ada.Unchecked_Conversion (Interfaces.C.long,NetFrameworkBase.System.Diagnostics.EventLogEntryType.Kind);
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("EntryType");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      RetVal        : NetFrameworkBase.System.Diagnostics.EventLogEntryType.Kind;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(GetProperty)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
   
      p_Target := GetObject (this.m_kind);
      p_RetVal := InvokeMethod2 (Instance, p_Target, p_MethodName, p_Flags, null, p_NetRetVal, False);
   
      SysFreeString (p_MethodName);
      RetVal := ConvertEnum (p_RetVal.field_1.field_1.field_1.lVal);
      return RetVal;
   end;
   
   function Message
   (
      this : in out EventLogEntry.Kind
   )
   return NetFrameworkBase.BSTR is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("Message");
      p_RetVal      : aliased VARIANT;
      RetVal        : NetFrameworkBase.BSTR;
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
   
   function Source
   (
      this : in out EventLogEntry.Kind
   )
   return NetFrameworkBase.BSTR is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("Source");
      p_RetVal      : aliased VARIANT;
      RetVal        : NetFrameworkBase.BSTR;
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
   
   function ReplacementStrings
   (
      this : in out EventLogEntry.Kind
   )
   return NetFrameworkBase.BSTR_Array is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("ReplacementStrings");
      p_RetVal      : aliased VARIANT;
   
      function GetArray (sa : access NetFrameworkWin32.SAFEARRAY) return NetFrameworkBase.BSTR_Array is
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
            RetVal : NetFrameworkBase.BSTR_Array(1..integer(Index));
            Value  : aliased NetFrameworkBase.BSTR;
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
   
   function InstanceId
   (
      this : in out EventLogEntry.Kind
   )
   return NetFrameworkBase.Int64 is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("InstanceId");
      p_RetVal      : aliased VARIANT;
      RetVal        : NetFrameworkBase.Int64;
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
   
   function TimeGenerated
   (
      this : in out EventLogEntry.Kind
   )
   return NetFrameworkBase.Date is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("TimeGenerated");
      p_RetVal      : aliased VARIANT;
      RetVal        : NetFrameworkBase.Date;
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
   
   function TimeWritten
   (
      this : in out EventLogEntry.Kind
   )
   return NetFrameworkBase.Date is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("TimeWritten");
      p_RetVal      : aliased VARIANT;
      RetVal        : NetFrameworkBase.Date;
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
   
   function UserName
   (
      this : in out EventLogEntry.Kind
   )
   return NetFrameworkBase.BSTR is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("UserName");
      p_RetVal      : aliased VARIANT;
      RetVal        : NetFrameworkBase.BSTR;
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
   
   function Equals
   (
      this : in out EventLogEntry.Kind;
      otherEntry : NetFrameworkBase.System.Diagnostics.EventLogEntry.Kind_Ptr
   )
   return NetFrameworkBase.Boolean is
      function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
      Hr            : HResult := 0;
      p_Parameters  : aliased LPSAFEARRAY := null;
      p_Bounds      : aliased SAFEARRAYBOUND := (1 , 0);
      p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
      p_Value       : aliased VARIANT;
      p_Value_Ptr   : access VARIANT := p_Value'access;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("Equals");
      p_RetVal      : aliased VARIANT;
      RetVal        : NetFrameworkBase.Boolean;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      p_Value := GetObject (otherEntry.m_Kind);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject(this.m_kind);
      p_RetVal := InvokeMethod (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, False);
   
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
      RetVal := From_Variant (p_RetVal);
      return RetVal;
   end;
   
end;
