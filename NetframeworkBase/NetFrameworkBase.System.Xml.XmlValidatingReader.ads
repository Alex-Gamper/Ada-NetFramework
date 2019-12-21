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
with NetFrameworkBase.System.Xml.XmlReader;
limited with NetFrameworkBase.System.Xml.Schema.ValidationEventHandler;
limited with NetFrameworkBase.System.Xml.ValidationType;
limited with NetFrameworkBase.System.Xml.EntityHandling;
limited with NetFrameworkBase.System.Xml.XmlResolver;
limited with NetFrameworkBase.System.Xml.XmlNodeType;
limited with NetFrameworkBase.System.Xml.XmlParserContext;
limited with NetFrameworkBase.System.IO.Stream;
limited with NetFrameworkBase.System.Xml.XmlSpace;
limited with NetFrameworkBase.System.Xml.ReadState;
limited with NetFrameworkBase.System.Xml.XmlNameTable;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Xml.Schema.XmlSchemaCollection;
limited with NetFrameworkBase.System.Text.Encoding;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Xml.XmlValidatingReader is
   
   type Kind is new NetFrameworkBase.System.Xml.XmlReader.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function NodeType
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.System.Xml.XmlNodeType.Kind;
      
      function Name
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function LocalName
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function NamespaceURI
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Prefix
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function HasValue
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Value
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Depth
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.Int32;
      
      function BaseURI
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function IsEmptyElement
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsDefault
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function QuoteChar
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.Wide_Char;
      
      function XmlSpace
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.System.Xml.XmlSpace.Kind;
      
      function XmlLang
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function AttributeCount
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.Int32;
      
      function GetAttribute
      (
         this : in out XmlValidatingReader.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function GetAttribute
      (
         this : in out XmlValidatingReader.Kind;
         localName : NetFrameworkBase.BSTR; 
         namespaceURI : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function GetAttribute
      (
         this : in out XmlValidatingReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.BSTR;
      
      function MoveToAttribute
      (
         this : in out XmlValidatingReader.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function MoveToAttribute
      (
         this : in out XmlValidatingReader.Kind;
         localName : NetFrameworkBase.BSTR; 
         namespaceURI : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      procedure MoveToAttribute
      (
         this : in out XmlValidatingReader.Kind;
         i : NetFrameworkBase.Int32
      );
      
      function MoveToFirstAttribute
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function MoveToNextAttribute
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function MoveToElement
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function ReadAttributeValue
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Read
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function EOF
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure Close
      (
         this : in out XmlValidatingReader.Kind
      );
      
      function ReadState
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.System.Xml.ReadState.Kind;
      
      function NameTable
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.System.Xml.XmlNameTable.Kind_Ptr;
      
      function LookupNamespace
      (
         this : in out XmlValidatingReader.Kind;
         prefix : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function CanResolveEntity
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure ResolveEntity
      (
         this : in out XmlValidatingReader.Kind
      );
      
      function CanReadBinaryContent
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function ReadContentAsBase64
      (
         this : in out XmlValidatingReader.Kind;
         buffer : NetFrameworkBase.Byte_Array; 
         index : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function ReadElementContentAsBase64
      (
         this : in out XmlValidatingReader.Kind;
         buffer : NetFrameworkBase.Byte_Array; 
         index : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function ReadContentAsBinHex
      (
         this : in out XmlValidatingReader.Kind;
         buffer : NetFrameworkBase.Byte_Array; 
         index : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function ReadElementContentAsBinHex
      (
         this : in out XmlValidatingReader.Kind;
         buffer : NetFrameworkBase.Byte_Array; 
         index : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function ReadString
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function HasLineInfo
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function LineNumber
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.Int32;
      
      function LinePosition
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure add_ValidationEventHandler
      (
         this : in out XmlValidatingReader.Kind;
         value : NetFrameworkBase.System.Xml.Schema.ValidationEventHandler.Kind_Ptr
      );
      
      procedure remove_ValidationEventHandler
      (
         this : in out XmlValidatingReader.Kind;
         value : NetFrameworkBase.System.Xml.Schema.ValidationEventHandler.Kind_Ptr
      );
      
      function SchemaType
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function Reader
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr;
      
      function ValidationType
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.System.Xml.ValidationType.Kind;
      
      procedure ValidationType
      (
         this : in out XmlValidatingReader.Kind;
         value : NetFrameworkBase.System.Xml.ValidationType.Kind
      );
      
      function Schemas
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchemaCollection.Kind_Ptr;
      
      function EntityHandling
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.System.Xml.EntityHandling.Kind;
      
      procedure EntityHandling
      (
         this : in out XmlValidatingReader.Kind;
         value : NetFrameworkBase.System.Xml.EntityHandling.Kind
      );
      
      procedure XmlResolver
      (
         this : in out XmlValidatingReader.Kind;
         value : NetFrameworkBase.System.Xml.XmlResolver.Kind_Ptr
      );
      
      function Namespaces
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure Namespaces
      (
         this : in out XmlValidatingReader.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function ReadTypedValue
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function Encoding
      (
         this : in out XmlValidatingReader.Kind
      )
      return NetFrameworkBase.System.Text.Encoding.Kind_Ptr;
      
      function Constructor
      (
         reader : NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlValidatingReader.Kind_Ptr;
      
      function Constructor
      (
         xmlFragment : NetFrameworkBase.BSTR;
         fragType : NetFrameworkBase.System.Xml.XmlNodeType.Kind;
         context : NetFrameworkBase.System.Xml.XmlParserContext.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlValidatingReader.Kind_Ptr;
      
      function Constructor
      (
         xmlFragment : NetFrameworkBase.System.IO.Stream.Kind_Ptr;
         fragType : NetFrameworkBase.System.Xml.XmlNodeType.Kind;
         context : NetFrameworkBase.System.Xml.XmlParserContext.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlValidatingReader.Kind_Ptr;
      
end;
