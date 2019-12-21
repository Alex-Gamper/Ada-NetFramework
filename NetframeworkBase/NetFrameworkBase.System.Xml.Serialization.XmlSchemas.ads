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
limited with NetFrameworkBase.System.Xml.Schema.XmlSchema;
limited with NetFrameworkBase.System.Uri;
limited with NetFrameworkBase.System.Xml.XmlQualifiedName;
limited with NetFrameworkBase.System.Type_x;
limited with NetFrameworkBase.System.Xml.Schema.ValidationEventHandler;
limited with NetFrameworkBase.System.Collections.IList;
with NetFrameworkBase.System.Object;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Xml.Serialization.XmlSchemas is
   
   type Kind is new NetFrameworkBase.System.Collections.CollectionBase.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Item
      (
         this : in out XmlSchemas.Kind;
         index : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchema.Kind_Ptr;
      
      procedure Item
      (
         this : in out XmlSchemas.Kind;
         index : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Xml.Schema.XmlSchema.Kind_Ptr
      );
      
      function GetSchemas
      (
         this : in out XmlSchemas.Kind;
         ns : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Collections.IList.Kind_Ptr;
      
      function Add
      (
         this : in out XmlSchemas.Kind;
         schema : NetFrameworkBase.System.Xml.Schema.XmlSchema.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function Add
      (
         this : in out XmlSchemas.Kind;
         schema : NetFrameworkBase.System.Xml.Schema.XmlSchema.Kind_Ptr; 
         baseUri : NetFrameworkBase.System.Uri.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      procedure Add
      (
         this : in out XmlSchemas.Kind;
         schemas : NetFrameworkBase.System.Xml.Serialization.XmlSchemas.Kind_Ptr
      );
      
      procedure AddReference
      (
         this : in out XmlSchemas.Kind;
         schema : NetFrameworkBase.System.Xml.Schema.XmlSchema.Kind_Ptr
      );
      
      procedure Insert
      (
         this : in out XmlSchemas.Kind;
         index : NetFrameworkBase.Int32; 
         schema : NetFrameworkBase.System.Xml.Schema.XmlSchema.Kind_Ptr
      );
      
      function IndexOf
      (
         this : in out XmlSchemas.Kind;
         schema : NetFrameworkBase.System.Xml.Schema.XmlSchema.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function Contains
      (
         this : in out XmlSchemas.Kind;
         schema : NetFrameworkBase.System.Xml.Schema.XmlSchema.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function Contains
      (
         this : in out XmlSchemas.Kind;
         targetNamespace : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      procedure Remove
      (
         this : in out XmlSchemas.Kind;
         schema : NetFrameworkBase.System.Xml.Schema.XmlSchema.Kind_Ptr
      );
      
      procedure CopyTo
      (
         this : in out XmlSchemas.Kind;
         array_x : NetFrameworkBase.System.Xml.Schema.XmlSchema.Kind_Array; 
         index : NetFrameworkBase.Int32
      );
      
      function Find
      (
         this : in out XmlSchemas.Kind;
         name : NetFrameworkBase.System.Xml.XmlQualifiedName.Kind_Ptr; 
         type_x : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function IsCompiled
      (
         this : in out XmlSchemas.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Item
      (
         this : in out XmlSchemas.Kind;
         ns : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchema.Kind_Ptr;
      
      function IsDataSet
      (
         schema : NetFrameworkBase.System.Xml.Schema.XmlSchema.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      procedure Compile
      (
         this : in out XmlSchemas.Kind;
         handler : NetFrameworkBase.System.Xml.Schema.ValidationEventHandler.Kind_Ptr; 
         fullCompile : NetFrameworkBase.Boolean
      );
      
      function Constructor return NetFrameworkBase.System.Xml.Serialization.XmlSchemas.Kind_Ptr;
      
end;
