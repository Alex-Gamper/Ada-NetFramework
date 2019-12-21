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
limited with NetFrameworkBase.System.Xml.IXmlNamespaceResolver;
limited with NetFrameworkBase.System.Xml.XmlReaderSettings;
limited with NetFrameworkBase.System.Xml.XmlParserContext;
limited with NetFrameworkBase.System.IO.Stream;
limited with NetFrameworkBase.System.IO.TextReader;
limited with NetFrameworkBase.System.Xml.XmlSpace;
limited with NetFrameworkBase.System.Xml.Schema.IXmlSchemaInfo;
limited with NetFrameworkBase.System.DateTimeOffset;
limited with NetFrameworkBase.System.Decimal;
limited with NetFrameworkBase.System.Xml.XmlNodeType;
limited with NetFrameworkBase.System.Threading.Tasks.Task_x;
limited with NetFrameworkBase.System.Xml.ReadState;
limited with NetFrameworkBase.System.Xml.XmlNameTable;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Xml.XmlReader is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Settings
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.System.Xml.XmlReaderSettings.Kind_Ptr;
      
      function HasValue
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsDefault
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function QuoteChar
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.Wide_Char;
      
      function XmlSpace
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.System.Xml.XmlSpace.Kind;
      
      function XmlLang
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function SchemaInfo
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.System.Xml.Schema.IXmlSchemaInfo.Kind_Ptr;
      
      function ValueType
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function ReadContentAsObject
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function ReadContentAsBoolean
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function ReadContentAsDateTime
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.Date;
      
      function ReadContentAsDateTimeOffset
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.System.DateTimeOffset.Kind_Ptr;
      
      function ReadContentAsDouble
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.Double;
      
      function ReadContentAsFloat
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.Single;
      
      function ReadContentAsDecimal
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function ReadContentAsInt
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.Int32;
      
      function ReadContentAsLong
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.Int64;
      
      function ReadContentAsString
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function ReadContentAs
      (
         this : in out XmlReader.Kind;
         returnType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         namespaceResolver : NetFrameworkBase.System.Xml.IXmlNamespaceResolver.Kind_Ptr
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function ReadElementContentAsObject
      (
         this : in out XmlReader.Kind;
         localName : NetFrameworkBase.BSTR; 
         namespaceURI : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function ReadElementContentAsBoolean
      (
         this : in out XmlReader.Kind;
         localName : NetFrameworkBase.BSTR; 
         namespaceURI : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function ReadElementContentAsDateTime
      (
         this : in out XmlReader.Kind;
         localName : NetFrameworkBase.BSTR; 
         namespaceURI : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Date;
      
      function ReadElementContentAsDouble
      (
         this : in out XmlReader.Kind;
         localName : NetFrameworkBase.BSTR; 
         namespaceURI : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Double;
      
      function ReadElementContentAsFloat
      (
         this : in out XmlReader.Kind;
         localName : NetFrameworkBase.BSTR; 
         namespaceURI : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Single;
      
      function ReadElementContentAsDecimal
      (
         this : in out XmlReader.Kind;
         localName : NetFrameworkBase.BSTR; 
         namespaceURI : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function ReadElementContentAsInt
      (
         this : in out XmlReader.Kind;
         localName : NetFrameworkBase.BSTR; 
         namespaceURI : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Int32;
      
      function ReadElementContentAsLong
      (
         this : in out XmlReader.Kind;
         localName : NetFrameworkBase.BSTR; 
         namespaceURI : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Int64;
      
      function ReadElementContentAsString
      (
         this : in out XmlReader.Kind;
         localName : NetFrameworkBase.BSTR; 
         namespaceURI : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function ReadElementContentAs
      (
         this : in out XmlReader.Kind;
         returnType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         namespaceResolver : NetFrameworkBase.System.Xml.IXmlNamespaceResolver.Kind_Ptr; 
         localName : NetFrameworkBase.BSTR; 
         namespaceURI : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function Item
      (
         this : in out XmlReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.BSTR;
      
      function Item
      (
         this : in out XmlReader.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function Item
      (
         this : in out XmlReader.Kind;
         name : NetFrameworkBase.BSTR; 
         namespaceURI : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      procedure MoveToAttribute
      (
         this : in out XmlReader.Kind;
         i : NetFrameworkBase.Int32
      );
      
      procedure Close
      (
         this : in out XmlReader.Kind
      );
      
      procedure Skip
      (
         this : in out XmlReader.Kind
      );
      
      function CanResolveEntity
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function CanReadBinaryContent
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function CanReadValueChunk
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function ReadValueChunk
      (
         this : in out XmlReader.Kind;
         buffer : NetFrameworkBase.Wide_Char_Array; 
         index : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function ReadString
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function MoveToContent
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.System.Xml.XmlNodeType.Kind;
      
      procedure ReadStartElement
      (
         this : in out XmlReader.Kind
      );
      
      procedure ReadStartElement
      (
         this : in out XmlReader.Kind;
         name : NetFrameworkBase.BSTR
      );
      
      function ReadElementString
      (
         this : in out XmlReader.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      procedure ReadEndElement
      (
         this : in out XmlReader.Kind
      );
      
      function IsStartElement
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsStartElement
      (
         this : in out XmlReader.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function IsStartElement
      (
         this : in out XmlReader.Kind;
         localname : NetFrameworkBase.BSTR; 
         ns : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function ReadToFollowing
      (
         this : in out XmlReader.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function ReadToFollowing
      (
         this : in out XmlReader.Kind;
         localName : NetFrameworkBase.BSTR; 
         namespaceURI : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function ReadToDescendant
      (
         this : in out XmlReader.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function ReadToDescendant
      (
         this : in out XmlReader.Kind;
         localName : NetFrameworkBase.BSTR; 
         namespaceURI : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function ReadToNextSibling
      (
         this : in out XmlReader.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function ReadToNextSibling
      (
         this : in out XmlReader.Kind;
         localName : NetFrameworkBase.BSTR; 
         namespaceURI : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function IsName
      (
         str : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function IsNameToken
      (
         str : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function ReadInnerXml
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function ReadOuterXml
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function ReadSubtree
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr;
      
      function HasAttributes
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure Dispose
      (
         this : in out XmlReader.Kind
      );
      
      function Create
      (
         inputUri : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr;
      
      function Create
      (
         inputUri : NetFrameworkBase.BSTR; 
         settings : NetFrameworkBase.System.Xml.XmlReaderSettings.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr;
      
      function Create
      (
         inputUri : NetFrameworkBase.BSTR; 
         settings : NetFrameworkBase.System.Xml.XmlReaderSettings.Kind_Ptr; 
         inputContext : NetFrameworkBase.System.Xml.XmlParserContext.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr;
      
      function Create
      (
         input : NetFrameworkBase.System.IO.Stream.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr;
      
      function Create
      (
         input : NetFrameworkBase.System.IO.Stream.Kind_Ptr; 
         settings : NetFrameworkBase.System.Xml.XmlReaderSettings.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr;
      
      function Create
      (
         input : NetFrameworkBase.System.IO.Stream.Kind_Ptr; 
         settings : NetFrameworkBase.System.Xml.XmlReaderSettings.Kind_Ptr; 
         baseUri : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr;
      
      function Create
      (
         input : NetFrameworkBase.System.IO.Stream.Kind_Ptr; 
         settings : NetFrameworkBase.System.Xml.XmlReaderSettings.Kind_Ptr; 
         inputContext : NetFrameworkBase.System.Xml.XmlParserContext.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr;
      
      function Create
      (
         input : NetFrameworkBase.System.IO.TextReader.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr;
      
      function Create
      (
         input : NetFrameworkBase.System.IO.TextReader.Kind_Ptr; 
         settings : NetFrameworkBase.System.Xml.XmlReaderSettings.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr;
      
      function Create
      (
         input : NetFrameworkBase.System.IO.TextReader.Kind_Ptr; 
         settings : NetFrameworkBase.System.Xml.XmlReaderSettings.Kind_Ptr; 
         baseUri : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr;
      
      function Create
      (
         input : NetFrameworkBase.System.IO.TextReader.Kind_Ptr; 
         settings : NetFrameworkBase.System.Xml.XmlReaderSettings.Kind_Ptr; 
         inputContext : NetFrameworkBase.System.Xml.XmlParserContext.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr;
      
      function Create
      (
         reader : NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr; 
         settings : NetFrameworkBase.System.Xml.XmlReaderSettings.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr;
      
      function SkipAsync
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function NodeType
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.System.Xml.XmlNodeType.Kind;
      
      function Name
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function LocalName
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function NamespaceURI
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Prefix
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Value
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Depth
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.Int32;
      
      function BaseURI
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function IsEmptyElement
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function ReadElementContentAsObject
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function ReadElementContentAsBoolean
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function ReadElementContentAsDateTime
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.Date;
      
      function ReadElementContentAsDouble
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.Double;
      
      function ReadElementContentAsFloat
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.Single;
      
      function ReadElementContentAsDecimal
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      function ReadElementContentAsInt
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.Int32;
      
      function ReadElementContentAsLong
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.Int64;
      
      function ReadElementContentAsString
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function ReadElementContentAs
      (
         this : in out XmlReader.Kind;
         returnType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         namespaceResolver : NetFrameworkBase.System.Xml.IXmlNamespaceResolver.Kind_Ptr
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function AttributeCount
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.Int32;
      
      function GetAttribute
      (
         this : in out XmlReader.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function GetAttribute
      (
         this : in out XmlReader.Kind;
         name : NetFrameworkBase.BSTR; 
         namespaceURI : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function GetAttribute
      (
         this : in out XmlReader.Kind;
         i : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.BSTR;
      
      function MoveToAttribute
      (
         this : in out XmlReader.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function MoveToAttribute
      (
         this : in out XmlReader.Kind;
         name : NetFrameworkBase.BSTR; 
         ns : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function MoveToFirstAttribute
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function MoveToNextAttribute
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function MoveToElement
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function ReadAttributeValue
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Read
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function EOF
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function ReadState
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.System.Xml.ReadState.Kind;
      
      function NameTable
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.System.Xml.XmlNameTable.Kind_Ptr;
      
      function LookupNamespace
      (
         this : in out XmlReader.Kind;
         prefix : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      procedure ResolveEntity
      (
         this : in out XmlReader.Kind
      );
      
      function ReadContentAsBase64
      (
         this : in out XmlReader.Kind;
         buffer : NetFrameworkBase.Byte_Array; 
         index : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function ReadElementContentAsBase64
      (
         this : in out XmlReader.Kind;
         buffer : NetFrameworkBase.Byte_Array; 
         index : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function ReadContentAsBinHex
      (
         this : in out XmlReader.Kind;
         buffer : NetFrameworkBase.Byte_Array; 
         index : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function ReadElementContentAsBinHex
      (
         this : in out XmlReader.Kind;
         buffer : NetFrameworkBase.Byte_Array; 
         index : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      procedure ReadStartElement
      (
         this : in out XmlReader.Kind;
         localname : NetFrameworkBase.BSTR; 
         ns : NetFrameworkBase.BSTR
      );
      
      function ReadElementString
      (
         this : in out XmlReader.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function ReadElementString
      (
         this : in out XmlReader.Kind;
         localname : NetFrameworkBase.BSTR; 
         ns : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
end;
