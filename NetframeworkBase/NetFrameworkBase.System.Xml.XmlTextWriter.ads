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
with NetFrameworkBase.System.Xml.XmlWriter;
limited with NetFrameworkBase.System.Xml.Formatting;
limited with NetFrameworkBase.System.IO.Stream;
limited with NetFrameworkBase.System.Text.Encoding;
limited with NetFrameworkBase.System.IO.TextWriter;
limited with NetFrameworkBase.System.Xml.WriteState;
limited with NetFrameworkBase.System.Xml.XmlSpace;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Xml.XmlTextWriter is
   
   type Kind is new NetFrameworkBase.System.Xml.XmlWriter.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Formatting
      (
         this : in out XmlTextWriter.Kind
      )
      return NetFrameworkBase.System.Xml.Formatting.Kind;
      
      procedure Formatting
      (
         this : in out XmlTextWriter.Kind;
         value : NetFrameworkBase.System.Xml.Formatting.Kind
      );
      
      procedure Indentation
      (
         this : in out XmlTextWriter.Kind;
         value : NetFrameworkBase.Int32
      );
      
      procedure WriteStartAttribute
      (
         this : in out XmlTextWriter.Kind;
         prefix : NetFrameworkBase.BSTR; 
         localName : NetFrameworkBase.BSTR; 
         ns : NetFrameworkBase.BSTR
      );
      
      procedure WriteCData
      (
         this : in out XmlTextWriter.Kind;
         text : NetFrameworkBase.BSTR
      );
      
      procedure WriteComment
      (
         this : in out XmlTextWriter.Kind;
         text : NetFrameworkBase.BSTR
      );
      
      procedure WriteProcessingInstruction
      (
         this : in out XmlTextWriter.Kind;
         name : NetFrameworkBase.BSTR; 
         text : NetFrameworkBase.BSTR
      );
      
      procedure WriteQualifiedName
      (
         this : in out XmlTextWriter.Kind;
         localName : NetFrameworkBase.BSTR; 
         ns : NetFrameworkBase.BSTR
      );
      
      function BaseStream
      (
         this : in out XmlTextWriter.Kind
      )
      return NetFrameworkBase.System.IO.Stream.Kind_Ptr;
      
      function Namespaces
      (
         this : in out XmlTextWriter.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure Namespaces
      (
         this : in out XmlTextWriter.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function Indentation
      (
         this : in out XmlTextWriter.Kind
      )
      return NetFrameworkBase.Int32;
      
      function IndentChar
      (
         this : in out XmlTextWriter.Kind
      )
      return NetFrameworkBase.Wide_Char;
      
      procedure IndentChar
      (
         this : in out XmlTextWriter.Kind;
         value : NetFrameworkBase.Wide_Char
      );
      
      function QuoteChar
      (
         this : in out XmlTextWriter.Kind
      )
      return NetFrameworkBase.Wide_Char;
      
      procedure QuoteChar
      (
         this : in out XmlTextWriter.Kind;
         value : NetFrameworkBase.Wide_Char
      );
      
      procedure WriteStartDocument
      (
         this : in out XmlTextWriter.Kind
      );
      
      procedure WriteStartDocument
      (
         this : in out XmlTextWriter.Kind;
         standalone : NetFrameworkBase.Boolean
      );
      
      procedure WriteEndDocument
      (
         this : in out XmlTextWriter.Kind
      );
      
      procedure WriteStartElement
      (
         this : in out XmlTextWriter.Kind;
         prefix : NetFrameworkBase.BSTR; 
         localName : NetFrameworkBase.BSTR; 
         ns : NetFrameworkBase.BSTR
      );
      
      procedure WriteEndElement
      (
         this : in out XmlTextWriter.Kind
      );
      
      procedure WriteFullEndElement
      (
         this : in out XmlTextWriter.Kind
      );
      
      procedure WriteEndAttribute
      (
         this : in out XmlTextWriter.Kind
      );
      
      procedure WriteEntityRef
      (
         this : in out XmlTextWriter.Kind;
         name : NetFrameworkBase.BSTR
      );
      
      procedure WriteCharEntity
      (
         this : in out XmlTextWriter.Kind;
         ch : NetFrameworkBase.Wide_Char
      );
      
      procedure WriteWhitespace
      (
         this : in out XmlTextWriter.Kind;
         ws : NetFrameworkBase.BSTR
      );
      
      procedure WriteString
      (
         this : in out XmlTextWriter.Kind;
         text : NetFrameworkBase.BSTR
      );
      
      procedure WriteSurrogateCharEntity
      (
         this : in out XmlTextWriter.Kind;
         lowChar : NetFrameworkBase.Wide_Char; 
         highChar : NetFrameworkBase.Wide_Char
      );
      
      procedure WriteChars
      (
         this : in out XmlTextWriter.Kind;
         buffer : NetFrameworkBase.Wide_Char_Array; 
         index : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32
      );
      
      procedure WriteRaw
      (
         this : in out XmlTextWriter.Kind;
         buffer : NetFrameworkBase.Wide_Char_Array; 
         index : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32
      );
      
      procedure WriteRaw
      (
         this : in out XmlTextWriter.Kind;
         data : NetFrameworkBase.BSTR
      );
      
      procedure WriteBinHex
      (
         this : in out XmlTextWriter.Kind;
         buffer : NetFrameworkBase.Byte_Array; 
         index : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32
      );
      
      function WriteState
      (
         this : in out XmlTextWriter.Kind
      )
      return NetFrameworkBase.System.Xml.WriteState.Kind;
      
      procedure Close
      (
         this : in out XmlTextWriter.Kind
      );
      
      procedure Flush
      (
         this : in out XmlTextWriter.Kind
      );
      
      procedure WriteName
      (
         this : in out XmlTextWriter.Kind;
         name : NetFrameworkBase.BSTR
      );
      
      function LookupPrefix
      (
         this : in out XmlTextWriter.Kind;
         ns : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function XmlSpace
      (
         this : in out XmlTextWriter.Kind
      )
      return NetFrameworkBase.System.Xml.XmlSpace.Kind;
      
      function XmlLang
      (
         this : in out XmlTextWriter.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure WriteDocType
      (
         this : in out XmlTextWriter.Kind;
         name : NetFrameworkBase.BSTR; 
         pubid : NetFrameworkBase.BSTR; 
         sysid : NetFrameworkBase.BSTR; 
         subset : NetFrameworkBase.BSTR
      );
      
      procedure WriteBase64
      (
         this : in out XmlTextWriter.Kind;
         buffer : NetFrameworkBase.Byte_Array; 
         index : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32
      );
      
      procedure WriteNmToken
      (
         this : in out XmlTextWriter.Kind;
         name : NetFrameworkBase.BSTR
      );
      
      function Constructor
      (
         w : NetFrameworkBase.System.IO.Stream.Kind_Ptr;
         encoding : NetFrameworkBase.System.Text.Encoding.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlTextWriter.Kind_Ptr;
      
      function Constructor
      (
         filename : NetFrameworkBase.BSTR;
         encoding : NetFrameworkBase.System.Text.Encoding.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlTextWriter.Kind_Ptr;
      
      function Constructor
      (
         w : NetFrameworkBase.System.IO.TextWriter.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlTextWriter.Kind_Ptr;
      
end;