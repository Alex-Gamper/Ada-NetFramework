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
limited with NetFrameworkBase.System.DateTimeOffset;
limited with NetFrameworkBase.System.Decimal;
limited with NetFrameworkBase.System.Xml.XmlReader;
limited with NetFrameworkBase.System.Xml.XPath.XPathNavigator;
limited with NetFrameworkBase.System.Xml.XmlWriterSettings;
limited with NetFrameworkBase.System.IO.Stream;
limited with NetFrameworkBase.System.IO.TextWriter;
limited with NetFrameworkBase.System.Text.StringBuilder;
limited with NetFrameworkBase.System.Xml.XmlSpace;
limited with NetFrameworkBase.System.Threading.Tasks.Task_x;
limited with NetFrameworkBase.System.Xml.WriteState;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Xml.XmlWriter is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Settings
      (
         this : in out XmlWriter.Kind
      )
      return NetFrameworkBase.System.Xml.XmlWriterSettings.Kind_Ptr;
      
      procedure WriteStartElement
      (
         this : in out XmlWriter.Kind;
         localName : NetFrameworkBase.BSTR; 
         ns : NetFrameworkBase.BSTR
      );
      
      procedure WriteStartElement
      (
         this : in out XmlWriter.Kind;
         localName : NetFrameworkBase.BSTR
      );
      
      procedure WriteAttributeString
      (
         this : in out XmlWriter.Kind;
         localName : NetFrameworkBase.BSTR; 
         ns : NetFrameworkBase.BSTR; 
         value : NetFrameworkBase.BSTR
      );
      
      procedure WriteAttributeString
      (
         this : in out XmlWriter.Kind;
         localName : NetFrameworkBase.BSTR; 
         value : NetFrameworkBase.BSTR
      );
      
      procedure WriteAttributeString
      (
         this : in out XmlWriter.Kind;
         prefix : NetFrameworkBase.BSTR; 
         localName : NetFrameworkBase.BSTR; 
         ns : NetFrameworkBase.BSTR; 
         value : NetFrameworkBase.BSTR
      );
      
      procedure WriteStartAttribute
      (
         this : in out XmlWriter.Kind;
         localName : NetFrameworkBase.BSTR; 
         ns : NetFrameworkBase.BSTR
      );
      
      procedure WriteStartAttribute
      (
         this : in out XmlWriter.Kind;
         localName : NetFrameworkBase.BSTR
      );
      
      procedure WriteBinHex
      (
         this : in out XmlWriter.Kind;
         buffer : NetFrameworkBase.Byte_Array; 
         index : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32
      );
      
      procedure Close
      (
         this : in out XmlWriter.Kind
      );
      
      function XmlSpace
      (
         this : in out XmlWriter.Kind
      )
      return NetFrameworkBase.System.Xml.XmlSpace.Kind;
      
      function XmlLang
      (
         this : in out XmlWriter.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure WriteNmToken
      (
         this : in out XmlWriter.Kind;
         name : NetFrameworkBase.BSTR
      );
      
      procedure WriteName
      (
         this : in out XmlWriter.Kind;
         name : NetFrameworkBase.BSTR
      );
      
      procedure WriteValue
      (
         this : in out XmlWriter.Kind;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      procedure WriteValue
      (
         this : in out XmlWriter.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure WriteValue
      (
         this : in out XmlWriter.Kind;
         value : NetFrameworkBase.Date
      );
      
      procedure WriteValue
      (
         this : in out XmlWriter.Kind;
         value : NetFrameworkBase.System.DateTimeOffset.Kind_Ptr
      );
      
      procedure WriteValue
      (
         this : in out XmlWriter.Kind;
         value : NetFrameworkBase.Double
      );
      
      procedure WriteValue
      (
         this : in out XmlWriter.Kind;
         value : NetFrameworkBase.Single
      );
      
      procedure WriteValue
      (
         this : in out XmlWriter.Kind;
         value : NetFrameworkBase.System.Decimal.Kind_Ptr
      );
      
      procedure WriteValue
      (
         this : in out XmlWriter.Kind;
         value : NetFrameworkBase.Int32
      );
      
      procedure WriteValue
      (
         this : in out XmlWriter.Kind;
         value : NetFrameworkBase.Int64
      );
      
      procedure WriteAttributes
      (
         this : in out XmlWriter.Kind;
         reader : NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr; 
         defattr : NetFrameworkBase.Boolean
      );
      
      procedure WriteNode
      (
         this : in out XmlWriter.Kind;
         navigator : NetFrameworkBase.System.Xml.XPath.XPathNavigator.Kind_Ptr; 
         defattr : NetFrameworkBase.Boolean
      );
      
      procedure WriteElementString
      (
         this : in out XmlWriter.Kind;
         localName : NetFrameworkBase.BSTR; 
         value : NetFrameworkBase.BSTR
      );
      
      procedure WriteElementString
      (
         this : in out XmlWriter.Kind;
         localName : NetFrameworkBase.BSTR; 
         ns : NetFrameworkBase.BSTR; 
         value : NetFrameworkBase.BSTR
      );
      
      procedure WriteElementString
      (
         this : in out XmlWriter.Kind;
         prefix : NetFrameworkBase.BSTR; 
         localName : NetFrameworkBase.BSTR; 
         ns : NetFrameworkBase.BSTR; 
         value : NetFrameworkBase.BSTR
      );
      
      procedure Dispose
      (
         this : in out XmlWriter.Kind
      );
      
      function Create
      (
         outputFileName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlWriter.Kind_Ptr;
      
      function Create
      (
         outputFileName : NetFrameworkBase.BSTR; 
         settings : NetFrameworkBase.System.Xml.XmlWriterSettings.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlWriter.Kind_Ptr;
      
      function Create
      (
         output : NetFrameworkBase.System.IO.Stream.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlWriter.Kind_Ptr;
      
      function Create
      (
         output : NetFrameworkBase.System.IO.Stream.Kind_Ptr; 
         settings : NetFrameworkBase.System.Xml.XmlWriterSettings.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlWriter.Kind_Ptr;
      
      function Create
      (
         output : NetFrameworkBase.System.IO.TextWriter.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlWriter.Kind_Ptr;
      
      function Create
      (
         output : NetFrameworkBase.System.IO.TextWriter.Kind_Ptr; 
         settings : NetFrameworkBase.System.Xml.XmlWriterSettings.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlWriter.Kind_Ptr;
      
      function Create
      (
         output : NetFrameworkBase.System.Text.StringBuilder.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlWriter.Kind_Ptr;
      
      function Create
      (
         output : NetFrameworkBase.System.Text.StringBuilder.Kind_Ptr; 
         settings : NetFrameworkBase.System.Xml.XmlWriterSettings.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlWriter.Kind_Ptr;
      
      function Create
      (
         output : NetFrameworkBase.System.Xml.XmlWriter.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlWriter.Kind_Ptr;
      
      function Create
      (
         output : NetFrameworkBase.System.Xml.XmlWriter.Kind_Ptr; 
         settings : NetFrameworkBase.System.Xml.XmlWriterSettings.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlWriter.Kind_Ptr;
      
      function WriteStartDocumentAsync
      (
         this : in out XmlWriter.Kind
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteStartDocumentAsync
      (
         this : in out XmlWriter.Kind;
         standalone : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteEndDocumentAsync
      (
         this : in out XmlWriter.Kind
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteDocTypeAsync
      (
         this : in out XmlWriter.Kind;
         name : NetFrameworkBase.BSTR; 
         pubid : NetFrameworkBase.BSTR; 
         sysid : NetFrameworkBase.BSTR; 
         subset : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteStartElementAsync
      (
         this : in out XmlWriter.Kind;
         prefix : NetFrameworkBase.BSTR; 
         localName : NetFrameworkBase.BSTR; 
         ns : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteEndElementAsync
      (
         this : in out XmlWriter.Kind
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteFullEndElementAsync
      (
         this : in out XmlWriter.Kind
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteCDataAsync
      (
         this : in out XmlWriter.Kind;
         text : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteCommentAsync
      (
         this : in out XmlWriter.Kind;
         text : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteProcessingInstructionAsync
      (
         this : in out XmlWriter.Kind;
         name : NetFrameworkBase.BSTR; 
         text : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteEntityRefAsync
      (
         this : in out XmlWriter.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteCharEntityAsync
      (
         this : in out XmlWriter.Kind;
         ch : NetFrameworkBase.Wide_Char
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteWhitespaceAsync
      (
         this : in out XmlWriter.Kind;
         ws : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteStringAsync
      (
         this : in out XmlWriter.Kind;
         text : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteSurrogateCharEntityAsync
      (
         this : in out XmlWriter.Kind;
         lowChar : NetFrameworkBase.Wide_Char; 
         highChar : NetFrameworkBase.Wide_Char
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteCharsAsync
      (
         this : in out XmlWriter.Kind;
         buffer : NetFrameworkBase.Wide_Char_Array; 
         index : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteRawAsync
      (
         this : in out XmlWriter.Kind;
         buffer : NetFrameworkBase.Wide_Char_Array; 
         index : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteRawAsync
      (
         this : in out XmlWriter.Kind;
         data : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteBase64Async
      (
         this : in out XmlWriter.Kind;
         buffer : NetFrameworkBase.Byte_Array; 
         index : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteBinHexAsync
      (
         this : in out XmlWriter.Kind;
         buffer : NetFrameworkBase.Byte_Array; 
         index : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function FlushAsync
      (
         this : in out XmlWriter.Kind
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteNmTokenAsync
      (
         this : in out XmlWriter.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteNameAsync
      (
         this : in out XmlWriter.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteQualifiedNameAsync
      (
         this : in out XmlWriter.Kind;
         localName : NetFrameworkBase.BSTR; 
         ns : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteAttributesAsync
      (
         this : in out XmlWriter.Kind;
         reader : NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr; 
         defattr : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteNodeAsync
      (
         this : in out XmlWriter.Kind;
         reader : NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr; 
         defattr : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteNodeAsync
      (
         this : in out XmlWriter.Kind;
         navigator : NetFrameworkBase.System.Xml.XPath.XPathNavigator.Kind_Ptr; 
         defattr : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteElementStringAsync
      (
         this : in out XmlWriter.Kind;
         prefix : NetFrameworkBase.BSTR; 
         localName : NetFrameworkBase.BSTR; 
         ns : NetFrameworkBase.BSTR; 
         value : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      procedure WriteStartDocument
      (
         this : in out XmlWriter.Kind
      );
      
      procedure WriteStartDocument
      (
         this : in out XmlWriter.Kind;
         standalone : NetFrameworkBase.Boolean
      );
      
      procedure WriteEndDocument
      (
         this : in out XmlWriter.Kind
      );
      
      procedure WriteDocType
      (
         this : in out XmlWriter.Kind;
         name : NetFrameworkBase.BSTR; 
         pubid : NetFrameworkBase.BSTR; 
         sysid : NetFrameworkBase.BSTR; 
         subset : NetFrameworkBase.BSTR
      );
      
      procedure WriteStartElement
      (
         this : in out XmlWriter.Kind;
         prefix : NetFrameworkBase.BSTR; 
         localName : NetFrameworkBase.BSTR; 
         ns : NetFrameworkBase.BSTR
      );
      
      procedure WriteEndElement
      (
         this : in out XmlWriter.Kind
      );
      
      procedure WriteFullEndElement
      (
         this : in out XmlWriter.Kind
      );
      
      procedure WriteStartAttribute
      (
         this : in out XmlWriter.Kind;
         prefix : NetFrameworkBase.BSTR; 
         localName : NetFrameworkBase.BSTR; 
         ns : NetFrameworkBase.BSTR
      );
      
      procedure WriteEndAttribute
      (
         this : in out XmlWriter.Kind
      );
      
      procedure WriteCData
      (
         this : in out XmlWriter.Kind;
         text : NetFrameworkBase.BSTR
      );
      
      procedure WriteComment
      (
         this : in out XmlWriter.Kind;
         text : NetFrameworkBase.BSTR
      );
      
      procedure WriteProcessingInstruction
      (
         this : in out XmlWriter.Kind;
         name : NetFrameworkBase.BSTR; 
         text : NetFrameworkBase.BSTR
      );
      
      procedure WriteEntityRef
      (
         this : in out XmlWriter.Kind;
         name : NetFrameworkBase.BSTR
      );
      
      procedure WriteCharEntity
      (
         this : in out XmlWriter.Kind;
         ch : NetFrameworkBase.Wide_Char
      );
      
      procedure WriteWhitespace
      (
         this : in out XmlWriter.Kind;
         ws : NetFrameworkBase.BSTR
      );
      
      procedure WriteString
      (
         this : in out XmlWriter.Kind;
         text : NetFrameworkBase.BSTR
      );
      
      procedure WriteSurrogateCharEntity
      (
         this : in out XmlWriter.Kind;
         lowChar : NetFrameworkBase.Wide_Char; 
         highChar : NetFrameworkBase.Wide_Char
      );
      
      procedure WriteChars
      (
         this : in out XmlWriter.Kind;
         buffer : NetFrameworkBase.Wide_Char_Array; 
         index : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32
      );
      
      procedure WriteRaw
      (
         this : in out XmlWriter.Kind;
         buffer : NetFrameworkBase.Wide_Char_Array; 
         index : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32
      );
      
      procedure WriteRaw
      (
         this : in out XmlWriter.Kind;
         data : NetFrameworkBase.BSTR
      );
      
      procedure WriteBase64
      (
         this : in out XmlWriter.Kind;
         buffer : NetFrameworkBase.Byte_Array; 
         index : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32
      );
      
      function WriteState
      (
         this : in out XmlWriter.Kind
      )
      return NetFrameworkBase.System.Xml.WriteState.Kind;
      
      procedure Flush
      (
         this : in out XmlWriter.Kind
      );
      
      function LookupPrefix
      (
         this : in out XmlWriter.Kind;
         ns : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      procedure WriteQualifiedName
      (
         this : in out XmlWriter.Kind;
         localName : NetFrameworkBase.BSTR; 
         ns : NetFrameworkBase.BSTR
      );
      
      procedure WriteValue
      (
         this : in out XmlWriter.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure WriteNode
      (
         this : in out XmlWriter.Kind;
         reader : NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr; 
         defattr : NetFrameworkBase.Boolean
      );
      
      function WriteAttributeStringAsync
      (
         this : in out XmlWriter.Kind;
         prefix : NetFrameworkBase.BSTR; 
         localName : NetFrameworkBase.BSTR; 
         ns : NetFrameworkBase.BSTR; 
         value : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
end;
