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
with NetFrameworkBase.System.ComponentModel.AsyncCompletedEventArgs;
with NetFrameworkBase.System.ApplicationIdentity;
with NetFrameworkBase.System.Version;
with NetFrameworkBase.System.Uri;
with NetFrameworkBase.System.Xml.XmlReader;
with NetFrameworkBase.System.ActivationContext;
with NetFrameworkWin32;              use NetFrameworkWin32;
with NetFrameworkAdaRuntime;         use NetFrameworkAdaRuntime;
with Ada.Unchecked_Conversion;
with Interfaces.C;
--------------------------------------------------------------------------------
package body NetFrameworkBase.System.Deployment.Application.GetManifestCompletedEventArgs is
   
   use type Interfaces.C.unsigned_short;
   
   This_AssemblyFile : constant Standard.Wide_String := "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\System.Deployment.dll";
   This_AssemblyName : constant Standard.Wide_String := "System.Deployment, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a";
   This_TypeName     : constant Standard.Wide_String := "System.Deployment.Application.GetManifestCompletedEventArgs";
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
   
   function ApplicationIdentity
   (
      this : in out GetManifestCompletedEventArgs.Kind
   )
   return NetFrameworkBase.System.ApplicationIdentity.Kind_Ptr is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("ApplicationIdentity");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      RetVal        : NetFrameworkBase.System.ApplicationIdentity.Kind_Ptr := new NetFrameworkBase.System.ApplicationIdentity.Kind;
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
   
   function Version
   (
      this : in out GetManifestCompletedEventArgs.Kind
   )
   return NetFrameworkBase.System.Version.Kind_Ptr is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("Version");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      RetVal        : NetFrameworkBase.System.Version.Kind_Ptr := new NetFrameworkBase.System.Version.Kind;
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
   
   function IsCached
   (
      this : in out GetManifestCompletedEventArgs.Kind
   )
   return NetFrameworkBase.Boolean is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("IsCached");
      p_RetVal      : aliased VARIANT;
      RetVal        : NetFrameworkBase.Boolean;
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
   
   function ProductName
   (
      this : in out GetManifestCompletedEventArgs.Kind
   )
   return NetFrameworkBase.BSTR is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("ProductName");
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
   
   function SupportUri
   (
      this : in out GetManifestCompletedEventArgs.Kind
   )
   return NetFrameworkBase.System.Uri.Kind_Ptr is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("SupportUri");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      RetVal        : NetFrameworkBase.System.Uri.Kind_Ptr := new NetFrameworkBase.System.Uri.Kind;
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
   
   function LogFilePath
   (
      this : in out GetManifestCompletedEventArgs.Kind
   )
   return NetFrameworkBase.BSTR is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("LogFilePath");
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
   
   function DeploymentManifest
   (
      this : in out GetManifestCompletedEventArgs.Kind
   )
   return NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("DeploymentManifest");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      RetVal        : NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr := new NetFrameworkBase.System.Xml.XmlReader.Kind;
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
   
   function ApplicationManifest
   (
      this : in out GetManifestCompletedEventArgs.Kind
   )
   return NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("ApplicationManifest");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      RetVal        : NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr := new NetFrameworkBase.System.Xml.XmlReader.Kind;
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
   
   function ActivationContext
   (
      this : in out GetManifestCompletedEventArgs.Kind
   )
   return NetFrameworkBase.System.ActivationContext.Kind_Ptr is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("ActivationContext");
      p_RetVal      : aliased VARIANT;
      p_NetRetVal   : aliased IUnknown_Ptr := null;
      RetVal        : NetFrameworkBase.System.ActivationContext.Kind_Ptr := new NetFrameworkBase.System.ActivationContext.Kind;
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
   
   function SubscriptionIdentity
   (
      this : in out GetManifestCompletedEventArgs.Kind
   )
   return NetFrameworkBase.BSTR is
      Hr            : HResult := 0;
      p_Flags       : aliased NetFrameworkBase.UInt32 := 0;
      p_Target      : aliased VARIANT;
      p_MethodName  : BSTR := To_BSTR("SubscriptionIdentity");
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
   
end;