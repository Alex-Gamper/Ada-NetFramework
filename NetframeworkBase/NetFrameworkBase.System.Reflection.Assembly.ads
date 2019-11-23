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
limited with NetFrameworkBase.System.Type_x;
limited with NetFrameworkBase.System.Security.Policy.Evidence;
limited with NetFrameworkBase.System.Configuration.Assemblies.AssemblyHashAlgorithm;
limited with NetFrameworkBase.System.Reflection.AssemblyName;
limited with NetFrameworkBase.System.Security.SecurityContextSource;
limited with NetFrameworkBase.System.Reflection.ModuleResolveEventHandler;
limited with NetFrameworkBase.System.Globalization.CultureInfo;
limited with NetFrameworkBase.System.Version;
limited with NetFrameworkBase.System.Runtime.Serialization.SerializationInfo;
limited with NetFrameworkBase.System.Runtime.Serialization.StreamingContext;
limited with NetFrameworkBase.System.Reflection.BindingFlags;
limited with NetFrameworkBase.System.Reflection.Binder;
limited with NetFrameworkBase.System.Reflection.MethodInfo;
limited with NetFrameworkBase.System.IO.Stream;
limited with NetFrameworkBase.System.Security.PermissionSet;
limited with NetFrameworkBase.System.Security.SecurityRuleSet;
limited with NetFrameworkBase.System.Reflection.Module;
limited with NetFrameworkBase.System.IO.FileStream;
limited with NetFrameworkBase.System.Reflection.ManifestResourceInfo;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Reflection.Assembly is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function GetAssembly
      (
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function op_Equality
      (
         left : NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr; 
         right : NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function op_Inequality
      (
         left : NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr; 
         right : NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function Equals
      (
         this : in out Assembly.Kind;
         o : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function GetHashCode
      (
         this : in out Assembly.Kind
      )
      return NetFrameworkBase.Int32;
      
      function LoadFrom
      (
         assemblyFile : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function ReflectionOnlyLoadFrom
      (
         assemblyFile : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function LoadFrom
      (
         assemblyFile : NetFrameworkBase.BSTR; 
         securityEvidence : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function LoadFrom
      (
         assemblyFile : NetFrameworkBase.BSTR; 
         securityEvidence : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr; 
         hashValue : NetFrameworkBase.Byte_Array; 
         hashAlgorithm : NetFrameworkBase.System.Configuration.Assemblies.AssemblyHashAlgorithm.Kind
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function LoadFrom
      (
         assemblyFile : NetFrameworkBase.BSTR; 
         hashValue : NetFrameworkBase.Byte_Array; 
         hashAlgorithm : NetFrameworkBase.System.Configuration.Assemblies.AssemblyHashAlgorithm.Kind
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function UnsafeLoadFrom
      (
         assemblyFile : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function Load
      (
         assemblyString : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function ReflectionOnlyLoad
      (
         assemblyString : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function Load
      (
         assemblyString : NetFrameworkBase.BSTR; 
         assemblySecurity : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function Load
      (
         assemblyRef : NetFrameworkBase.System.Reflection.AssemblyName.Kind_Ptr
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function Load
      (
         assemblyRef : NetFrameworkBase.System.Reflection.AssemblyName.Kind_Ptr; 
         assemblySecurity : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function LoadWithPartialName
      (
         partialName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function LoadWithPartialName
      (
         partialName : NetFrameworkBase.BSTR; 
         securityEvidence : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function Load
      (
         rawAssembly : NetFrameworkBase.Byte_Array
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function ReflectionOnlyLoad
      (
         rawAssembly : NetFrameworkBase.Byte_Array
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function Load
      (
         rawAssembly : NetFrameworkBase.Byte_Array; 
         rawSymbolStore : NetFrameworkBase.Byte_Array
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function Load
      (
         rawAssembly : NetFrameworkBase.Byte_Array; 
         rawSymbolStore : NetFrameworkBase.Byte_Array; 
         securityContextSource : NetFrameworkBase.System.Security.SecurityContextSource.Kind
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function Load
      (
         rawAssembly : NetFrameworkBase.Byte_Array; 
         rawSymbolStore : NetFrameworkBase.Byte_Array; 
         securityEvidence : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function LoadFile
      (
         path : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function LoadFile
      (
         path : NetFrameworkBase.BSTR; 
         securityEvidence : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function GetExecutingAssembly
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function GetCallingAssembly
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function GetEntryAssembly
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      procedure add_ModuleResolve
      (
         this : in out Assembly.Kind;
         value : NetFrameworkBase.System.Reflection.ModuleResolveEventHandler.Kind_Ptr
      );
      
      procedure remove_ModuleResolve
      (
         this : in out Assembly.Kind;
         value : NetFrameworkBase.System.Reflection.ModuleResolveEventHandler.Kind_Ptr
      );
      
      function CodeBase
      (
         this : in out Assembly.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function EscapedCodeBase
      (
         this : in out Assembly.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function GetName
      (
         this : in out Assembly.Kind
      )
      return NetFrameworkBase.System.Reflection.AssemblyName.Kind_Ptr;
      
      function GetName
      (
         this : in out Assembly.Kind;
         copiedName : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Reflection.AssemblyName.Kind_Ptr;
      
      function FullName
      (
         this : in out Assembly.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function EntryPoint
      (
         this : in out Assembly.Kind
      )
      return NetFrameworkBase.System.Reflection.MethodInfo.Kind_Ptr;
      
      function GetType
      (
         this : in out Assembly.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function GetType
      (
         this : in out Assembly.Kind;
         name : NetFrameworkBase.BSTR; 
         throwOnError : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function GetType
      (
         this : in out Assembly.Kind;
         name : NetFrameworkBase.BSTR; 
         throwOnError : NetFrameworkBase.Boolean; 
         ignoreCase : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function GetExportedTypes
      (
         this : in out Assembly.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Array;
      
      function GetTypes
      (
         this : in out Assembly.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Array;
      
      function GetManifestResourceStream
      (
         this : in out Assembly.Kind;
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.IO.Stream.Kind_Ptr;
      
      function GetManifestResourceStream
      (
         this : in out Assembly.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.IO.Stream.Kind_Ptr;
      
      function GetSatelliteAssembly
      (
         this : in out Assembly.Kind;
         culture : NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function GetSatelliteAssembly
      (
         this : in out Assembly.Kind;
         culture : NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr; 
         version : NetFrameworkBase.System.Version.Kind_Ptr
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function Evidence
      (
         this : in out Assembly.Kind
      )
      return NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr;
      
      function PermissionSet
      (
         this : in out Assembly.Kind
      )
      return NetFrameworkBase.System.Security.PermissionSet.Kind_Ptr;
      
      function IsFullyTrusted
      (
         this : in out Assembly.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function SecurityRuleSet
      (
         this : in out Assembly.Kind
      )
      return NetFrameworkBase.System.Security.SecurityRuleSet.Kind;
      
      procedure GetObjectData
      (
         this : in out Assembly.Kind;
         info : NetFrameworkBase.System.Runtime.Serialization.SerializationInfo.Kind_Ptr; 
         context : NetFrameworkBase.System.Runtime.Serialization.StreamingContext.Kind_Ptr
      );
      
      function ManifestModule
      (
         this : in out Assembly.Kind
      )
      return NetFrameworkBase.System.Reflection.Module.Kind_Ptr;
      
      function GetCustomAttributes
      (
         this : in out Assembly.Kind;
         inherit : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Object.Kind_Array;
      
      function GetCustomAttributes
      (
         this : in out Assembly.Kind;
         attributeType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         inherit : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Object.Kind_Array;
      
      function IsDefined
      (
         this : in out Assembly.Kind;
         attributeType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         inherit : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.Boolean;
      
      function ReflectionOnly
      (
         this : in out Assembly.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function LoadModule
      (
         this : in out Assembly.Kind;
         moduleName : NetFrameworkBase.BSTR; 
         rawModule : NetFrameworkBase.Byte_Array
      )
      return NetFrameworkBase.System.Reflection.Module.Kind_Ptr;
      
      function LoadModule
      (
         this : in out Assembly.Kind;
         moduleName : NetFrameworkBase.BSTR; 
         rawModule : NetFrameworkBase.Byte_Array; 
         rawSymbolStore : NetFrameworkBase.Byte_Array
      )
      return NetFrameworkBase.System.Reflection.Module.Kind_Ptr;
      
      function CreateInstance
      (
         this : in out Assembly.Kind;
         typeName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function CreateInstance
      (
         this : in out Assembly.Kind;
         typeName : NetFrameworkBase.BSTR; 
         ignoreCase : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function CreateInstance
      (
         this : in out Assembly.Kind;
         typeName : NetFrameworkBase.BSTR; 
         ignoreCase : NetFrameworkBase.Boolean; 
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind; 
         binder : NetFrameworkBase.System.Reflection.Binder.Kind_Ptr; 
         args : NetFrameworkBase.System.Object.Kind_Array; 
         culture : NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr; 
         activationAttributes : NetFrameworkBase.System.Object.Kind_Array
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function GetLoadedModules
      (
         this : in out Assembly.Kind
      )
      return NetFrameworkBase.System.Reflection.Module.Kind_Array;
      
      function GetLoadedModules
      (
         this : in out Assembly.Kind;
         getResourceModules : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Reflection.Module.Kind_Array;
      
      function GetModules
      (
         this : in out Assembly.Kind
      )
      return NetFrameworkBase.System.Reflection.Module.Kind_Array;
      
      function GetModules
      (
         this : in out Assembly.Kind;
         getResourceModules : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Reflection.Module.Kind_Array;
      
      function GetModule
      (
         this : in out Assembly.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Reflection.Module.Kind_Ptr;
      
      function GetFile
      (
         this : in out Assembly.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.IO.FileStream.Kind_Ptr;
      
      function GetFiles
      (
         this : in out Assembly.Kind
      )
      return NetFrameworkBase.System.IO.FileStream.Kind_Array;
      
      function GetFiles
      (
         this : in out Assembly.Kind;
         getResourceModules : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.IO.FileStream.Kind_Array;
      
      function GetManifestResourceNames
      (
         this : in out Assembly.Kind
      )
      return NetFrameworkBase.BSTR_Array;
      
      function GetReferencedAssemblies
      (
         this : in out Assembly.Kind
      )
      return NetFrameworkBase.System.Reflection.AssemblyName.Kind_Array;
      
      function GetManifestResourceInfo
      (
         this : in out Assembly.Kind;
         resourceName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Reflection.ManifestResourceInfo.Kind_Ptr;
      
      function ToString
      (
         this : in out Assembly.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Location
      (
         this : in out Assembly.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function ImageRuntimeVersion
      (
         this : in out Assembly.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function GlobalAssemblyCache
      (
         this : in out Assembly.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function HostContext
      (
         this : in out Assembly.Kind
      )
      return NetFrameworkBase.Int64;
      
      function IsDynamic
      (
         this : in out Assembly.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function CreateQualifiedName
      (
         assemblyName : NetFrameworkBase.BSTR; 
         typeName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
end;
