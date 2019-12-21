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
with NetFrameworkBase.System.MarshalByRefObject;
limited with NetFrameworkBase.System.AssemblyLoadEventHandler;
limited with NetFrameworkBase.System.ResolveEventHandler;
limited with NetFrameworkBase.System.Reflection.AssemblyName;
limited with NetFrameworkBase.System.Reflection.Emit.AssemblyBuilderAccess;
limited with NetFrameworkBase.System.Security.Policy.Evidence;
limited with NetFrameworkBase.System.Security.PermissionSet;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Reflection.BindingFlags;
limited with NetFrameworkBase.System.Reflection.Binder;
limited with NetFrameworkBase.System.Globalization.CultureInfo;
limited with NetFrameworkBase.System.Security.Policy.PolicyLevel;
limited with NetFrameworkBase.System.Security.Principal.IPrincipal;
limited with NetFrameworkBase.System.Security.Principal.PrincipalPolicy;
limited with NetFrameworkBase.System.CrossAppDomainDelegate;
limited with NetFrameworkBase.System.EventHandler;
limited with NetFrameworkBase.System.UnhandledExceptionEventHandler;
limited with NetFrameworkBase.System.AppDomainSetup;
limited with NetFrameworkBase.System.Security.Policy.StrongName;
limited with NetFrameworkBase.System.Security.SecurityContextSource;
limited with NetFrameworkBase.System.Configuration.Assemblies.AssemblyHashAlgorithm;
limited with NetFrameworkBase.System.Security.IPermission;
limited with NetFrameworkBase.System.AppDomainInitializer;
limited with NetFrameworkBase.System.Reflection.Emit.AssemblyBuilder;
limited with NetFrameworkBase.System.Runtime.Remoting.ObjectHandle;
limited with NetFrameworkBase.System.Reflection.Assembly;
limited with NetFrameworkBase.System.Type_x;
limited with NetFrameworkBase.System.AppDomainManager;
limited with NetFrameworkBase.System.ActivationContext;
limited with NetFrameworkBase.System.ApplicationIdentity;
limited with NetFrameworkBase.System.Security.Policy.ApplicationTrust;
limited with NetFrameworkBase.System.TimeSpan;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.AppDomain is
   
   type Kind is new NetFrameworkBase.System.MarshalByRefObject.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      procedure add_AssemblyLoad
      (
         this : in out AppDomain.Kind;
         value : NetFrameworkBase.System.AssemblyLoadEventHandler.Kind_Ptr
      );
      
      procedure remove_AssemblyLoad
      (
         this : in out AppDomain.Kind;
         value : NetFrameworkBase.System.AssemblyLoadEventHandler.Kind_Ptr
      );
      
      procedure add_TypeResolve
      (
         this : in out AppDomain.Kind;
         value : NetFrameworkBase.System.ResolveEventHandler.Kind_Ptr
      );
      
      procedure remove_TypeResolve
      (
         this : in out AppDomain.Kind;
         value : NetFrameworkBase.System.ResolveEventHandler.Kind_Ptr
      );
      
      procedure add_ResourceResolve
      (
         this : in out AppDomain.Kind;
         value : NetFrameworkBase.System.ResolveEventHandler.Kind_Ptr
      );
      
      procedure remove_ResourceResolve
      (
         this : in out AppDomain.Kind;
         value : NetFrameworkBase.System.ResolveEventHandler.Kind_Ptr
      );
      
      procedure add_AssemblyResolve
      (
         this : in out AppDomain.Kind;
         value : NetFrameworkBase.System.ResolveEventHandler.Kind_Ptr
      );
      
      procedure remove_AssemblyResolve
      (
         this : in out AppDomain.Kind;
         value : NetFrameworkBase.System.ResolveEventHandler.Kind_Ptr
      );
      
      function DefineDynamicAssembly
      (
         this : in out AppDomain.Kind;
         name : NetFrameworkBase.System.Reflection.AssemblyName.Kind_Ptr; 
         access_x : NetFrameworkBase.System.Reflection.Emit.AssemblyBuilderAccess.Kind
      )
      return NetFrameworkBase.System.Reflection.Emit.AssemblyBuilder.Kind_Ptr;
      
      function DefineDynamicAssembly
      (
         this : in out AppDomain.Kind;
         name : NetFrameworkBase.System.Reflection.AssemblyName.Kind_Ptr; 
         access_x : NetFrameworkBase.System.Reflection.Emit.AssemblyBuilderAccess.Kind; 
         dir : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Reflection.Emit.AssemblyBuilder.Kind_Ptr;
      
      function DefineDynamicAssembly
      (
         this : in out AppDomain.Kind;
         name : NetFrameworkBase.System.Reflection.AssemblyName.Kind_Ptr; 
         access_x : NetFrameworkBase.System.Reflection.Emit.AssemblyBuilderAccess.Kind; 
         evidence : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr
      )
      return NetFrameworkBase.System.Reflection.Emit.AssemblyBuilder.Kind_Ptr;
      
      function DefineDynamicAssembly
      (
         this : in out AppDomain.Kind;
         name : NetFrameworkBase.System.Reflection.AssemblyName.Kind_Ptr; 
         access_x : NetFrameworkBase.System.Reflection.Emit.AssemblyBuilderAccess.Kind; 
         requiredPermissions : NetFrameworkBase.System.Security.PermissionSet.Kind_Ptr; 
         optionalPermissions : NetFrameworkBase.System.Security.PermissionSet.Kind_Ptr; 
         refusedPermissions : NetFrameworkBase.System.Security.PermissionSet.Kind_Ptr
      )
      return NetFrameworkBase.System.Reflection.Emit.AssemblyBuilder.Kind_Ptr;
      
      function DefineDynamicAssembly
      (
         this : in out AppDomain.Kind;
         name : NetFrameworkBase.System.Reflection.AssemblyName.Kind_Ptr; 
         access_x : NetFrameworkBase.System.Reflection.Emit.AssemblyBuilderAccess.Kind; 
         dir : NetFrameworkBase.BSTR; 
         evidence : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr
      )
      return NetFrameworkBase.System.Reflection.Emit.AssemblyBuilder.Kind_Ptr;
      
      function DefineDynamicAssembly
      (
         this : in out AppDomain.Kind;
         name : NetFrameworkBase.System.Reflection.AssemblyName.Kind_Ptr; 
         access_x : NetFrameworkBase.System.Reflection.Emit.AssemblyBuilderAccess.Kind; 
         dir : NetFrameworkBase.BSTR; 
         requiredPermissions : NetFrameworkBase.System.Security.PermissionSet.Kind_Ptr; 
         optionalPermissions : NetFrameworkBase.System.Security.PermissionSet.Kind_Ptr; 
         refusedPermissions : NetFrameworkBase.System.Security.PermissionSet.Kind_Ptr
      )
      return NetFrameworkBase.System.Reflection.Emit.AssemblyBuilder.Kind_Ptr;
      
      function DefineDynamicAssembly
      (
         this : in out AppDomain.Kind;
         name : NetFrameworkBase.System.Reflection.AssemblyName.Kind_Ptr; 
         access_x : NetFrameworkBase.System.Reflection.Emit.AssemblyBuilderAccess.Kind; 
         evidence : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr; 
         requiredPermissions : NetFrameworkBase.System.Security.PermissionSet.Kind_Ptr; 
         optionalPermissions : NetFrameworkBase.System.Security.PermissionSet.Kind_Ptr; 
         refusedPermissions : NetFrameworkBase.System.Security.PermissionSet.Kind_Ptr
      )
      return NetFrameworkBase.System.Reflection.Emit.AssemblyBuilder.Kind_Ptr;
      
      function DefineDynamicAssembly
      (
         this : in out AppDomain.Kind;
         name : NetFrameworkBase.System.Reflection.AssemblyName.Kind_Ptr; 
         access_x : NetFrameworkBase.System.Reflection.Emit.AssemblyBuilderAccess.Kind; 
         dir : NetFrameworkBase.BSTR; 
         evidence : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr; 
         requiredPermissions : NetFrameworkBase.System.Security.PermissionSet.Kind_Ptr; 
         optionalPermissions : NetFrameworkBase.System.Security.PermissionSet.Kind_Ptr; 
         refusedPermissions : NetFrameworkBase.System.Security.PermissionSet.Kind_Ptr
      )
      return NetFrameworkBase.System.Reflection.Emit.AssemblyBuilder.Kind_Ptr;
      
      function DefineDynamicAssembly
      (
         this : in out AppDomain.Kind;
         name : NetFrameworkBase.System.Reflection.AssemblyName.Kind_Ptr; 
         access_x : NetFrameworkBase.System.Reflection.Emit.AssemblyBuilderAccess.Kind; 
         dir : NetFrameworkBase.BSTR; 
         evidence : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr; 
         requiredPermissions : NetFrameworkBase.System.Security.PermissionSet.Kind_Ptr; 
         optionalPermissions : NetFrameworkBase.System.Security.PermissionSet.Kind_Ptr; 
         refusedPermissions : NetFrameworkBase.System.Security.PermissionSet.Kind_Ptr; 
         isSynchronized : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Reflection.Emit.AssemblyBuilder.Kind_Ptr;
      
      function CreateInstance
      (
         this : in out AppDomain.Kind;
         assemblyName : NetFrameworkBase.BSTR; 
         typeName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Runtime.Remoting.ObjectHandle.Kind_Ptr;
      
      function CreateInstanceFrom
      (
         this : in out AppDomain.Kind;
         assemblyFile : NetFrameworkBase.BSTR; 
         typeName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Runtime.Remoting.ObjectHandle.Kind_Ptr;
      
      function CreateInstance
      (
         this : in out AppDomain.Kind;
         assemblyName : NetFrameworkBase.BSTR; 
         typeName : NetFrameworkBase.BSTR; 
         activationAttributes : NetFrameworkBase.System.Object.Kind_Array
      )
      return NetFrameworkBase.System.Runtime.Remoting.ObjectHandle.Kind_Ptr;
      
      function CreateInstanceFrom
      (
         this : in out AppDomain.Kind;
         assemblyFile : NetFrameworkBase.BSTR; 
         typeName : NetFrameworkBase.BSTR; 
         activationAttributes : NetFrameworkBase.System.Object.Kind_Array
      )
      return NetFrameworkBase.System.Runtime.Remoting.ObjectHandle.Kind_Ptr;
      
      function CreateInstance
      (
         this : in out AppDomain.Kind;
         assemblyName : NetFrameworkBase.BSTR; 
         typeName : NetFrameworkBase.BSTR; 
         ignoreCase : NetFrameworkBase.Boolean; 
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind; 
         binder : NetFrameworkBase.System.Reflection.Binder.Kind_Ptr; 
         args : NetFrameworkBase.System.Object.Kind_Array; 
         culture : NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr; 
         activationAttributes : NetFrameworkBase.System.Object.Kind_Array; 
         securityAttributes : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr
      )
      return NetFrameworkBase.System.Runtime.Remoting.ObjectHandle.Kind_Ptr;
      
      function CreateInstanceFrom
      (
         this : in out AppDomain.Kind;
         assemblyFile : NetFrameworkBase.BSTR; 
         typeName : NetFrameworkBase.BSTR; 
         ignoreCase : NetFrameworkBase.Boolean; 
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind; 
         binder : NetFrameworkBase.System.Reflection.Binder.Kind_Ptr; 
         args : NetFrameworkBase.System.Object.Kind_Array; 
         culture : NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr; 
         activationAttributes : NetFrameworkBase.System.Object.Kind_Array; 
         securityAttributes : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr
      )
      return NetFrameworkBase.System.Runtime.Remoting.ObjectHandle.Kind_Ptr;
      
      function Load
      (
         this : in out AppDomain.Kind;
         assemblyRef : NetFrameworkBase.System.Reflection.AssemblyName.Kind_Ptr
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function Load
      (
         this : in out AppDomain.Kind;
         assemblyString : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function Load
      (
         this : in out AppDomain.Kind;
         rawAssembly : NetFrameworkBase.Byte_Array
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function Load
      (
         this : in out AppDomain.Kind;
         rawAssembly : NetFrameworkBase.Byte_Array; 
         rawSymbolStore : NetFrameworkBase.Byte_Array
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function Load
      (
         this : in out AppDomain.Kind;
         rawAssembly : NetFrameworkBase.Byte_Array; 
         rawSymbolStore : NetFrameworkBase.Byte_Array; 
         securityEvidence : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function Load
      (
         this : in out AppDomain.Kind;
         assemblyRef : NetFrameworkBase.System.Reflection.AssemblyName.Kind_Ptr; 
         assemblySecurity : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function Load
      (
         this : in out AppDomain.Kind;
         assemblyString : NetFrameworkBase.BSTR; 
         assemblySecurity : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr;
      
      function ExecuteAssembly
      (
         this : in out AppDomain.Kind;
         assemblyFile : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Int32;
      
      function ExecuteAssembly
      (
         this : in out AppDomain.Kind;
         assemblyFile : NetFrameworkBase.BSTR; 
         assemblySecurity : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function ExecuteAssembly
      (
         this : in out AppDomain.Kind;
         assemblyFile : NetFrameworkBase.BSTR; 
         assemblySecurity : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr; 
         args : NetFrameworkBase.BSTR_Array
      )
      return NetFrameworkBase.Int32;
      
      function CurrentDomain
      return NetFrameworkBase.System.AppDomain.Kind_Ptr;
      
      function Evidence
      (
         this : in out AppDomain.Kind
      )
      return NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr;
      
      function FriendlyName
      (
         this : in out AppDomain.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function BaseDirectory
      (
         this : in out AppDomain.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function RelativeSearchPath
      (
         this : in out AppDomain.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function GetAssemblies
      (
         this : in out AppDomain.Kind
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Array;
      
      procedure AppendPrivatePath
      (
         this : in out AppDomain.Kind;
         path : NetFrameworkBase.BSTR
      );
      
      procedure ClearPrivatePath
      (
         this : in out AppDomain.Kind
      );
      
      procedure ClearShadowCopyPath
      (
         this : in out AppDomain.Kind
      );
      
      procedure SetCachePath
      (
         this : in out AppDomain.Kind;
         path : NetFrameworkBase.BSTR
      );
      
      procedure SetData
      (
         this : in out AppDomain.Kind;
         name : NetFrameworkBase.BSTR; 
         data : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      function GetData
      (
         this : in out AppDomain.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure Unload
      (
         domain : NetFrameworkBase.System.AppDomain.Kind_Ptr
      )
      ;
      
      procedure SetAppDomainPolicy
      (
         this : in out AppDomain.Kind;
         domainPolicy : NetFrameworkBase.System.Security.Policy.PolicyLevel.Kind_Ptr
      );
      
      procedure SetThreadPrincipal
      (
         this : in out AppDomain.Kind;
         principal : NetFrameworkBase.System.Security.Principal.IPrincipal.Kind_Ptr
      );
      
      procedure SetPrincipalPolicy
      (
         this : in out AppDomain.Kind;
         policy : NetFrameworkBase.System.Security.Principal.PrincipalPolicy.Kind
      );
      
      function InitializeLifetimeService
      (
         this : in out AppDomain.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure DoCallBack
      (
         this : in out AppDomain.Kind;
         callBackDelegate : NetFrameworkBase.System.CrossAppDomainDelegate.Kind_Ptr
      );
      
      function DynamicDirectory
      (
         this : in out AppDomain.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function CreateDomain
      (
         friendlyName : NetFrameworkBase.BSTR; 
         securityInfo : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr
      )
      return NetFrameworkBase.System.AppDomain.Kind_Ptr;
      
      function CreateDomain
      (
         friendlyName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.AppDomain.Kind_Ptr;
      
      procedure add_ProcessExit
      (
         this : in out AppDomain.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_ProcessExit
      (
         this : in out AppDomain.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_DomainUnload
      (
         this : in out AppDomain.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_DomainUnload
      (
         this : in out AppDomain.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_UnhandledException
      (
         this : in out AppDomain.Kind;
         value : NetFrameworkBase.System.UnhandledExceptionEventHandler.Kind_Ptr
      );
      
      procedure remove_UnhandledException
      (
         this : in out AppDomain.Kind;
         value : NetFrameworkBase.System.UnhandledExceptionEventHandler.Kind_Ptr
      );
      
      function CreateDomain
      (
         friendlyName : NetFrameworkBase.BSTR; 
         securityInfo : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr; 
         info : NetFrameworkBase.System.AppDomainSetup.Kind_Ptr
      )
      return NetFrameworkBase.System.AppDomain.Kind_Ptr;
      
      function CreateDomain
      (
         friendlyName : NetFrameworkBase.BSTR; 
         securityInfo : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr; 
         info : NetFrameworkBase.System.AppDomainSetup.Kind_Ptr; 
         grantSet : NetFrameworkBase.System.Security.PermissionSet.Kind_Ptr; 
         fullTrustAssemblies : NetFrameworkBase.System.Security.Policy.StrongName.Kind_Array
      )
      return NetFrameworkBase.System.AppDomain.Kind_Ptr;
      
      procedure SetShadowCopyPath
      (
         this : in out AppDomain.Kind;
         path : NetFrameworkBase.BSTR
      );
      
      function MonitoringIsEnabled
      return NetFrameworkBase.Boolean;
      
      procedure MonitoringIsEnabled
      (
         value : NetFrameworkBase.Boolean
      )
      ;
      
      function MonitoringSurvivedProcessMemorySize
      return NetFrameworkBase.Int64;
      
      function GetType
      (
         this : in out AppDomain.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      procedure add_ReflectionOnlyAssemblyResolve
      (
         this : in out AppDomain.Kind;
         value : NetFrameworkBase.System.ResolveEventHandler.Kind_Ptr
      );
      
      procedure remove_ReflectionOnlyAssemblyResolve
      (
         this : in out AppDomain.Kind;
         value : NetFrameworkBase.System.ResolveEventHandler.Kind_Ptr
      );
      
      function DomainManager
      (
         this : in out AppDomain.Kind
      )
      return NetFrameworkBase.System.AppDomainManager.Kind_Ptr;
      
      function ApplyPolicy
      (
         this : in out AppDomain.Kind;
         assemblyName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function CreateComInstanceFrom
      (
         this : in out AppDomain.Kind;
         assemblyName : NetFrameworkBase.BSTR; 
         typeName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Runtime.Remoting.ObjectHandle.Kind_Ptr;
      
      function CreateComInstanceFrom
      (
         this : in out AppDomain.Kind;
         assemblyFile : NetFrameworkBase.BSTR; 
         typeName : NetFrameworkBase.BSTR; 
         hashValue : NetFrameworkBase.Byte_Array; 
         hashAlgorithm : NetFrameworkBase.System.Configuration.Assemblies.AssemblyHashAlgorithm.Kind
      )
      return NetFrameworkBase.System.Runtime.Remoting.ObjectHandle.Kind_Ptr;
      
      function CreateInstance
      (
         this : in out AppDomain.Kind;
         assemblyName : NetFrameworkBase.BSTR; 
         typeName : NetFrameworkBase.BSTR; 
         ignoreCase : NetFrameworkBase.Boolean; 
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind; 
         binder : NetFrameworkBase.System.Reflection.Binder.Kind_Ptr; 
         args : NetFrameworkBase.System.Object.Kind_Array; 
         culture : NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr; 
         activationAttributes : NetFrameworkBase.System.Object.Kind_Array
      )
      return NetFrameworkBase.System.Runtime.Remoting.ObjectHandle.Kind_Ptr;
      
      function CreateInstanceFrom
      (
         this : in out AppDomain.Kind;
         assemblyFile : NetFrameworkBase.BSTR; 
         typeName : NetFrameworkBase.BSTR; 
         ignoreCase : NetFrameworkBase.Boolean; 
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind; 
         binder : NetFrameworkBase.System.Reflection.Binder.Kind_Ptr; 
         args : NetFrameworkBase.System.Object.Kind_Array; 
         culture : NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr; 
         activationAttributes : NetFrameworkBase.System.Object.Kind_Array
      )
      return NetFrameworkBase.System.Runtime.Remoting.ObjectHandle.Kind_Ptr;
      
      function ExecuteAssembly
      (
         this : in out AppDomain.Kind;
         assemblyFile : NetFrameworkBase.BSTR; 
         args : NetFrameworkBase.BSTR_Array
      )
      return NetFrameworkBase.Int32;
      
      function ExecuteAssembly
      (
         this : in out AppDomain.Kind;
         assemblyFile : NetFrameworkBase.BSTR; 
         assemblySecurity : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr; 
         args : NetFrameworkBase.BSTR_Array; 
         hashValue : NetFrameworkBase.Byte_Array; 
         hashAlgorithm : NetFrameworkBase.System.Configuration.Assemblies.AssemblyHashAlgorithm.Kind
      )
      return NetFrameworkBase.Int32;
      
      function ExecuteAssembly
      (
         this : in out AppDomain.Kind;
         assemblyFile : NetFrameworkBase.BSTR; 
         args : NetFrameworkBase.BSTR_Array; 
         hashValue : NetFrameworkBase.Byte_Array; 
         hashAlgorithm : NetFrameworkBase.System.Configuration.Assemblies.AssemblyHashAlgorithm.Kind
      )
      return NetFrameworkBase.Int32;
      
      function ExecuteAssemblyByName
      (
         this : in out AppDomain.Kind;
         assemblyName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Int32;
      
      function ExecuteAssemblyByName
      (
         this : in out AppDomain.Kind;
         assemblyName : NetFrameworkBase.BSTR; 
         assemblySecurity : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function ExecuteAssemblyByName
      (
         this : in out AppDomain.Kind;
         assemblyName : NetFrameworkBase.BSTR; 
         assemblySecurity : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr; 
         args : NetFrameworkBase.BSTR_Array
      )
      return NetFrameworkBase.Int32;
      
      function ExecuteAssemblyByName
      (
         this : in out AppDomain.Kind;
         assemblyName : NetFrameworkBase.BSTR; 
         args : NetFrameworkBase.BSTR_Array
      )
      return NetFrameworkBase.Int32;
      
      function ExecuteAssemblyByName
      (
         this : in out AppDomain.Kind;
         assemblyName : NetFrameworkBase.System.Reflection.AssemblyName.Kind_Ptr; 
         assemblySecurity : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr; 
         args : NetFrameworkBase.BSTR_Array
      )
      return NetFrameworkBase.Int32;
      
      function ExecuteAssemblyByName
      (
         this : in out AppDomain.Kind;
         assemblyName : NetFrameworkBase.System.Reflection.AssemblyName.Kind_Ptr; 
         args : NetFrameworkBase.BSTR_Array
      )
      return NetFrameworkBase.Int32;
      
      function ShadowCopyFiles
      (
         this : in out AppDomain.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function ToString
      (
         this : in out AppDomain.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function ReflectionOnlyGetAssemblies
      (
         this : in out AppDomain.Kind
      )
      return NetFrameworkBase.System.Reflection.Assembly.Kind_Array;
      
      function IsFinalizingForUnload
      (
         this : in out AppDomain.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure SetData
      (
         this : in out AppDomain.Kind;
         name : NetFrameworkBase.BSTR; 
         data : NetFrameworkBase.System.Object.Kind_Ptr; 
         permission : NetFrameworkBase.System.Security.IPermission.Kind_Ptr
      );
      
      function GetCurrentThreadId
      return NetFrameworkBase.Int32;
      
      function ActivationContext
      (
         this : in out AppDomain.Kind
      )
      return NetFrameworkBase.System.ActivationContext.Kind_Ptr;
      
      function ApplicationIdentity
      (
         this : in out AppDomain.Kind
      )
      return NetFrameworkBase.System.ApplicationIdentity.Kind_Ptr;
      
      function ApplicationTrust
      (
         this : in out AppDomain.Kind
      )
      return NetFrameworkBase.System.Security.Policy.ApplicationTrust.Kind_Ptr;
      
      function CreateDomain
      (
         friendlyName : NetFrameworkBase.BSTR; 
         securityInfo : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr; 
         appBasePath : NetFrameworkBase.BSTR; 
         appRelativeSearchPath : NetFrameworkBase.BSTR; 
         shadowCopyFiles : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.AppDomain.Kind_Ptr;
      
      function CreateDomain
      (
         friendlyName : NetFrameworkBase.BSTR; 
         securityInfo : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr; 
         appBasePath : NetFrameworkBase.BSTR; 
         appRelativeSearchPath : NetFrameworkBase.BSTR; 
         shadowCopyFiles : NetFrameworkBase.Boolean; 
         adInit : NetFrameworkBase.System.AppDomainInitializer.Kind_Ptr; 
         adInitArgs : NetFrameworkBase.BSTR_Array
      )
      return NetFrameworkBase.System.AppDomain.Kind_Ptr;
      
      procedure SetShadowCopyFiles
      (
         this : in out AppDomain.Kind
      );
      
      procedure SetDynamicBase
      (
         this : in out AppDomain.Kind;
         path : NetFrameworkBase.BSTR
      );
      
      function SetupInformation
      (
         this : in out AppDomain.Kind
      )
      return NetFrameworkBase.System.AppDomainSetup.Kind_Ptr;
      
      function PermissionSet
      (
         this : in out AppDomain.Kind
      )
      return NetFrameworkBase.System.Security.PermissionSet.Kind_Ptr;
      
      function IsFullyTrusted
      (
         this : in out AppDomain.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsHomogenous
      (
         this : in out AppDomain.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function CreateInstanceAndUnwrap
      (
         this : in out AppDomain.Kind;
         assemblyName : NetFrameworkBase.BSTR; 
         typeName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function CreateInstanceAndUnwrap
      (
         this : in out AppDomain.Kind;
         assemblyName : NetFrameworkBase.BSTR; 
         typeName : NetFrameworkBase.BSTR; 
         activationAttributes : NetFrameworkBase.System.Object.Kind_Array
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function CreateInstanceAndUnwrap
      (
         this : in out AppDomain.Kind;
         assemblyName : NetFrameworkBase.BSTR; 
         typeName : NetFrameworkBase.BSTR; 
         ignoreCase : NetFrameworkBase.Boolean; 
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind; 
         binder : NetFrameworkBase.System.Reflection.Binder.Kind_Ptr; 
         args : NetFrameworkBase.System.Object.Kind_Array; 
         culture : NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr; 
         activationAttributes : NetFrameworkBase.System.Object.Kind_Array; 
         securityAttributes : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function CreateInstanceAndUnwrap
      (
         this : in out AppDomain.Kind;
         assemblyName : NetFrameworkBase.BSTR; 
         typeName : NetFrameworkBase.BSTR; 
         ignoreCase : NetFrameworkBase.Boolean; 
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind; 
         binder : NetFrameworkBase.System.Reflection.Binder.Kind_Ptr; 
         args : NetFrameworkBase.System.Object.Kind_Array; 
         culture : NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr; 
         activationAttributes : NetFrameworkBase.System.Object.Kind_Array
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function CreateInstanceFromAndUnwrap
      (
         this : in out AppDomain.Kind;
         assemblyName : NetFrameworkBase.BSTR; 
         typeName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function CreateInstanceFromAndUnwrap
      (
         this : in out AppDomain.Kind;
         assemblyName : NetFrameworkBase.BSTR; 
         typeName : NetFrameworkBase.BSTR; 
         activationAttributes : NetFrameworkBase.System.Object.Kind_Array
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function CreateInstanceFromAndUnwrap
      (
         this : in out AppDomain.Kind;
         assemblyName : NetFrameworkBase.BSTR; 
         typeName : NetFrameworkBase.BSTR; 
         ignoreCase : NetFrameworkBase.Boolean; 
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind; 
         binder : NetFrameworkBase.System.Reflection.Binder.Kind_Ptr; 
         args : NetFrameworkBase.System.Object.Kind_Array; 
         culture : NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr; 
         activationAttributes : NetFrameworkBase.System.Object.Kind_Array; 
         securityAttributes : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function CreateInstanceFromAndUnwrap
      (
         this : in out AppDomain.Kind;
         assemblyFile : NetFrameworkBase.BSTR; 
         typeName : NetFrameworkBase.BSTR; 
         ignoreCase : NetFrameworkBase.Boolean; 
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind; 
         binder : NetFrameworkBase.System.Reflection.Binder.Kind_Ptr; 
         args : NetFrameworkBase.System.Object.Kind_Array; 
         culture : NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr; 
         activationAttributes : NetFrameworkBase.System.Object.Kind_Array
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function Id
      (
         this : in out AppDomain.Kind
      )
      return NetFrameworkBase.Int32;
      
      function IsDefaultAppDomain
      (
         this : in out AppDomain.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function MonitoringTotalProcessorTime
      (
         this : in out AppDomain.Kind
      )
      return NetFrameworkBase.System.TimeSpan.Kind_Ptr;
      
      function MonitoringTotalAllocatedMemorySize
      (
         this : in out AppDomain.Kind
      )
      return NetFrameworkBase.Int64;
      
      function MonitoringSurvivedMemorySize
      (
         this : in out AppDomain.Kind
      )
      return NetFrameworkBase.Int64;
      
end;