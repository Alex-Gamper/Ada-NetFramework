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
limited with NetFrameworkBase.System.Configuration.SettingsSerializeAs;
limited with NetFrameworkBase.System.Configuration.SettingsProvider;
limited with NetFrameworkBase.System.Configuration.SettingsAttributeDictionary;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Configuration.SettingsProperty is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Name
      (
         this : in out SettingsProperty.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Name
      (
         this : in out SettingsProperty.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function IsReadOnly
      (
         this : in out SettingsProperty.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure IsReadOnly
      (
         this : in out SettingsProperty.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function DefaultValue
      (
         this : in out SettingsProperty.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure DefaultValue
      (
         this : in out SettingsProperty.Kind;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      function PropertyType
      (
         this : in out SettingsProperty.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      procedure PropertyType
      (
         this : in out SettingsProperty.Kind;
         value : NetFrameworkBase.System.Type_x.Kind_Ptr
      );
      
      function SerializeAs
      (
         this : in out SettingsProperty.Kind
      )
      return NetFrameworkBase.System.Configuration.SettingsSerializeAs.Kind;
      
      procedure SerializeAs
      (
         this : in out SettingsProperty.Kind;
         value : NetFrameworkBase.System.Configuration.SettingsSerializeAs.Kind
      );
      
      function Provider
      (
         this : in out SettingsProperty.Kind
      )
      return NetFrameworkBase.System.Configuration.SettingsProvider.Kind_Ptr;
      
      procedure Provider
      (
         this : in out SettingsProperty.Kind;
         value : NetFrameworkBase.System.Configuration.SettingsProvider.Kind_Ptr
      );
      
      function Attributes
      (
         this : in out SettingsProperty.Kind
      )
      return NetFrameworkBase.System.Configuration.SettingsAttributeDictionary.Kind_Ptr;
      
      function ThrowOnErrorDeserializing
      (
         this : in out SettingsProperty.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure ThrowOnErrorDeserializing
      (
         this : in out SettingsProperty.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function ThrowOnErrorSerializing
      (
         this : in out SettingsProperty.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure ThrowOnErrorSerializing
      (
         this : in out SettingsProperty.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Configuration.SettingsProperty.Kind_Ptr;
      
      function Constructor
      (
         name : NetFrameworkBase.BSTR;
         propertyType : NetFrameworkBase.System.Type_x.Kind_Ptr;
         provider : NetFrameworkBase.System.Configuration.SettingsProvider.Kind_Ptr;
         isReadOnly : NetFrameworkBase.Boolean;
         defaultValue : NetFrameworkBase.System.Object.Kind_Ptr;
         serializeAs : NetFrameworkBase.System.Configuration.SettingsSerializeAs.Kind;
         attributes : NetFrameworkBase.System.Configuration.SettingsAttributeDictionary.Kind_Ptr;
         throwOnErrorDeserializing : NetFrameworkBase.Boolean;
         throwOnErrorSerializing : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Configuration.SettingsProperty.Kind_Ptr;
      
      function Constructor
      (
         propertyToCopy : NetFrameworkBase.System.Configuration.SettingsProperty.Kind_Ptr
      )
      return NetFrameworkBase.System.Configuration.SettingsProperty.Kind_Ptr;
      
end;