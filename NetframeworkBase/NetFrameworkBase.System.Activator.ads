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
limited with NetFrameworkBase.System.Reflection.BindingFlags;
limited with NetFrameworkBase.System.Reflection.Binder;
limited with NetFrameworkBase.System.Globalization.CultureInfo;
limited with NetFrameworkBase.System.Security.Policy.Evidence;
limited with NetFrameworkBase.System.AppDomain;
limited with NetFrameworkBase.System.ActivationContext;
limited with NetFrameworkBase.System.Configuration.Assemblies.AssemblyHashAlgorithm;
limited with NetFrameworkBase.System.Runtime.Remoting.ObjectHandle;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Activator is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function CreateInstance
      (
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind; 
         binder : NetFrameworkBase.System.Reflection.Binder.Kind_Ptr; 
         args : NetFrameworkBase.System.Object.Kind_Array; 
         culture : NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function CreateInstance
      (
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind; 
         binder : NetFrameworkBase.System.Reflection.Binder.Kind_Ptr; 
         args : NetFrameworkBase.System.Object.Kind_Array; 
         culture : NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr; 
         activationAttributes : NetFrameworkBase.System.Object.Kind_Array
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function CreateInstance
      (
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         args : NetFrameworkBase.System.Object.Kind_Array
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function CreateInstance
      (
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         args : NetFrameworkBase.System.Object.Kind_Array; 
         activationAttributes : NetFrameworkBase.System.Object.Kind_Array
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function CreateInstance
      (
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function CreateInstance
      (
         assemblyName : NetFrameworkBase.BSTR; 
         typeName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Runtime.Remoting.ObjectHandle.Kind_Ptr;
      
      function CreateInstance
      (
         assemblyName : NetFrameworkBase.BSTR; 
         typeName : NetFrameworkBase.BSTR; 
         activationAttributes : NetFrameworkBase.System.Object.Kind_Array
      )
      return NetFrameworkBase.System.Runtime.Remoting.ObjectHandle.Kind_Ptr;
      
      function CreateInstance
      (
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         nonPublic : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function CreateInstanceFrom
      (
         assemblyFile : NetFrameworkBase.BSTR; 
         typeName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Runtime.Remoting.ObjectHandle.Kind_Ptr;
      
      function CreateInstanceFrom
      (
         assemblyFile : NetFrameworkBase.BSTR; 
         typeName : NetFrameworkBase.BSTR; 
         activationAttributes : NetFrameworkBase.System.Object.Kind_Array
      )
      return NetFrameworkBase.System.Runtime.Remoting.ObjectHandle.Kind_Ptr;
      
      function CreateInstance
      (
         assemblyName : NetFrameworkBase.BSTR; 
         typeName : NetFrameworkBase.BSTR; 
         ignoreCase : NetFrameworkBase.Boolean; 
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind; 
         binder : NetFrameworkBase.System.Reflection.Binder.Kind_Ptr; 
         args : NetFrameworkBase.System.Object.Kind_Array; 
         culture : NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr; 
         activationAttributes : NetFrameworkBase.System.Object.Kind_Array; 
         securityInfo : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr
      )
      return NetFrameworkBase.System.Runtime.Remoting.ObjectHandle.Kind_Ptr;
      
      function CreateInstance
      (
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
         assemblyFile : NetFrameworkBase.BSTR; 
         typeName : NetFrameworkBase.BSTR; 
         ignoreCase : NetFrameworkBase.Boolean; 
         bindingAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind; 
         binder : NetFrameworkBase.System.Reflection.Binder.Kind_Ptr; 
         args : NetFrameworkBase.System.Object.Kind_Array; 
         culture : NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr; 
         activationAttributes : NetFrameworkBase.System.Object.Kind_Array; 
         securityInfo : NetFrameworkBase.System.Security.Policy.Evidence.Kind_Ptr
      )
      return NetFrameworkBase.System.Runtime.Remoting.ObjectHandle.Kind_Ptr;
      
      function CreateInstanceFrom
      (
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
      
      function CreateInstance
      (
         domain : NetFrameworkBase.System.AppDomain.Kind_Ptr; 
         assemblyName : NetFrameworkBase.BSTR; 
         typeName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Runtime.Remoting.ObjectHandle.Kind_Ptr;
      
      function CreateInstance
      (
         domain : NetFrameworkBase.System.AppDomain.Kind_Ptr; 
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
      
      function CreateInstance
      (
         domain : NetFrameworkBase.System.AppDomain.Kind_Ptr; 
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
         domain : NetFrameworkBase.System.AppDomain.Kind_Ptr; 
         assemblyFile : NetFrameworkBase.BSTR; 
         typeName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Runtime.Remoting.ObjectHandle.Kind_Ptr;
      
      function CreateInstanceFrom
      (
         domain : NetFrameworkBase.System.AppDomain.Kind_Ptr; 
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
      
      function CreateInstanceFrom
      (
         domain : NetFrameworkBase.System.AppDomain.Kind_Ptr; 
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
      
      function CreateInstance
      (
         activationContext : NetFrameworkBase.System.ActivationContext.Kind_Ptr
      )
      return NetFrameworkBase.System.Runtime.Remoting.ObjectHandle.Kind_Ptr;
      
      function CreateInstance
      (
         activationContext : NetFrameworkBase.System.ActivationContext.Kind_Ptr; 
         activationCustomData : NetFrameworkBase.BSTR_Array
      )
      return NetFrameworkBase.System.Runtime.Remoting.ObjectHandle.Kind_Ptr;
      
      function CreateComInstanceFrom
      (
         assemblyName : NetFrameworkBase.BSTR; 
         typeName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Runtime.Remoting.ObjectHandle.Kind_Ptr;
      
      function CreateComInstanceFrom
      (
         assemblyName : NetFrameworkBase.BSTR; 
         typeName : NetFrameworkBase.BSTR; 
         hashValue : NetFrameworkBase.Byte_Array; 
         hashAlgorithm : NetFrameworkBase.System.Configuration.Assemblies.AssemblyHashAlgorithm.Kind
      )
      return NetFrameworkBase.System.Runtime.Remoting.ObjectHandle.Kind_Ptr;
      
      function GetObject
      (
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         url : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function GetObject
      (
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         url : NetFrameworkBase.BSTR; 
         state : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
end;
