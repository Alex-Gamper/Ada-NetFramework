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
with NetFrameworkBase.System.Xml.Schema.XmlSchemaObject;
limited with NetFrameworkBase.System.IO.TextReader;
limited with NetFrameworkBase.System.Xml.Schema.ValidationEventHandler;
limited with NetFrameworkBase.System.IO.Stream;
limited with NetFrameworkBase.System.Xml.XmlReader;
limited with NetFrameworkBase.System.Xml.XmlNamespaceManager;
limited with NetFrameworkBase.System.IO.TextWriter;
limited with NetFrameworkBase.System.Xml.XmlWriter;
limited with NetFrameworkBase.System.Xml.XmlResolver;
limited with NetFrameworkBase.System.Xml.Schema.XmlSchemaForm;
limited with NetFrameworkBase.System.Xml.Schema.XmlSchemaDerivationMethod;
limited with NetFrameworkBase.System.Xml.XmlAttribute;
limited with NetFrameworkBase.System.Xml.Schema.XmlSchemaObjectCollection;
limited with NetFrameworkBase.System.Xml.Schema.XmlSchemaObjectTable;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Xml.Schema.XmlSchema is
   
   type Kind is new NetFrameworkBase.System.Xml.Schema.XmlSchemaObject.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Read
      (
         reader : NetFrameworkBase.System.IO.TextReader.Kind_Ptr; 
         validationEventHandler : NetFrameworkBase.System.Xml.Schema.ValidationEventHandler.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchema.Kind_Ptr;
      
      function Read
      (
         stream : NetFrameworkBase.System.IO.Stream.Kind_Ptr; 
         validationEventHandler : NetFrameworkBase.System.Xml.Schema.ValidationEventHandler.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchema.Kind_Ptr;
      
      function Read
      (
         reader : NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr; 
         validationEventHandler : NetFrameworkBase.System.Xml.Schema.ValidationEventHandler.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchema.Kind_Ptr;
      
      procedure Write
      (
         this : in out XmlSchema.Kind;
         stream : NetFrameworkBase.System.IO.Stream.Kind_Ptr
      );
      
      procedure Write
      (
         this : in out XmlSchema.Kind;
         stream : NetFrameworkBase.System.IO.Stream.Kind_Ptr; 
         namespaceManager : NetFrameworkBase.System.Xml.XmlNamespaceManager.Kind_Ptr
      );
      
      procedure Write
      (
         this : in out XmlSchema.Kind;
         writer : NetFrameworkBase.System.IO.TextWriter.Kind_Ptr
      );
      
      procedure Write
      (
         this : in out XmlSchema.Kind;
         writer : NetFrameworkBase.System.IO.TextWriter.Kind_Ptr; 
         namespaceManager : NetFrameworkBase.System.Xml.XmlNamespaceManager.Kind_Ptr
      );
      
      procedure Write
      (
         this : in out XmlSchema.Kind;
         writer : NetFrameworkBase.System.Xml.XmlWriter.Kind_Ptr
      );
      
      procedure Compile
      (
         this : in out XmlSchema.Kind;
         validationEventHandler : NetFrameworkBase.System.Xml.Schema.ValidationEventHandler.Kind_Ptr; 
         resolver : NetFrameworkBase.System.Xml.XmlResolver.Kind_Ptr
      );
      
      function AttributeFormDefault
      (
         this : in out XmlSchema.Kind
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchemaForm.Kind;
      
      procedure AttributeFormDefault
      (
         this : in out XmlSchema.Kind;
         value : NetFrameworkBase.System.Xml.Schema.XmlSchemaForm.Kind
      );
      
      function BlockDefault
      (
         this : in out XmlSchema.Kind
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchemaDerivationMethod.Kind;
      
      procedure BlockDefault
      (
         this : in out XmlSchema.Kind;
         value : NetFrameworkBase.System.Xml.Schema.XmlSchemaDerivationMethod.Kind
      );
      
      function FinalDefault
      (
         this : in out XmlSchema.Kind
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchemaDerivationMethod.Kind;
      
      procedure FinalDefault
      (
         this : in out XmlSchema.Kind;
         value : NetFrameworkBase.System.Xml.Schema.XmlSchemaDerivationMethod.Kind
      );
      
      function ElementFormDefault
      (
         this : in out XmlSchema.Kind
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchemaForm.Kind;
      
      procedure ElementFormDefault
      (
         this : in out XmlSchema.Kind;
         value : NetFrameworkBase.System.Xml.Schema.XmlSchemaForm.Kind
      );
      
      function TargetNamespace
      (
         this : in out XmlSchema.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure TargetNamespace
      (
         this : in out XmlSchema.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Version
      (
         this : in out XmlSchema.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Version
      (
         this : in out XmlSchema.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Includes
      (
         this : in out XmlSchema.Kind
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchemaObjectCollection.Kind_Ptr;
      
      function Items
      (
         this : in out XmlSchema.Kind
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchemaObjectCollection.Kind_Ptr;
      
      function IsCompiled
      (
         this : in out XmlSchema.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Attributes
      (
         this : in out XmlSchema.Kind
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchemaObjectTable.Kind_Ptr;
      
      function AttributeGroups
      (
         this : in out XmlSchema.Kind
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchemaObjectTable.Kind_Ptr;
      
      function SchemaTypes
      (
         this : in out XmlSchema.Kind
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchemaObjectTable.Kind_Ptr;
      
      function Elements
      (
         this : in out XmlSchema.Kind
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchemaObjectTable.Kind_Ptr;
      
      function Id
      (
         this : in out XmlSchema.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Id
      (
         this : in out XmlSchema.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function UnhandledAttributes
      (
         this : in out XmlSchema.Kind
      )
      return NetFrameworkBase.System.Xml.XmlAttribute.Kind_Array;
      
      procedure UnhandledAttributes
      (
         this : in out XmlSchema.Kind;
         value : NetFrameworkBase.System.Xml.XmlAttribute.Kind_Array
      );
      
      function Groups
      (
         this : in out XmlSchema.Kind
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchemaObjectTable.Kind_Ptr;
      
      function Notations
      (
         this : in out XmlSchema.Kind
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchemaObjectTable.Kind_Ptr;
      
      procedure Write
      (
         this : in out XmlSchema.Kind;
         writer : NetFrameworkBase.System.Xml.XmlWriter.Kind_Ptr; 
         namespaceManager : NetFrameworkBase.System.Xml.XmlNamespaceManager.Kind_Ptr
      );
      
      procedure Compile
      (
         this : in out XmlSchema.Kind;
         validationEventHandler : NetFrameworkBase.System.Xml.Schema.ValidationEventHandler.Kind_Ptr
      );
      
      function Constructor return NetFrameworkBase.System.Xml.Schema.XmlSchema.Kind_Ptr;
      
end;
