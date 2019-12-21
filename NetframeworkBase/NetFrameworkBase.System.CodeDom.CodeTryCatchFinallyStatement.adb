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
with NetFrameworkBase.System.CodeDom.CodeCatchClause;
with NetFrameworkBase.System.CodeDom.CodeStatementCollection;
with NetFrameworkBase.System.CodeDom.CodeCatchClauseCollection;
with NetFrameworkWin32;              use NetFrameworkWin32;
with NetFrameworkAdaRuntime;         use NetFrameworkAdaRuntime;
with Ada.Unchecked_Conversion;
with Interfaces.C;
--------------------------------------------------------------------------------
package body NetFrameworkBase.System.CodeDom.CodeTryCatchFinallyStatement is
   
   use type Interfaces.C.unsigned_short;
   
   This_AssemblyFile : constant Standard.Wide_String := "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\System.dll";
   This_AssemblyName : constant Standard.Wide_String := "System, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089";
   This_TypeName     : constant Standard.Wide_String := "System.CodeDom.CodeTryCatchFinallyStatement";
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
   
   function TryStatements
   (
      this : in out CodeTryCatchFinallyStatement.Kind
   )
   return NetFrameworkBase.System.CodeDom.CodeStatementCollection.Kind_Ptr is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("TryStatements");
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
   
   function CatchClauses
   (
      this : in out CodeTryCatchFinallyStatement.Kind
   )
   return NetFrameworkBase.System.CodeDom.CodeCatchClauseCollection.Kind_Ptr is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("CatchClauses");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      RetVal        : NetFrameworkBase.System.CodeDom.CodeCatchClauseCollection.Kind_Ptr := new NetFrameworkBase.System.CodeDom.CodeCatchClauseCollection.Kind;
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
   
   function FinallyStatements
   (
      this : in out CodeTryCatchFinallyStatement.Kind
   )
   return NetFrameworkBase.System.CodeDom.CodeStatementCollection.Kind_Ptr is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("FinallyStatements");
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
   
   function Constructor return NetFrameworkBase.System.CodeDom.CodeTryCatchFinallyStatement.Kind_Ptr is
   begin
      return RetVal : NetFrameworkBase.System.CodeDom.CodeTryCatchFinallyStatement.Kind_Ptr := new NetFrameworkBase.System.CodeDom.CodeTryCatchFinallyStatement.Kind do
          NetFrameworkAdaRuntime.CreateInstance (RetVal.m_Kind, This_AssemblyName, This_TypeName, Instance, NetFrameworkWin32.BindingFlags'(CreateInstance)'Enum_rep, null);
      end return;
   end;
   
   function Constructor
   (
      tryStatements : NetFrameworkBase.System.CodeDom.CodeStatement.Kind_Array;
      catchClauses : NetFrameworkBase.System.CodeDom.CodeCatchClause.Kind_Array
   )
   return NetFrameworkBase.System.CodeDom.CodeTryCatchFinallyStatement.Kind_Ptr is
   begin
      return RetVal : NetFrameworkBase.System.CodeDom.CodeTryCatchFinallyStatement.Kind_Ptr := new NetFrameworkBase.System.CodeDom.CodeTryCatchFinallyStatement.Kind do
      declare
         function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
         Hr            : HResult := 0;
         p_Parameters  : aliased LPSAFEARRAY := null;
         p_Bounds      : aliased SAFEARRAYBOUND := (2 , 0);
         p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
         p_Value       : aliased VARIANT;
         p_Value_Ptr   : access VARIANT := p_Value'access;
         p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
         p0_Parameters : aliased LPSAFEARRAY := null;
         p0_Bounds     : aliased SAFEARRAYBOUND := (tryStatements'Length , 0);
         p0_Index      : aliased array(1..1) of aliased LONG := (others => 0);
         p0_Tmp        : aliased IUnknown_Ptr;
         p0_Tmp_Ptr    : access IUnknown_Ptr := p0_Tmp'access;
         p1_Parameters : aliased LPSAFEARRAY := null;
         p1_Bounds     : aliased SAFEARRAYBOUND := (catchClauses'Length , 0);
         p1_Index      : aliased array(1..1) of aliased LONG := (others => 0);
         p1_Tmp        : aliased IUnknown_Ptr;
         p1_Tmp_Ptr    : access IUnknown_Ptr := p1_Tmp'access;
      begin
         p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
         ------------------------------------------------------------
         p_Index(1) := 0;
         declare
            use Interfaces.C;
            function Convert is new Ada.Unchecked_Conversion (IUnknown_Ptr, LPVOID);
         begin
            p0_Parameters := SafeArrayCreate (VT_UNKNOWN'enum_rep, 1, p0_Bounds'access);
            for i in tryStatements'range loop
               p0_Index(1) := Interfaces.C.long(i) - 1;
               p0_Tmp := GetObject (tryStatements(i).m_Kind);
               Hr := SafeArrayPutElement (p0_Parameters, p0_Index (p0_Index'first)'access, Convert (p0_Tmp));
            end loop;
            p_Value := To_Variant (p0_Parameters, VT_UNKNOWN);
         end;
         -- fixme parameter type := [array] System.CodeDom.CodeStatement[]
      
         Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
         ------------------------------------------------------------
         p_Index(1) := 1;
         declare
            use Interfaces.C;
            function Convert is new Ada.Unchecked_Conversion (IUnknown_Ptr, LPVOID);
         begin
            p1_Parameters := SafeArrayCreate (VT_UNKNOWN'enum_rep, 1, p1_Bounds'access);
            for i in catchClauses'range loop
               p1_Index(1) := Interfaces.C.long(i) - 1;
               p1_Tmp := GetObject (catchClauses(i).m_Kind);
               Hr := SafeArrayPutElement (p1_Parameters, p1_Index (p1_Index'first)'access, Convert (p1_Tmp));
            end loop;
            p_Value := To_Variant (p1_Parameters, VT_UNKNOWN);
         end;
         -- fixme parameter type := [array] System.CodeDom.CodeCatchClause[]
      
         Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
         NetFrameworkAdaRuntime.CreateInstance (RetVal.m_Kind, This_AssemblyName, This_TypeName, Instance, NetFrameworkWin32.BindingFlags'(CreateInstance)'Enum_rep, p_Parameters);
         Hr := SafeArrayDestroy (p0_Parameters);
         Hr := SafeArrayDestroy (p1_Parameters);
         Hr := SafeArrayDestroy(p_Parameters);
      end;
      end return;
   end;
   
   function Constructor
   (
      tryStatements : NetFrameworkBase.System.CodeDom.CodeStatement.Kind_Array;
      catchClauses : NetFrameworkBase.System.CodeDom.CodeCatchClause.Kind_Array;
      finallyStatements : NetFrameworkBase.System.CodeDom.CodeStatement.Kind_Array
   )
   return NetFrameworkBase.System.CodeDom.CodeTryCatchFinallyStatement.Kind_Ptr is
   begin
      return RetVal : NetFrameworkBase.System.CodeDom.CodeTryCatchFinallyStatement.Kind_Ptr := new NetFrameworkBase.System.CodeDom.CodeTryCatchFinallyStatement.Kind do
      declare
         function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
         Hr            : HResult := 0;
         p_Parameters  : aliased LPSAFEARRAY := null;
         p_Bounds      : aliased SAFEARRAYBOUND := (3 , 0);
         p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
         p_Value       : aliased VARIANT;
         p_Value_Ptr   : access VARIANT := p_Value'access;
         p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
         p0_Parameters : aliased LPSAFEARRAY := null;
         p0_Bounds     : aliased SAFEARRAYBOUND := (tryStatements'Length , 0);
         p0_Index      : aliased array(1..1) of aliased LONG := (others => 0);
         p0_Tmp        : aliased IUnknown_Ptr;
         p0_Tmp_Ptr    : access IUnknown_Ptr := p0_Tmp'access;
         p1_Parameters : aliased LPSAFEARRAY := null;
         p1_Bounds     : aliased SAFEARRAYBOUND := (catchClauses'Length , 0);
         p1_Index      : aliased array(1..1) of aliased LONG := (others => 0);
         p1_Tmp        : aliased IUnknown_Ptr;
         p1_Tmp_Ptr    : access IUnknown_Ptr := p1_Tmp'access;
         p2_Parameters : aliased LPSAFEARRAY := null;
         p2_Bounds     : aliased SAFEARRAYBOUND := (finallyStatements'Length , 0);
         p2_Index      : aliased array(1..1) of aliased LONG := (others => 0);
         p2_Tmp        : aliased IUnknown_Ptr;
         p2_Tmp_Ptr    : access IUnknown_Ptr := p2_Tmp'access;
      begin
         p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
         ------------------------------------------------------------
         p_Index(1) := 0;
         declare
            use Interfaces.C;
            function Convert is new Ada.Unchecked_Conversion (IUnknown_Ptr, LPVOID);
         begin
            p0_Parameters := SafeArrayCreate (VT_UNKNOWN'enum_rep, 1, p0_Bounds'access);
            for i in tryStatements'range loop
               p0_Index(1) := Interfaces.C.long(i) - 1;
               p0_Tmp := GetObject (tryStatements(i).m_Kind);
               Hr := SafeArrayPutElement (p0_Parameters, p0_Index (p0_Index'first)'access, Convert (p0_Tmp));
            end loop;
            p_Value := To_Variant (p0_Parameters, VT_UNKNOWN);
         end;
         -- fixme parameter type := [array] System.CodeDom.CodeStatement[]
      
         Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
         ------------------------------------------------------------
         p_Index(1) := 1;
         declare
            use Interfaces.C;
            function Convert is new Ada.Unchecked_Conversion (IUnknown_Ptr, LPVOID);
         begin
            p1_Parameters := SafeArrayCreate (VT_UNKNOWN'enum_rep, 1, p1_Bounds'access);
            for i in catchClauses'range loop
               p1_Index(1) := Interfaces.C.long(i) - 1;
               p1_Tmp := GetObject (catchClauses(i).m_Kind);
               Hr := SafeArrayPutElement (p1_Parameters, p1_Index (p1_Index'first)'access, Convert (p1_Tmp));
            end loop;
            p_Value := To_Variant (p1_Parameters, VT_UNKNOWN);
         end;
         -- fixme parameter type := [array] System.CodeDom.CodeCatchClause[]
      
         Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
         ------------------------------------------------------------
         p_Index(1) := 2;
         declare
            use Interfaces.C;
            function Convert is new Ada.Unchecked_Conversion (IUnknown_Ptr, LPVOID);
         begin
            p2_Parameters := SafeArrayCreate (VT_UNKNOWN'enum_rep, 1, p2_Bounds'access);
            for i in finallyStatements'range loop
               p2_Index(1) := Interfaces.C.long(i) - 1;
               p2_Tmp := GetObject (finallyStatements(i).m_Kind);
               Hr := SafeArrayPutElement (p2_Parameters, p2_Index (p2_Index'first)'access, Convert (p2_Tmp));
            end loop;
            p_Value := To_Variant (p2_Parameters, VT_UNKNOWN);
         end;
         -- fixme parameter type := [array] System.CodeDom.CodeStatement[]
      
         Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
         NetFrameworkAdaRuntime.CreateInstance (RetVal.m_Kind, This_AssemblyName, This_TypeName, Instance, NetFrameworkWin32.BindingFlags'(CreateInstance)'Enum_rep, p_Parameters);
         Hr := SafeArrayDestroy (p0_Parameters);
         Hr := SafeArrayDestroy (p1_Parameters);
         Hr := SafeArrayDestroy (p2_Parameters);
         Hr := SafeArrayDestroy(p_Parameters);
      end;
      end return;
   end;
   
end;
