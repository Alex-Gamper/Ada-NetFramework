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
with NetFrameworkBase.System.Xml.XmlQualifiedName;
with NetFrameworkBase.System.Xml.XPath.XPathNavigator;
with NetFrameworkWin32;              use NetFrameworkWin32;
with NetFrameworkAdaRuntime;         use NetFrameworkAdaRuntime;
with Ada.Unchecked_Conversion;
with Interfaces.C;
--------------------------------------------------------------------------------
package body NetFrameworkBase.System.Xml.Xsl.Runtime.XsltLibrary is
   
   use type Interfaces.C.unsigned_short;
   
   This_AssemblyFile : constant Standard.Wide_String := "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\System.Data.SqlXml.dll";
   This_AssemblyName : constant Standard.Wide_String := "System.Data.SqlXml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089";
   This_TypeName     : constant Standard.Wide_String := "System.Xml.Xsl.Runtime.XsltLibrary";
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
   
   function ElementAvailable
   (
      this : in out XsltLibrary.Kind;
      name : NetFrameworkBase.System.Xml.XmlQualifiedName.Kind_Ptr
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
      p_MethodName  : BSTR := To_BSTR("ElementAvailable");
      p_RetVal      : aliased VARIANT;
      RetVal        : NetFrameworkBase.Boolean;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      p_Value := GetObject (name.m_Kind);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject(this.m_kind);
      p_RetVal := InvokeMethod (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, False);
   
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
      RetVal := From_Variant (p_RetVal);
      return RetVal;
   end;
   
   function FunctionAvailable
   (
      this : in out XsltLibrary.Kind;
      name : NetFrameworkBase.System.Xml.XmlQualifiedName.Kind_Ptr
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
      p_MethodName  : BSTR := To_BSTR("FunctionAvailable");
      p_RetVal      : aliased VARIANT;
      RetVal        : NetFrameworkBase.Boolean;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      p_Value := GetObject (name.m_Kind);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject(this.m_kind);
      p_RetVal := InvokeMethod (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, False);
   
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
      RetVal := From_Variant (p_RetVal);
      return RetVal;
   end;
   
   function RegisterDecimalFormatter
   (
      this : in out XsltLibrary.Kind;
      formatPicture : NetFrameworkBase.BSTR; 
      infinitySymbol : NetFrameworkBase.BSTR; 
      nanSymbol : NetFrameworkBase.BSTR; 
      characters : NetFrameworkBase.BSTR
   )
   return NetFrameworkBase.Double is
      function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
      Hr            : HResult := 0;
      p_Parameters  : aliased LPSAFEARRAY := null;
      p_Bounds      : aliased SAFEARRAYBOUND := (4 , 0);
      p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
      p_Value       : aliased VARIANT;
      p_Value_Ptr   : access VARIANT := p_Value'access;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("RegisterDecimalFormatter");
      p_RetVal      : aliased VARIANT;
      RetVal        : NetFrameworkBase.Double;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      p_Value := To_Variant(formatPicture);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 1;
      p_Value := To_Variant(infinitySymbol);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 2;
      p_Value := To_Variant(nanSymbol);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 3;
      p_Value := To_Variant(characters);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject(this.m_kind);
      p_RetVal := InvokeMethod (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, False);
   
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
      RetVal := From_Variant (p_RetVal);
      return RetVal;
   end;
   
   function FormatNumberStatic
   (
      this : in out XsltLibrary.Kind;
      value : NetFrameworkBase.Double; 
      decimalFormatterIndex : NetFrameworkBase.Double
   )
   return NetFrameworkBase.BSTR is
      function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
      Hr            : HResult := 0;
      p_Parameters  : aliased LPSAFEARRAY := null;
      p_Bounds      : aliased SAFEARRAYBOUND := (2 , 0);
      p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
      p_Value       : aliased VARIANT;
      p_Value_Ptr   : access VARIANT := p_Value'access;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("FormatNumberStatic");
      p_RetVal      : aliased VARIANT;
      RetVal        : NetFrameworkBase.BSTR;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      p_Value := To_Variant(value);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 1;
      p_Value := To_Variant(decimalFormatterIndex);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject(this.m_kind);
      p_RetVal := InvokeMethod (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, False);
   
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
      RetVal := From_Variant (p_RetVal);
      return RetVal;
   end;
   
   function LangToLcid
   (
      this : in out XsltLibrary.Kind;
      lang : NetFrameworkBase.BSTR; 
      forwardCompatibility : NetFrameworkBase.Boolean
   )
   return NetFrameworkBase.Int32 is
      function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
      Hr            : HResult := 0;
      p_Parameters  : aliased LPSAFEARRAY := null;
      p_Bounds      : aliased SAFEARRAYBOUND := (2 , 0);
      p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
      p_Value       : aliased VARIANT;
      p_Value_Ptr   : access VARIANT := p_Value'access;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("LangToLcid");
      p_RetVal      : aliased VARIANT;
      RetVal        : NetFrameworkBase.Int32;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      p_Value := To_Variant(lang);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 1;
      p_Value := To_Variant(forwardCompatibility);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject(this.m_kind);
      p_RetVal := InvokeMethod (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, False);
   
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
      RetVal := From_Variant (p_RetVal);
      return RetVal;
   end;
   
   function IsSameNodeSort
   (
      this : in out XsltLibrary.Kind;
      nav1 : NetFrameworkBase.System.Xml.XPath.XPathNavigator.Kind_Ptr; 
      nav2 : NetFrameworkBase.System.Xml.XPath.XPathNavigator.Kind_Ptr
   )
   return NetFrameworkBase.Boolean is
      function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
      Hr            : HResult := 0;
      p_Parameters  : aliased LPSAFEARRAY := null;
      p_Bounds      : aliased SAFEARRAYBOUND := (2 , 0);
      p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
      p_Value       : aliased VARIANT;
      p_Value_Ptr   : access VARIANT := p_Value'access;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("IsSameNodeSort");
      p_RetVal      : aliased VARIANT;
      RetVal        : NetFrameworkBase.Boolean;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      p_Value := GetObject (nav1.m_Kind);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 1;
      p_Value := GetObject (nav2.m_Kind);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject(this.m_kind);
      p_RetVal := InvokeMethod (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, False);
   
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
      RetVal := From_Variant (p_RetVal);
      return RetVal;
   end;
   
   function CheckScriptNamespace
   (
      this : in out XsltLibrary.Kind;
      nsUri : NetFrameworkBase.BSTR
   )
   return NetFrameworkBase.Int32 is
      function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
      Hr            : HResult := 0;
      p_Parameters  : aliased LPSAFEARRAY := null;
      p_Bounds      : aliased SAFEARRAYBOUND := (1 , 0);
      p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
      p_Value       : aliased VARIANT;
      p_Value_Ptr   : access VARIANT := p_Value'access;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("CheckScriptNamespace");
      p_RetVal      : aliased VARIANT;
      RetVal        : NetFrameworkBase.Int32;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      p_Value := To_Variant(nsUri);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject(this.m_kind);
      p_RetVal := InvokeMethod (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, False);
   
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
      RetVal := From_Variant (p_RetVal);
      return RetVal;
   end;
   
   function RegisterDecimalFormat
   (
      this : in out XsltLibrary.Kind;
      name : NetFrameworkBase.System.Xml.XmlQualifiedName.Kind_Ptr; 
      infinitySymbol : NetFrameworkBase.BSTR; 
      nanSymbol : NetFrameworkBase.BSTR; 
      characters : NetFrameworkBase.BSTR
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
      p_MethodName  : BSTR := To_BSTR("RegisterDecimalFormat");
      p_RetVal      : aliased VARIANT;
      RetVal        : NetFrameworkBase.Int32;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      p_Value := GetObject (name.m_Kind);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 1;
      p_Value := To_Variant(infinitySymbol);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 2;
      p_Value := To_Variant(nanSymbol);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 3;
      p_Value := To_Variant(characters);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject(this.m_kind);
      p_RetVal := InvokeMethod (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, False);
   
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
      RetVal := From_Variant (p_RetVal);
      return RetVal;
   end;
   
   function FormatNumberDynamic
   (
      this : in out XsltLibrary.Kind;
      value : NetFrameworkBase.Double; 
      formatPicture : NetFrameworkBase.BSTR; 
      decimalFormatName : NetFrameworkBase.System.Xml.XmlQualifiedName.Kind_Ptr; 
      errorMessageName : NetFrameworkBase.BSTR
   )
   return NetFrameworkBase.BSTR is
      function Convert is new Ada.Unchecked_Conversion (LPVARIANT,LPVOID);
      Hr            : HResult := 0;
      p_Parameters  : aliased LPSAFEARRAY := null;
      p_Bounds      : aliased SAFEARRAYBOUND := (4 , 0);
      p_Index       : aliased array(1..1) of aliased LONG := (others => 0);
      p_Value       : aliased VARIANT;
      p_Value_Ptr   : access VARIANT := p_Value'access;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("FormatNumberDynamic");
      p_RetVal      : aliased VARIANT;
      RetVal        : NetFrameworkBase.BSTR;
   begin
      p_Flags := NetFrameworkWin32.BindingFlags'(Public)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(InvokeMethod)'Enum_rep;
      p_Flags := p_Flags or NetFrameworkWin32.BindingFlags'(Instance)'Enum_rep;
      p_Parameters := SafeArrayCreate (VT_VARIANT'enum_rep, 1, p_Bounds'access);
      ------------------------------------------------------------
      p_Index(1) := 0;
      p_Value := To_Variant(value);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 1;
      p_Value := To_Variant(formatPicture);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 2;
      p_Value := GetObject (decimalFormatName.m_Kind);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
      ------------------------------------------------------------
      p_Index(1) := 3;
      p_Value := To_Variant(errorMessageName);
      Hr := SafeArrayPutElement (p_Parameters, p_Index(p_Index'first)'access, Convert (p_Value_Ptr));
   
      p_Target := GetObject(this.m_kind);
      p_RetVal := InvokeMethod (Instance, p_Target, p_MethodName, p_Flags, p_Parameters, False);
   
      Hr := SafeArrayDestroy (p_Parameters);
      SysFreeString (p_MethodName);
      RetVal := From_Variant (p_RetVal);
      return RetVal;
   end;
   
end;
