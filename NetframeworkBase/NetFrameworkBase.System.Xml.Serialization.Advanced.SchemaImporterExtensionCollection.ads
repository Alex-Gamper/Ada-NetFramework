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
with NetFrameworkBase.System.Collections.CollectionBase;
limited with NetFrameworkBase.System.Xml.Serialization.Advanced.SchemaImporterExtension;
limited with NetFrameworkBase.System.Type_x;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection is
   
   type Kind is new NetFrameworkBase.System.Collections.CollectionBase.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Add
      (
         this : in out SchemaImporterExtensionCollection.Kind;
         extension : NetFrameworkBase.System.Xml.Serialization.Advanced.SchemaImporterExtension.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      procedure Remove
      (
         this : in out SchemaImporterExtensionCollection.Kind;
         name : NetFrameworkBase.BSTR
      );
      
      procedure Clear
      (
         this : in out SchemaImporterExtensionCollection.Kind
      );
      
      function Item
      (
         this : in out SchemaImporterExtensionCollection.Kind;
         index : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Xml.Serialization.Advanced.SchemaImporterExtension.Kind_Ptr;
      
      procedure Item
      (
         this : in out SchemaImporterExtensionCollection.Kind;
         index : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Xml.Serialization.Advanced.SchemaImporterExtension.Kind_Ptr
      );
      
      procedure Insert
      (
         this : in out SchemaImporterExtensionCollection.Kind;
         index : NetFrameworkBase.Int32; 
         extension : NetFrameworkBase.System.Xml.Serialization.Advanced.SchemaImporterExtension.Kind_Ptr
      );
      
      function IndexOf
      (
         this : in out SchemaImporterExtensionCollection.Kind;
         extension : NetFrameworkBase.System.Xml.Serialization.Advanced.SchemaImporterExtension.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function Contains
      (
         this : in out SchemaImporterExtensionCollection.Kind;
         extension : NetFrameworkBase.System.Xml.Serialization.Advanced.SchemaImporterExtension.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      procedure Remove
      (
         this : in out SchemaImporterExtensionCollection.Kind;
         extension : NetFrameworkBase.System.Xml.Serialization.Advanced.SchemaImporterExtension.Kind_Ptr
      );
      
      procedure CopyTo
      (
         this : in out SchemaImporterExtensionCollection.Kind;
         array_x : NetFrameworkBase.System.Xml.Serialization.Advanced.SchemaImporterExtension.Kind_Array; 
         index : NetFrameworkBase.Int32
      );
      
      function Add
      (
         this : in out SchemaImporterExtensionCollection.Kind;
         name : NetFrameworkBase.BSTR; 
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function Constructor return NetFrameworkBase.System.Xml.Serialization.Advanced.SchemaImporterExtensionCollection.Kind_Ptr;
      
end;