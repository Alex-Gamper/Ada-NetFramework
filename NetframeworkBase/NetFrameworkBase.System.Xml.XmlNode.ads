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
limited with NetFrameworkBase.System.Xml.XmlNamespaceManager;
limited with NetFrameworkBase.System.Xml.XmlWriter;
limited with NetFrameworkBase.System.Xml.XPath.XPathNavigator;
limited with NetFrameworkBase.System.Xml.XmlNodeList;
limited with NetFrameworkBase.System.Xml.XmlAttributeCollection;
limited with NetFrameworkBase.System.Xml.XmlDocument;
limited with NetFrameworkBase.System.Collections.IEnumerator;
limited with NetFrameworkBase.System.Xml.Schema.IXmlSchemaInfo;
limited with NetFrameworkBase.System.Xml.XmlElement;
limited with NetFrameworkBase.System.Xml.XmlNodeType;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Xml.XmlNode is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function CreateNavigator
      (
         this : in out XmlNode.Kind
      )
      return NetFrameworkBase.System.Xml.XPath.XPathNavigator.Kind_Ptr;
      
      function SelectSingleNode
      (
         this : in out XmlNode.Kind;
         xpath : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr;
      
      function SelectSingleNode
      (
         this : in out XmlNode.Kind;
         xpath : NetFrameworkBase.BSTR; 
         nsmgr : NetFrameworkBase.System.Xml.XmlNamespaceManager.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr;
      
      function SelectNodes
      (
         this : in out XmlNode.Kind;
         xpath : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlNodeList.Kind_Ptr;
      
      function SelectNodes
      (
         this : in out XmlNode.Kind;
         xpath : NetFrameworkBase.BSTR; 
         nsmgr : NetFrameworkBase.System.Xml.XmlNamespaceManager.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlNodeList.Kind_Ptr;
      
      function Value
      (
         this : in out XmlNode.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function ParentNode
      (
         this : in out XmlNode.Kind
      )
      return NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr;
      
      function ChildNodes
      (
         this : in out XmlNode.Kind
      )
      return NetFrameworkBase.System.Xml.XmlNodeList.Kind_Ptr;
      
      function PreviousSibling
      (
         this : in out XmlNode.Kind
      )
      return NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr;
      
      function NextSibling
      (
         this : in out XmlNode.Kind
      )
      return NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr;
      
      function Attributes
      (
         this : in out XmlNode.Kind
      )
      return NetFrameworkBase.System.Xml.XmlAttributeCollection.Kind_Ptr;
      
      function OwnerDocument
      (
         this : in out XmlNode.Kind
      )
      return NetFrameworkBase.System.Xml.XmlDocument.Kind_Ptr;
      
      function FirstChild
      (
         this : in out XmlNode.Kind
      )
      return NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr;
      
      function LastChild
      (
         this : in out XmlNode.Kind
      )
      return NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr;
      
      function InsertBefore
      (
         this : in out XmlNode.Kind;
         newChild : NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr; 
         refChild : NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr;
      
      function InsertAfter
      (
         this : in out XmlNode.Kind;
         newChild : NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr; 
         refChild : NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr;
      
      function ReplaceChild
      (
         this : in out XmlNode.Kind;
         newChild : NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr; 
         oldChild : NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr;
      
      function RemoveChild
      (
         this : in out XmlNode.Kind;
         oldChild : NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr;
      
      function PrependChild
      (
         this : in out XmlNode.Kind;
         newChild : NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr;
      
      function AppendChild
      (
         this : in out XmlNode.Kind;
         newChild : NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr;
      
      function HasChildNodes
      (
         this : in out XmlNode.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure Normalize
      (
         this : in out XmlNode.Kind
      );
      
      function NamespaceURI
      (
         this : in out XmlNode.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Prefix
      (
         this : in out XmlNode.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Prefix
      (
         this : in out XmlNode.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function IsReadOnly
      (
         this : in out XmlNode.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Clone
      (
         this : in out XmlNode.Kind
      )
      return NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr;
      
      function GetEnumerator
      (
         this : in out XmlNode.Kind
      )
      return NetFrameworkBase.System.Collections.IEnumerator.Kind_Ptr;
      
      function InnerText
      (
         this : in out XmlNode.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure InnerText
      (
         this : in out XmlNode.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function OuterXml
      (
         this : in out XmlNode.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function InnerXml
      (
         this : in out XmlNode.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure InnerXml
      (
         this : in out XmlNode.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function SchemaInfo
      (
         this : in out XmlNode.Kind
      )
      return NetFrameworkBase.System.Xml.Schema.IXmlSchemaInfo.Kind_Ptr;
      
      function BaseURI
      (
         this : in out XmlNode.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure RemoveAll
      (
         this : in out XmlNode.Kind
      );
      
      function GetNamespaceOfPrefix
      (
         this : in out XmlNode.Kind;
         prefix : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function GetPrefixOfNamespace
      (
         this : in out XmlNode.Kind;
         namespaceURI : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function Item
      (
         this : in out XmlNode.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlElement.Kind_Ptr;
      
      function Item
      (
         this : in out XmlNode.Kind;
         localname : NetFrameworkBase.BSTR; 
         ns : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlElement.Kind_Ptr;
      
      function PreviousText
      (
         this : in out XmlNode.Kind
      )
      return NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr;
      
      function Name
      (
         this : in out XmlNode.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Value
      (
         this : in out XmlNode.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function NodeType
      (
         this : in out XmlNode.Kind
      )
      return NetFrameworkBase.System.Xml.XmlNodeType.Kind;
      
      function CloneNode
      (
         this : in out XmlNode.Kind;
         deep : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr;
      
      function Supports
      (
         this : in out XmlNode.Kind;
         feature : NetFrameworkBase.BSTR; 
         version : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function LocalName
      (
         this : in out XmlNode.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure WriteTo
      (
         this : in out XmlNode.Kind;
         w : NetFrameworkBase.System.Xml.XmlWriter.Kind_Ptr
      );
      
      procedure WriteContentTo
      (
         this : in out XmlNode.Kind;
         w : NetFrameworkBase.System.Xml.XmlWriter.Kind_Ptr
      );
      
end;
