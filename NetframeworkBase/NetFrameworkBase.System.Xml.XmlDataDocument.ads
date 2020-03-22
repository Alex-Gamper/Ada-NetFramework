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
with NetFrameworkBase.System.Xml.XmlDocument;
limited with NetFrameworkBase.System.Xml.XmlElement;
limited with NetFrameworkBase.System.Data.DataRow;
limited with NetFrameworkBase.System.IO.Stream;
limited with NetFrameworkBase.System.IO.TextReader;
limited with NetFrameworkBase.System.Xml.XmlReader;
limited with NetFrameworkBase.System.Data.DataSet;
limited with NetFrameworkBase.System.Xml.XmlEntityReference;
limited with NetFrameworkBase.System.Xml.XmlNode;
limited with NetFrameworkBase.System.Xml.XmlNodeList;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Xml.XmlDataDocument is
   
   type Kind is new NetFrameworkBase.System.Xml.XmlDocument.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function CreateElement
      (
         this : in out XmlDataDocument.Kind;
         prefix : NetFrameworkBase.BSTR; 
         localName : NetFrameworkBase.BSTR; 
         namespaceURI : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlElement.Kind_Ptr;
      
      function CreateEntityReference
      (
         this : in out XmlDataDocument.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlEntityReference.Kind_Ptr;
      
      function DataSet
      (
         this : in out XmlDataDocument.Kind
      )
      return NetFrameworkBase.System.Data.DataSet.Kind_Ptr;
      
      function GetRowFromElement
      (
         this : in out XmlDataDocument.Kind;
         e : NetFrameworkBase.System.Xml.XmlElement.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.DataRow.Kind_Ptr;
      
      function GetElementFromRow
      (
         this : in out XmlDataDocument.Kind;
         r : NetFrameworkBase.System.Data.DataRow.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlElement.Kind_Ptr;
      
      function CloneNode
      (
         this : in out XmlDataDocument.Kind;
         deep : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr;
      
      procedure Load
      (
         this : in out XmlDataDocument.Kind;
         filename : NetFrameworkBase.BSTR
      );
      
      procedure Load
      (
         this : in out XmlDataDocument.Kind;
         inStream : NetFrameworkBase.System.IO.Stream.Kind_Ptr
      );
      
      procedure Load
      (
         this : in out XmlDataDocument.Kind;
         txtReader : NetFrameworkBase.System.IO.TextReader.Kind_Ptr
      );
      
      procedure Load
      (
         this : in out XmlDataDocument.Kind;
         reader : NetFrameworkBase.System.Xml.XmlReader.Kind_Ptr
      );
      
      function GetElementById
      (
         this : in out XmlDataDocument.Kind;
         elemId : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlElement.Kind_Ptr;
      
      function GetElementsByTagName
      (
         this : in out XmlDataDocument.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.XmlNodeList.Kind_Ptr;
      
      function Constructor return NetFrameworkBase.System.Xml.XmlDataDocument.Kind_Ptr;
      
      function Constructor
      (
         dataset : NetFrameworkBase.System.Data.DataSet.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.XmlDataDocument.Kind_Ptr;
      
end;