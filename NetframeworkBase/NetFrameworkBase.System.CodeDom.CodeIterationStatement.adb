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
with NetFrameworkBase.System.CodeDom.CodeStatement;
with NetFrameworkBase.System.CodeDom.CodeExpression;
with NetFrameworkBase.System.CodeDom.CodeStatementCollection;
with NetFrameworkWin32;              use NetFrameworkWin32;
with NetFrameworkAdaRuntime;         use NetFrameworkAdaRuntime;
with Ada.Unchecked_Conversion;
with Interfaces.C;
--------------------------------------------------------------------------------
package body NetFrameworkBase.System.CodeDom.CodeIterationStatement is
   
   use type Interfaces.C.unsigned_short;
   
   This_AssemblyFile : constant Standard.Wide_String := "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\System.dll";
   This_AssemblyName : constant Standard.Wide_String := "System, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089";
   This_TypeName     : constant Standard.Wide_String := "System.CodeDom.CodeIterationStatement";
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
   
   function InitStatement
   (
      this : in out CodeIterationStatement.Kind
   )
   return NetFrameworkBase.System.CodeDom.CodeStatement.Kind_Ptr is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("InitStatement");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      RetVal        : NetFrameworkBase.System.CodeDom.CodeStatement.Kind_Ptr := new NetFrameworkBase.System.CodeDom.CodeStatement.Kind;
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
   
   procedure InitStatement
   (
      this : in out CodeIterationStatement.Kind;
      value : NetFrameworkBase.System.CodeDom.CodeStatement.Kind_Ptr
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
      p_MethodName  : BSTR := To_BSTR("InitStatement");
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
      p_RetVal := InvokeMethod2 (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, p_NetRetVal, False);
   
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
   end;
   
   function TestExpression
   (
      this : in out CodeIterationStatement.Kind
   )
   return NetFrameworkBase.System.CodeDom.CodeExpression.Kind_Ptr is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("TestExpression");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      RetVal        : NetFrameworkBase.System.CodeDom.CodeExpression.Kind_Ptr := new NetFrameworkBase.System.CodeDom.CodeExpression.Kind;
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
   
   procedure TestExpression
   (
      this : in out CodeIterationStatement.Kind;
      value : NetFrameworkBase.System.CodeDom.CodeExpression.Kind_Ptr
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
      p_MethodName  : BSTR := To_BSTR("TestExpression");
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
      p_RetVal := InvokeMethod2 (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, p_NetRetVal, False);
   
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
   end;
   
   function IncrementStatement
   (
      this : in out CodeIterationStatement.Kind
   )
   return NetFrameworkBase.System.CodeDom.CodeStatement.Kind_Ptr is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("IncrementStatement");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      RetVal        : NetFrameworkBase.System.CodeDom.CodeStatement.Kind_Ptr := new NetFrameworkBase.System.CodeDom.CodeStatement.Kind;
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
   
   procedure IncrementStatement
   (
      this : in out CodeIterationStatement.Kind;
      value : NetFrameworkBase.System.CodeDom.CodeStatement.Kind_Ptr
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
      p_MethodName  : BSTR := To_BSTR("IncrementStatement");
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
      p_RetVal := InvokeMethod2 (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, p_NetRetVal, False);
   
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
   end;
   
   function Statements
   (
      this : in out CodeIterationStatement.Kind
   )
   return NetFrameworkBase.System.CodeDom.CodeStatementCollection.Kind_Ptr is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("Statements");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      RetVal        : NetFrameworkBase.System.CodeDom.CodeStatementCollection.Kind_Ptr := new NetFrameworkBase.System.CodeDom.CodeStatementCollection.Kind;
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
   
   function Constructor return NetFrameworkBase.System.CodeDom.CodeIterationStatement.Kind_Ptr is
   begin
      return RetVal : NetFrameworkBase.System.CodeDom.CodeIterationStatement.Kind_Ptr := new NetFrameworkBase.System.CodeDom.CodeIterationStatement.Kind do
          NetFrameworkAdaRuntime.CreateInstance (RetVal.m_Kind, This_AssemblyName, This_TypeName, Instance, NetFrameworkWin32.BindingFlags'(CreateInstance)'Enum_rep, null);
      end return;
   end;
   
   function Constructor
   (
      initStatement : NetFrameworkBase.System.CodeDom.CodeStatement.Kind_Ptr;
      testExpression : NetFrameworkBase.System.CodeDom.CodeExpression.Kind_Ptr;
      incrementStatement : NetFrameworkBase.System.CodeDom.CodeStatement.Kind_Ptr;
      statements : NetFrameworkBase.System.CodeDom.CodeStatement.Kind_Array
   )
   return NetFrameworkBase.System.CodeDom.CodeIterationStatement.Kind_Ptr is
   begin
      return RetVal : NetFrameworkBase.System.CodeDom.CodeIterationStatement.Kind_Ptr := new NetFrameworkBase.System.CodeDom.CodeIterationStatement.Kind do
      declare
         function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
         Hr            : HResult := 0;
         p_Parameters  : aliased LPSAFEARRAY := null;
         p_Bounds      : aliased SAFEARRAYBOUND := (4 , 0);
         p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
         p_Value       : aliased VARIANT;
         p_Value_Ptr   : access VARIANT := p_Value'access;
         p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
         p3_Parameters : aliased LPSAFEARRAY := null;
         p3_Bounds     : aliased SAFEARRAYBOUND := (statements'Length , 0);
         p3_Index      : aliased array(1..1) of aliased LONG := (others => 0);
         p3_Tmp        : aliased IUnknown_Ptr;
         p3_Tmp_Ptr    : access IUnknown_Ptr := p3_Tmp'access;
      begin
         p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
         ------------------------------------------------------------
         p_Index(1) := 0;
         p_Value := GetObject (initStatement.m_Kind);
         Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
         ------------------------------------------------------------
         p_Index(1) := 1;
         p_Value := GetObject (testExpression.m_Kind);
         Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
         ------------------------------------------------------------
         p_Index(1) := 2;
         p_Value := GetObject (incrementStatement.m_Kind);
         Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
         ------------------------------------------------------------
         p_Index(1) := 3;
         declare
            use Interfaces.C;
            function Convert is new Ada.Unchecked_Conversion (IUnknown_Ptr, LPVOID);
         begin
            p3_Parameters := SafeArrayCreate (VT_UNKNOWN'enum_rep, 1, p3_Bounds'access);
            for i in statements'range loop
               p3_Index(1) := Interfaces.C.long(i) - 1;
               p3_Tmp := GetObject (statements(i).m_Kind);
               Hr := SafeArrayPutElement (p3_Parameters, p3_Index (p3_Index'first)'access, Convert (p3_Tmp));
            end loop;
            p_Value := To_Variant (p3_Parameters, VT_UNKNOWN);
         end;
         -- fixme parameter type := [array] System.CodeDom.CodeStatement[]
      
         Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
         NetFrameworkAdaRuntime.CreateInstance (RetVal.m_Kind, This_AssemblyName, This_TypeName, Instance, NetFrameworkWin32.BindingFlags'(CreateInstance)'Enum_rep, p_Parameters);
         Hr := SafeArrayDestroy (p3_Parameters);
         Hr := SafeArrayDestroy(p_Parameters);
      end;
      end return;
   end;
   
end;
