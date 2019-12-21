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
with NetFrameworkBase.System.Xml.XmlLinkedNode;
limited with NetFrameworkBase.System.Xml.XmlWriter;
limited with NetFrameworkBase.System.Xml.XmlNodeType;
limited with NetFrameworkBase.System.Xml.XmlNode;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Xml.XmlProcessingInstruction is
   
   type Kind is new NetFrameworkBase.System.Xml.XmlLinkedNode.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Name
      (
         this : in out XmlProcessingInstruction.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function LocalName
      (
         this : in out XmlProcessingInstruction.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Value
      (
         this : in out XmlProcessingInstruction.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Value
      (
         this : in out XmlProcessingInstruction.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Target
      (
         this : in out XmlProcessingInstruction.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Data
      (
         this : in out XmlProcessingInstruction.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Data
      (
         this : in out XmlProcessingInstruction.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function InnerText
      (
         this : in out XmlProcessingInstruction.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure InnerText
      (
         this : in out XmlProcessingInstruction.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function NodeType
      (
         this : in out XmlProcessingInstruction.Kind
      )
      return NetFrameworkBase.System.Xml.XmlNodeType.Kind;
      
      function CloneNode
      (
         this : in out XmlProcessingInstruction.Kind;
         deep : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr;
      
      procedure WriteTo
      (
         this : in out XmlProcessingInstruction.Kind;
         w : NetFrameworkBase.System.Xml.XmlWriter.Kind_Ptr
      );
      
      procedure WriteContentTo
      (
         this : in out XmlProcessingInstruction.Kind;
         w : NetFrameworkBase.System.Xml.XmlWriter.Kind_Ptr
      );
      
end;
