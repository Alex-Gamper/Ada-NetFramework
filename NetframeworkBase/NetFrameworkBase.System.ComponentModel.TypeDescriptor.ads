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
limited with NetFrameworkBase.System.ComponentModel.IComNativeDescriptorHandler;
limited with NetFrameworkBase.System.Type_x;
limited with NetFrameworkBase.System.Attribute;
limited with NetFrameworkBase.System.Collections.Hashtable;
limited with NetFrameworkBase.System.ComponentModel.TypeDescriptionProvider;
limited with NetFrameworkBase.System.ComponentModel.IComponent;
limited with NetFrameworkBase.System.ComponentModel.EventDescriptor;
limited with NetFrameworkBase.System.IServiceProvider;
limited with NetFrameworkBase.System.ComponentModel.PropertyDescriptor;
limited with NetFrameworkBase.System.Reflection.Module;
limited with NetFrameworkBase.System.Reflection.Assembly;
limited with NetFrameworkBase.System.Collections.IList;
limited with NetFrameworkBase.System.ComponentModel.RefreshEventHandler;
limited with NetFrameworkBase.System.ComponentModel.Design.IDesigner;
limited with NetFrameworkBase.System.ComponentModel.AttributeCollection;
limited with NetFrameworkBase.System.ComponentModel.TypeConverter;
limited with NetFrameworkBase.System.ComponentModel.EventDescriptorCollection;
limited with NetFrameworkBase.System.ComponentModel.PropertyDescriptorCollection;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.ComponentModel.TypeDescriptor is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function ComNativeDescriptorHandler
      return NetFrameworkBase.System.ComponentModel.IComNativeDescriptorHandler.Kind_Ptr;
      
      procedure ComNativeDescriptorHandler
      (
         value : NetFrameworkBase.System.ComponentModel.IComNativeDescriptorHandler.Kind_Ptr
      )
      ;
      
      function ComObjectType
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function InterfaceType
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function AddAttributes
      (
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         attributes : NetFrameworkBase.System.Attribute.Kind_Array
      )
      return NetFrameworkBase.System.ComponentModel.TypeDescriptionProvider.Kind_Ptr;
      
      function AddAttributes
      (
         instance_x : NetFrameworkBase.System.Object.Kind_Ptr; 
         attributes : NetFrameworkBase.System.Attribute.Kind_Array
      )
      return NetFrameworkBase.System.ComponentModel.TypeDescriptionProvider.Kind_Ptr;
      
      procedure AddEditorTable
      (
         editorBaseType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         table : NetFrameworkBase.System.Collections.Hashtable.Kind_Ptr
      )
      ;
      
      procedure AddProvider
      (
         provider : NetFrameworkBase.System.ComponentModel.TypeDescriptionProvider.Kind_Ptr; 
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      ;
      
      procedure AddProvider
      (
         provider : NetFrameworkBase.System.ComponentModel.TypeDescriptionProvider.Kind_Ptr; 
         instance_x : NetFrameworkBase.System.Object.Kind_Ptr
      )
      ;
      
      procedure AddProviderTransparent
      (
         provider : NetFrameworkBase.System.ComponentModel.TypeDescriptionProvider.Kind_Ptr; 
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      ;
      
      procedure AddProviderTransparent
      (
         provider : NetFrameworkBase.System.ComponentModel.TypeDescriptionProvider.Kind_Ptr; 
         instance_x : NetFrameworkBase.System.Object.Kind_Ptr
      )
      ;
      
      procedure CreateAssociation
      (
         primary : NetFrameworkBase.System.Object.Kind_Ptr; 
         secondary : NetFrameworkBase.System.Object.Kind_Ptr
      )
      ;
      
      function CreateDesigner
      (
         component : NetFrameworkBase.System.ComponentModel.IComponent.Kind_Ptr; 
         designerBaseType : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.System.ComponentModel.Design.IDesigner.Kind_Ptr;
      
      function CreateEvent
      (
         componentType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         name : NetFrameworkBase.BSTR; 
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         attributes : NetFrameworkBase.System.Attribute.Kind_Array
      )
      return NetFrameworkBase.System.ComponentModel.EventDescriptor.Kind_Ptr;
      
      function CreateEvent
      (
         componentType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         oldEventDescriptor : NetFrameworkBase.System.ComponentModel.EventDescriptor.Kind_Ptr; 
         attributes : NetFrameworkBase.System.Attribute.Kind_Array
      )
      return NetFrameworkBase.System.ComponentModel.EventDescriptor.Kind_Ptr;
      
      function CreateInstance
      (
         provider : NetFrameworkBase.System.IServiceProvider.Kind_Ptr; 
         objectType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         argTypes : NetFrameworkBase.System.Type_x.Kind_Array; 
         args : NetFrameworkBase.System.Object.Kind_Array
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function CreateProperty
      (
         componentType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         name : NetFrameworkBase.BSTR; 
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         attributes : NetFrameworkBase.System.Attribute.Kind_Array
      )
      return NetFrameworkBase.System.ComponentModel.PropertyDescriptor.Kind_Ptr;
      
      function CreateProperty
      (
         componentType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         oldPropertyDescriptor : NetFrameworkBase.System.ComponentModel.PropertyDescriptor.Kind_Ptr; 
         attributes : NetFrameworkBase.System.Attribute.Kind_Array
      )
      return NetFrameworkBase.System.ComponentModel.PropertyDescriptor.Kind_Ptr;
      
      function GetAssociation
      (
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         primary : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function GetAttributes
      (
         component : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.System.ComponentModel.AttributeCollection.Kind_Ptr;
      
      function GetClassName
      (
         component : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.BSTR;
      
      function GetClassName
      (
         component : NetFrameworkBase.System.Object.Kind_Ptr; 
         noCustomTypeDesc : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.BSTR;
      
      function GetComponentName
      (
         component : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.BSTR;
      
      function GetComponentName
      (
         component : NetFrameworkBase.System.Object.Kind_Ptr; 
         noCustomTypeDesc : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.BSTR;
      
      function GetConverter
      (
         component : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.System.ComponentModel.TypeConverter.Kind_Ptr;
      
      function GetConverter
      (
         component : NetFrameworkBase.System.Object.Kind_Ptr; 
         noCustomTypeDesc : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.ComponentModel.TypeConverter.Kind_Ptr;
      
      function GetDefaultEvent
      (
         component : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.System.ComponentModel.EventDescriptor.Kind_Ptr;
      
      function GetDefaultEvent
      (
         component : NetFrameworkBase.System.Object.Kind_Ptr; 
         noCustomTypeDesc : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.ComponentModel.EventDescriptor.Kind_Ptr;
      
      function GetDefaultProperty
      (
         component : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.System.ComponentModel.PropertyDescriptor.Kind_Ptr;
      
      function GetDefaultProperty
      (
         component : NetFrameworkBase.System.Object.Kind_Ptr; 
         noCustomTypeDesc : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.ComponentModel.PropertyDescriptor.Kind_Ptr;
      
      function GetEditor
      (
         component : NetFrameworkBase.System.Object.Kind_Ptr; 
         editorBaseType : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function GetEditor
      (
         component : NetFrameworkBase.System.Object.Kind_Ptr; 
         editorBaseType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         noCustomTypeDesc : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function GetEvents
      (
         component : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.System.ComponentModel.EventDescriptorCollection.Kind_Ptr;
      
      function GetEvents
      (
         component : NetFrameworkBase.System.Object.Kind_Ptr; 
         noCustomTypeDesc : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.ComponentModel.EventDescriptorCollection.Kind_Ptr;
      
      function GetEvents
      (
         component : NetFrameworkBase.System.Object.Kind_Ptr; 
         attributes : NetFrameworkBase.System.Attribute.Kind_Array
      )
      return NetFrameworkBase.System.ComponentModel.EventDescriptorCollection.Kind_Ptr;
      
      function GetFullComponentName
      (
         component : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.BSTR;
      
      function GetProperties
      (
         component : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.System.ComponentModel.PropertyDescriptorCollection.Kind_Ptr;
      
      function GetProperties
      (
         component : NetFrameworkBase.System.Object.Kind_Ptr; 
         noCustomTypeDesc : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.ComponentModel.PropertyDescriptorCollection.Kind_Ptr;
      
      function GetProperties
      (
         component : NetFrameworkBase.System.Object.Kind_Ptr; 
         attributes : NetFrameworkBase.System.Attribute.Kind_Array
      )
      return NetFrameworkBase.System.ComponentModel.PropertyDescriptorCollection.Kind_Ptr;
      
      function GetProperties
      (
         component : NetFrameworkBase.System.Object.Kind_Ptr; 
         attributes : NetFrameworkBase.System.Attribute.Kind_Array; 
         noCustomTypeDesc : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.ComponentModel.PropertyDescriptorCollection.Kind_Ptr;
      
      function GetProvider
      (
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.System.ComponentModel.TypeDescriptionProvider.Kind_Ptr;
      
      function GetProvider
      (
         instance_x : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.System.ComponentModel.TypeDescriptionProvider.Kind_Ptr;
      
      function GetReflectionType
      (
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function GetReflectionType
      (
         instance_x : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      procedure Refresh
      (
         component : NetFrameworkBase.System.Object.Kind_Ptr
      )
      ;
      
      procedure Refresh
      (
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      ;
      
      procedure Refresh
      (
         module : NetFrameworkBase.System.Reflection.Module.Kind_Ptr
      )
      ;
      
      procedure Refresh
      (
         assembly : NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr
      )
      ;
      
      procedure RemoveAssociation
      (
         primary : NetFrameworkBase.System.Object.Kind_Ptr; 
         secondary : NetFrameworkBase.System.Object.Kind_Ptr
      )
      ;
      
      procedure RemoveAssociations
      (
         primary : NetFrameworkBase.System.Object.Kind_Ptr
      )
      ;
      
      procedure RemoveProvider
      (
         provider : NetFrameworkBase.System.ComponentModel.TypeDescriptionProvider.Kind_Ptr; 
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      ;
      
      procedure RemoveProvider
      (
         provider : NetFrameworkBase.System.ComponentModel.TypeDescriptionProvider.Kind_Ptr; 
         instance_x : NetFrameworkBase.System.Object.Kind_Ptr
      )
      ;
      
      procedure RemoveProviderTransparent
      (
         provider : NetFrameworkBase.System.ComponentModel.TypeDescriptionProvider.Kind_Ptr; 
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      ;
      
      procedure RemoveProviderTransparent
      (
         provider : NetFrameworkBase.System.ComponentModel.TypeDescriptionProvider.Kind_Ptr; 
         instance_x : NetFrameworkBase.System.Object.Kind_Ptr
      )
      ;
      
      procedure SortDescriptorArray
      (
         infos : NetFrameworkBase.System.Collections.IList.Kind_Ptr
      )
      ;
      
      procedure remove_Refreshed
      (
         value : NetFrameworkBase.System.ComponentModel.RefreshEventHandler.Kind_Ptr
      )
      ;
      
      function GetClassName
      (
         componentType : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.BSTR;
      
      function GetDefaultEvent
      (
         componentType : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.System.ComponentModel.EventDescriptor.Kind_Ptr;
      
      function GetDefaultProperty
      (
         componentType : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.System.ComponentModel.PropertyDescriptor.Kind_Ptr;
      
      function GetEditor
      (
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         editorBaseType : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function GetEvents
      (
         componentType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         attributes : NetFrameworkBase.System.Attribute.Kind_Array
      )
      return NetFrameworkBase.System.ComponentModel.EventDescriptorCollection.Kind_Ptr;
      
      function GetEvents
      (
         component : NetFrameworkBase.System.Object.Kind_Ptr; 
         attributes : NetFrameworkBase.System.Attribute.Kind_Array; 
         noCustomTypeDesc : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.ComponentModel.EventDescriptorCollection.Kind_Ptr;
      
      function GetProperties
      (
         componentType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         attributes : NetFrameworkBase.System.Attribute.Kind_Array
      )
      return NetFrameworkBase.System.ComponentModel.PropertyDescriptorCollection.Kind_Ptr;
      
      procedure add_Refreshed
      (
         value : NetFrameworkBase.System.ComponentModel.RefreshEventHandler.Kind_Ptr
      )
      ;
      
      function GetAttributes
      (
         componentType : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.System.ComponentModel.AttributeCollection.Kind_Ptr;
      
      function GetAttributes
      (
         component : NetFrameworkBase.System.Object.Kind_Ptr; 
         noCustomTypeDesc : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.ComponentModel.AttributeCollection.Kind_Ptr;
      
      function GetConverter
      (
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.System.ComponentModel.TypeConverter.Kind_Ptr;
      
      function GetEvents
      (
         componentType : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.System.ComponentModel.EventDescriptorCollection.Kind_Ptr;
      
      function GetProperties
      (
         componentType : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.System.ComponentModel.PropertyDescriptorCollection.Kind_Ptr;
      
end;