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
limited with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Type_x;
limited with NetFrameworkBase.System.Runtime.Serialization.SerializationInfo;
limited with NetFrameworkBase.System.Runtime.Serialization.StreamingContext;
limited with NetFrameworkBase.System.Reflection.ModuleResolveEventHandler;
limited with NetFrameworkBase.System.Globalization.CultureInfo;
limited with NetFrameworkBase.System.Version;
limited with NetFrameworkBase.System.Reflection.BindingFlags;
limited with NetFrameworkBase.System.Reflection.Binder;
limited with NetFrameworkBase.System.Reflection.AssemblyName;
limited with NetFrameworkBase.System.Reflection.MethodInfo;
limited with NetFrameworkBase.System.IO.Stream;
limited with NetFrameworkBase.System.IO.FileStream;
limited with NetFrameworkBase.System.Reflection.ManifestResourceInfo;
limited with NetFrameworkBase.System.Security.Policy.Evidence;
limited with NetFrameworkBase.System.Reflection.Assembly;
limited with NetFrameworkBase.System.Reflection.Module;
with NetFrameworkWin32;
with NetFrameworkAdaRuntime;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Runtime.InteropServices.IAssembly is
   
   type Kind is interface and NetFrameworkWin32.IDispatch;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array (Natural range <>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function ToString
      (
         this : in out IAssembly.Kind;
         RetVal : access NetFrameworkBase.BSTR
      ) return HResult is abstract;
      
      function Equals
      (
         this : in out IAssembly.Kind;
         other : NetFrameworkBase.System.Object.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function GetHashCode
      (
         this : in out IAssembly.Kind;
         RetVal : access NetFrameworkBase.Int32
      ) return HResult is abstract;
      
      function GetType
      (
         this : in out IAssembly.Kind;
         RetVal : access NetFrameworkBase.System.Type_x.Kind
      ) return HResult is abstract;
      
      function get_CodeBase
      (
         this : in out IAssembly.Kind;
         RetVal : access NetFrameworkBase.BSTR
      ) return HResult is abstract;
      
      function get_EscapedCodeBase
      (
         this : in out IAssembly.Kind;
         RetVal : access NetFrameworkBase.BSTR
      ) return HResult is abstract;
      
      function GetName
      (
         this : in out IAssembly.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.AssemblyName.Kind
      ) return HResult is abstract;
      
      function GetName
      (
         this : in out IAssembly.Kind;
         copiedName : NetFrameworkBase.Boolean;
         RetVal : access NetFrameworkBase.System.Reflection.AssemblyName.Kind
      ) return HResult is abstract;
      
      function get_FullName
      (
         this : in out IAssembly.Kind;
         RetVal : access NetFrameworkBase.BSTR
      ) return HResult is abstract;
      
      function get_EntryPoint
      (
         this : in out IAssembly.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.MethodInfo.Kind
      ) return HResult is abstract;
      
      function GetType
      (
         this : in out IAssembly.Kind;
         name : NetFrameworkBase.BSTR;
         RetVal : access NetFrameworkBase.System.Type_x.Kind
      ) return HResult is abstract;
      
      function GetType
      (
         this : in out IAssembly.Kind;
         name : NetFrameworkBase.BSTR;
         throwOnError : NetFrameworkBase.Boolean;
         RetVal : access NetFrameworkBase.System.Type_x.Kind
      ) return HResult is abstract;
      
      function GetExportedTypes
      (
         this : in out IAssembly.Kind;
         RetVal : access NetFrameworkBase.System.Type_x.Kind_Array
      ) return HResult is abstract;
      
      function GetTypes
      (
         this : in out IAssembly.Kind;
         RetVal : access NetFrameworkBase.System.Type_x.Kind_Array
      ) return HResult is abstract;
      
      function GetManifestResourceStream
      (
         this : in out IAssembly.Kind;
         type_x : NetFrameworkBase.System.Type_x.Kind;
         name : NetFrameworkBase.BSTR;
         RetVal : access NetFrameworkBase.System.IO.Stream.Kind
      ) return HResult is abstract;
      
      function GetManifestResourceStream
      (
         this : in out IAssembly.Kind;
         name : NetFrameworkBase.BSTR;
         RetVal : access NetFrameworkBase.System.IO.Stream.Kind
      ) return HResult is abstract;
      
      function GetFile
      (
         this : in out IAssembly.Kind;
         name : NetFrameworkBase.BSTR;
         RetVal : access NetFrameworkBase.System.IO.FileStream.Kind
      ) return HResult is abstract;
      
      function GetFiles
      (
         this : in out IAssembly.Kind;
         RetVal : access NetFrameworkBase.System.IO.FileStream.Kind_Array
      ) return HResult is abstract;
      
      function GetFiles
      (
         this : in out IAssembly.Kind;
         getResourceModules : NetFrameworkBase.Boolean;
         RetVal : access NetFrameworkBase.System.IO.FileStream.Kind_Array
      ) return HResult is abstract;
      
      function GetManifestResourceNames
      (
         this : in out IAssembly.Kind;
         RetVal : access NetFrameworkBase.BSTR_Array
      ) return HResult is abstract;
      
      function GetManifestResourceInfo
      (
         this : in out IAssembly.Kind;
         resourceName : NetFrameworkBase.BSTR;
         RetVal : access NetFrameworkBase.System.Reflection.ManifestResourceInfo.Kind
      ) return HResult is abstract;
      
      function get_Location
      (
         this : in out IAssembly.Kind;
         RetVal : access NetFrameworkBase.BSTR
      ) return HResult is abstract;
      
      function get_Evidence
      (
         this : in out IAssembly.Kind;
         RetVal : access NetFrameworkBase.System.Security.Policy.Evidence.Kind
      ) return HResult is abstract;
      
      function GetCustomAttributes
      (
         this : in out IAssembly.Kind;
         attributeType : NetFrameworkBase.System.Type_x.Kind;
         inherit : NetFrameworkBase.Boolean;
         RetVal : access NetFrameworkBase.System.Object.Kind_Array
      ) return HResult is abstract;
      
      function GetCustomAttributes
      (
         this : in out IAssembly.Kind;
         inherit : NetFrameworkBase.Boolean;
         RetVal : access NetFrameworkBase.System.Object.Kind_Array
      ) return HResult is abstract;
      
      function IsDefined
      (
         this : in out IAssembly.Kind;
         attributeType : NetFrameworkBase.System.Type_x.Kind;
         inherit : NetFrameworkBase.Boolean;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function GetObjectData
      (
         this : in out IAssembly.Kind;
         info : NetFrameworkBase.System.Runtime.Serialization.SerializationInfo.Kind;
         context : NetFrameworkBase.System.Runtime.Serialization.StreamingContext.Kind
      ) return HResult is abstract;
      
      function add_ModuleResolve
      (
         this : in out IAssembly.Kind;
         value : NetFrameworkBase.System.Reflection.ModuleResolveEventHandler.Kind
      ) return HResult is abstract;
      
      function remove_ModuleResolve
      (
         this : in out IAssembly.Kind;
         value : NetFrameworkBase.System.Reflection.ModuleResolveEventHandler.Kind
      ) return HResult is abstract;
      
      function GetType
      (
         this : in out IAssembly.Kind;
         name : NetFrameworkBase.BSTR;
         throwOnError : NetFrameworkBase.Boolean;
         ignoreCase : NetFrameworkBase.Boolean;
         RetVal : access NetFrameworkBase.System.Type_x.Kind
      ) return HResult is abstract;
      
      function GetSatelliteAssembly
      (
         this : in out IAssembly.Kind;
         culture : NetFrameworkBase.System.Globalization.CultureInfo.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.Assembly.Kind
      ) return HResult is abstract;
      
      function GetSatelliteAssembly
      (
         this : in out IAssembly.Kind;
         culture : NetFrameworkBase.System.Globalization.CultureInfo.Kind;
         version : NetFrameworkBase.System.Version.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.Assembly.Kind
      ) return HResult is abstract;
      
      function LoadModule
      (
         this : in out IAssembly.Kind;
         moduleName : NetFrameworkBase.BSTR;
         rawModule : NetFrameworkBase.Byte_Array;
         RetVal : access NetFrameworkBase.System.Reflection.Module.Kind
      ) return HResult is abstract;
      
      function LoadModule
      (
         this : in out IAssembly.Kind;
         moduleName : NetFrameworkBase.BSTR;
         rawModule : NetFrameworkBase.Byte_Array;
         rawSymbolStore : NetFrameworkBase.Byte_Array;
         RetVal : access NetFrameworkBase.System.Reflection.Module.Kind
      ) return HResult is abstract;
      
      function CreateInstance
      (
         this : in out IAssembly.Kind;
         typeName : NetFrameworkBase.BSTR;
         RetVal : access NetFrameworkBase.System.Object.Kind
      ) return HResult is abstract;
      
      function CreateInstance
      (
         this : in out IAssembly.Kind;
         typeName : NetFrameworkBase.BSTR;
         ignoreCase : NetFrameworkBase.Boolean;
         RetVal : access NetFrameworkBase.System.Object.Kind
      ) return HResult is abstract;
      
      function CreateInstance
      (
         this : in out IAssembly.Kind;
         typeName : NetFrameworkBase.BSTR;
         ignoreCase : NetFrameworkBase.Boolean;
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind;
         binder : NetFrameworkBase.System.Reflection.Binder.Kind;
         args : NetFrameworkBase.System.Object.Kind_Array;
         culture : NetFrameworkBase.System.Globalization.CultureInfo.Kind;
         activationAttributes : NetFrameworkBase.System.Object.Kind_Array;
         RetVal : access NetFrameworkBase.System.Object.Kind
      ) return HResult is abstract;
      
      function GetLoadedModules
      (
         this : in out IAssembly.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.Module.Kind_Array
      ) return HResult is abstract;
      
      function GetLoadedModules
      (
         this : in out IAssembly.Kind;
         getResourceModules : NetFrameworkBase.Boolean;
         RetVal : access NetFrameworkBase.System.Reflection.Module.Kind_Array
      ) return HResult is abstract;
      
      function GetModules
      (
         this : in out IAssembly.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.Module.Kind_Array
      ) return HResult is abstract;
      
      function GetModules
      (
         this : in out IAssembly.Kind;
         getResourceModules : NetFrameworkBase.Boolean;
         RetVal : access NetFrameworkBase.System.Reflection.Module.Kind_Array
      ) return HResult is abstract;
      
      function GetModule
      (
         this : in out IAssembly.Kind;
         name : NetFrameworkBase.BSTR;
         RetVal : access NetFrameworkBase.System.Reflection.Module.Kind
      ) return HResult is abstract;
      
      function GetReferencedAssemblies
      (
         this : in out IAssembly.Kind;
         RetVal : access NetFrameworkBase.System.Reflection.AssemblyName.Kind_Array
      ) return HResult is abstract;
      
      function get_GlobalAssemblyCache
      (
         this : in out IAssembly.Kind;
         RetVal : access NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
   private
   
      This_AssemblyFile : constant Standard.Wide_String := "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\mscorlib.dll";
      This_AssemblyName : constant Standard.Wide_String := "mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089";
      This_TypeName     : constant Standard.Wide_String := "System.Runtime.InteropServices._Assembly";
   
end;
