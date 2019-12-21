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
with NetFrameworkBase.System.Xml.XmlNode;
limited with NetFrameworkBase.System.Xml.Schema.XmlSchemaSet;
limited with NetFrameworkBase.System.Xml.XmlNodeType;
limited with NetFrameworkBase.System.Xml.XmlReader;
limited with NetFrameworkBase.System.IO.Stream;
limited with NetFrameworkBase.System.IO.TextReader;
limited with NetFrameworkBase.System.IO.TextWriter;
limited with NetFrameworkBase.System.Xml.XmlWriter;
limited with NetFrameworkBase.System.Xml.Schema.ValidationEventHandler;
limited with NetFrameworkBase.System.Xml.XmlNodeChangedEventHandler;
limited with NetFrameworkBase.System.Xml.XmlResolver;
limited with NetFrameworkBase.System.Xml.XmlNameTable;
limited with NetFrameworkBase.System.Xml.XmlDocumentType;
limited with NetFrameworkBase.System.Xml.XmlImplementation;
limited with NetFrameworkBase.System.Xml.XmlElement;
limited with NetFrameworkBase.System.Xml.XmlAttribute;
limited with NetFrameworkBase.System.Xml.XmlCDataSection;
limited with NetFrameworkBase.System.Xml.XmlComment;
limited with NetFrameworkBase.System.Xml.XmlDocumentFragment;
limited with NetFrameworkBase.System.Xml.XmlEntityReference;
limited with NetFrameworkBase.System.Xml.XmlProcessingInstruction;
limited with NetFrameworkBase.System.Xml.XmlDeclaration;
limited with NetFrameworkBase.System.Xml.XmlText;
limited with NetFrameworkBase.System.Xml.XmlSignificantWhitespace;
limited with NetFrameworkBase.System.Xml.XPath.XPathNavigator;
limited with NetFrameworkBase.System.Xml.XmlWhitespace;
limited with NetFrameworkBase.System.Xml.XmlNodeList;
limited with NetFrameworkBase.System.Xml.Schema.IXmlSchemaInfo;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Xml.XmlDocument is
   
   type Kind is new NetFrameworkBase.System.Xml.XmlNode.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function CloneNode
      (
         this : in out XmlDocument.Kind;
         deep : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr;
      
      function NodeType
      (
         this : in out XmlDocument.Kind
      )
      return NetFrameworkBase.System.Xml.XmlNodeType.Kind;
      
      function ParentNode
      (
         this : in out XmlDocument.Kind
      )
      return NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr;
      
      function DocumentType
      (
         this : in out XmlDocument.Kind
      )
      return NetFrameworkBase.System.Xml.XmlDocumentType.Kind_Ptr;
      
      function Implementation
      (
         this : in out XmlDocument.Kind
      )
      return NetFrameworkBase.System.Xml.XmlImplementation.Kind_Ptr;
      
      function Name
      (
         this : in out XmlDocument.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function LocalName
      (
         this : in out XmlDocument.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function DocumentElement
      (
         this : in out XmlDocument.Kind
      )
      return NetFrameworkBase.System.Xml.XmlElement.Kind_Ptr;
      
      function OwnerDocument
      (
         this : in out XmlDocument.Kind
      )
      return NetFrameworkBase.System.Xml.XmlDocument.Kind_Ptr;
      
      function Schemas
      (
         this : in out XmlDocument.Kind
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchemaSet.Kind_Ptr;
      
      procedure Schemas
      (
         this : in out XmlDocument.Kind;
         value : NetFrameworkBase.System.Xml.Schema.XmlSchemaSet.Kind_Ptr
      );
      
      function CreateAttribute
      (
         this : in out XmlDocument.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlAttribute.Kind_Ptr;
      
      function CreateCDataSection
      (
         this : in out XmlDocument.Kind;
         data : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlCDataSection.Kind_Ptr;
      
      function CreateComment
      (
         this : in out XmlDocument.Kind;
         data : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlComment.Kind_Ptr;
      
      function CreateDocumentType
      (
         this : in out XmlDocument.Kind;
         name : NetFrameworkBase.BSTR; 
         publicId : NetFrameworkBase.BSTR; 
         systemId : NetFrameworkBase.BSTR; 
         internalSubset : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlDocumentType.Kind_Ptr;
      
      function CreateDocumentFragment
      (
         this : in out XmlDocument.Kind
      )
      return NetFrameworkBase.System.Xml.XmlDocumentFragment.Kind_Ptr;
      
      function CreateElement
      (
         this : in out XmlDocument.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlElement.Kind_Ptr;
      
      function CreateEntityReference
      (
         this : in out XmlDocument.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlEntityReference.Kind_Ptr;
      
      function CreateProcessingInstruction
      (
         this : in out XmlDocument.Kind;
         target : NetFrameworkBase.BSTR; 
         data : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlProcessingInstruction.Kind_Ptr;
      
      function CreateXmlDeclaration
      (
         this : in out XmlDocument.Kind;
         version : NetFrameworkBase.BSTR; 
         encoding : NetFrameworkBase.BSTR; 
         standalone : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlDeclaration.Kind_Ptr;
      
      function CreateTextNode
      (
         this : in out XmlDocument.Kind;
         text : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlText.Kind_Ptr;
      
      function CreateSignificantWhitespace
      (
         this : in out XmlDocument.Kind;
         text : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlSignificantWhitespace.Kind_Ptr;
      
      function CreateNavigator
      (
         this : in out XmlDocument.Kind
      )
      return NetFrameworkBase.System.Xml.XPath.XPathNavigator.Kind_Ptr;
      
      function CreateWhitespace
      (
         this : in out XmlDocument.Kind;
         text : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlWhitespace.Kind_Ptr;
      
      function GetElementsByTagName
      (
         this : in out XmlDocument.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlNodeList.Kind_Ptr;
      
      function CreateAttribute
      (
         this : in out XmlDocument.Kind;
         qualifiedName : NetFrameworkBase.BSTR; 
         namespaceURI : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlAttribute.Kind_Ptr;
      
      function CreateElement
      (
         this : in out XmlDocument.Kind;
         qualifiedName : NetFrameworkBase.BSTR; 
         namespaceURI : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlElement.Kind_Ptr;
      
      function GetElementsByTagName
      (
         this : in out XmlDocument.Kind;
         localName : NetFrameworkBase.BSTR; 
         namespaceURI : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlNodeList.Kind_Ptr;
      
      function GetElementById
      (
         this : in out XmlDocument.Kind;
         elementId : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlElement.Kind_Ptr;
      
      function ImportNode
      (
         this : in out XmlDocument.Kind;
         node : NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr; 
         deep : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr;
      
      function NameTable
      (
         this : in out XmlDocument.Kind
      )
      return NetFrameworkBase.System.Xml.XmlNameTable.Kind_Ptr;
      
      function CreateAttribute
      (
         this : in out XmlDocument.Kind;
         prefix : NetFrameworkBase.BSTR; 
         localName : NetFrameworkBase.BSTR; 
         namespaceURI : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlAttribute.Kind_Ptr;
      
      function CreateElement
      (
         this : in out XmlDocument.Kind;
         prefix : NetFrameworkBase.BSTR; 
         localName : NetFrameworkBase.BSTR; 
         namespaceURI : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlElement.Kind_Ptr;
      
      function PreserveWhitespace
      (
         this : in out XmlDocument.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure PreserveWhitespace
      (
         this : in out XmlDocument.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function IsReadOnly
      (
         this : in out XmlDocument.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function CreateNode
      (
         this : in out XmlDocument.Kind;
         nodeTypeString : NetFrameworkBase.BSTR; 
         name : NetFrameworkBase.BSTR; 
         namespaceURI : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr;
      
      function CreateNode
      (
         this : in out XmlDocument.Kind;
         type_x : NetFrameworkBase.System.Xml.XmlNodeType.Kind; 
         name : NetFrameworkBase.BSTR; 
         namespaceURI : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr;
      
      function ReadNode
      (
         this : in out XmlDocument.Kind;
         reader : NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr;
      
      procedure Load
      (
         this : in out XmlDocument.Kind;
         filename : NetFrameworkBase.BSTR
      );
      
      procedure Load
      (
         this : in out XmlDocument.Kind;
         inStream : NetFrameworkBase.System.IO.Stream.Kind_Ptr
      );
      
      procedure Load
      (
         this : in out XmlDocument.Kind;
         txtReader : NetFrameworkBase.System.IO.TextReader.Kind_Ptr
      );
      
      procedure Load
      (
         this : in out XmlDocument.Kind;
         reader : NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr
      );
      
      procedure LoadXml
      (
         this : in out XmlDocument.Kind;
         xml : NetFrameworkBase.BSTR
      );
      
      procedure InnerText
      (
         this : in out XmlDocument.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function InnerXml
      (
         this : in out XmlDocument.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure InnerXml
      (
         this : in out XmlDocument.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure Save
      (
         this : in out XmlDocument.Kind;
         filename : NetFrameworkBase.BSTR
      );
      
      procedure Save
      (
         this : in out XmlDocument.Kind;
         outStream : NetFrameworkBase.System.IO.Stream.Kind_Ptr
      );
      
      procedure Save
      (
         this : in out XmlDocument.Kind;
         writer : NetFrameworkBase.System.IO.TextWriter.Kind_Ptr
      );
      
      procedure WriteTo
      (
         this : in out XmlDocument.Kind;
         w : NetFrameworkBase.System.Xml.XmlWriter.Kind_Ptr
      );
      
      procedure WriteContentTo
      (
         this : in out XmlDocument.Kind;
         xw : NetFrameworkBase.System.Xml.XmlWriter.Kind_Ptr
      );
      
      procedure Validate
      (
         this : in out XmlDocument.Kind;
         validationEventHandler : NetFrameworkBase.System.Xml.Schema.ValidationEventHandler.Kind_Ptr
      );
      
      procedure add_NodeInserting
      (
         this : in out XmlDocument.Kind;
         value : NetFrameworkBase.System.Xml.XmlNodeChangedEventHandler.Kind_Ptr
      );
      
      procedure remove_NodeInserting
      (
         this : in out XmlDocument.Kind;
         value : NetFrameworkBase.System.Xml.XmlNodeChangedEventHandler.Kind_Ptr
      );
      
      procedure add_NodeInserted
      (
         this : in out XmlDocument.Kind;
         value : NetFrameworkBase.System.Xml.XmlNodeChangedEventHandler.Kind_Ptr
      );
      
      procedure remove_NodeInserted
      (
         this : in out XmlDocument.Kind;
         value : NetFrameworkBase.System.Xml.XmlNodeChangedEventHandler.Kind_Ptr
      );
      
      procedure add_NodeRemoving
      (
         this : in out XmlDocument.Kind;
         value : NetFrameworkBase.System.Xml.XmlNodeChangedEventHandler.Kind_Ptr
      );
      
      procedure remove_NodeRemoving
      (
         this : in out XmlDocument.Kind;
         value : NetFrameworkBase.System.Xml.XmlNodeChangedEventHandler.Kind_Ptr
      );
      
      procedure add_NodeRemoved
      (
         this : in out XmlDocument.Kind;
         value : NetFrameworkBase.System.Xml.XmlNodeChangedEventHandler.Kind_Ptr
      );
      
      procedure remove_NodeRemoved
      (
         this : in out XmlDocument.Kind;
         value : NetFrameworkBase.System.Xml.XmlNodeChangedEventHandler.Kind_Ptr
      );
      
      procedure add_NodeChanging
      (
         this : in out XmlDocument.Kind;
         value : NetFrameworkBase.System.Xml.XmlNodeChangedEventHandler.Kind_Ptr
      );
      
      procedure remove_NodeChanging
      (
         this : in out XmlDocument.Kind;
         value : NetFrameworkBase.System.Xml.XmlNodeChangedEventHandler.Kind_Ptr
      );
      
      procedure add_NodeChanged
      (
         this : in out XmlDocument.Kind;
         value : NetFrameworkBase.System.Xml.XmlNodeChangedEventHandler.Kind_Ptr
      );
      
      procedure remove_NodeChanged
      (
         this : in out XmlDocument.Kind;
         value : NetFrameworkBase.System.Xml.XmlNodeChangedEventHandler.Kind_Ptr
      );
      
      function SchemaInfo
      (
         this : in out XmlDocument.Kind
      )
      return NetFrameworkBase.System.Xml.Schema.IXmlSchemaInfo.Kind_Ptr;
      
      function BaseURI
      (
         this : in out XmlDocument.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure XmlResolver
      (
         this : in out XmlDocument.Kind;
         value : NetFrameworkBase.System.Xml.XmlResolver.Kind_Ptr
      );
      
      function CreateNode
      (
         this : in out XmlDocument.Kind;
         type_x : NetFrameworkBase.System.Xml.XmlNodeType.Kind; 
         prefix : NetFrameworkBase.BSTR; 
         name : NetFrameworkBase.BSTR; 
         namespaceURI : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr;
      
      procedure Save
      (
         this : in out XmlDocument.Kind;
         w : NetFrameworkBase.System.Xml.XmlWriter.Kind_Ptr
      );
      
      procedure Validate
      (
         this : in out XmlDocument.Kind;
         validationEventHandler : NetFrameworkBase.System.Xml.Schema.ValidationEventHandler.Kind_Ptr; 
         nodeToValidate : NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr
      );
      
      function Constructor return NetFrameworkBase.System.Xml.XmlDocument.Kind_Ptr;
      
      function Constructor
      (
         nt : NetFrameworkBase.System.Xml.XmlNameTable.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlDocument.Kind_Ptr;
      
end;
