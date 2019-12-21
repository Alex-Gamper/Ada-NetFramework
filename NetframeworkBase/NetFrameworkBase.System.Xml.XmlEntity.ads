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
limited with NetFrameworkBase.System.Xml.XmlWriter;
limited with NetFrameworkBase.System.Xml.XmlNodeType;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Xml.XmlEntity is
   
   type Kind is new NetFrameworkBase.System.Xml.XmlNode.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function CloneNode
      (
         this : in out XmlEntity.Kind;
         deep : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Xml.XmlNode.Kind_Ptr;
      
      function IsReadOnly
      (
         this : in out XmlEntity.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Name
      (
         this : in out XmlEntity.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function LocalName
      (
         this : in out XmlEntity.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function InnerText
      (
         this : in out XmlEntity.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure InnerText
      (
         this : in out XmlEntity.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function NodeType
      (
         this : in out XmlEntity.Kind
      )
      return NetFrameworkBase.System.Xml.XmlNodeType.Kind;
      
      function PublicId
      (
         this : in out XmlEntity.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function SystemId
      (
         this : in out XmlEntity.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function NotationName
      (
         this : in out XmlEntity.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function OuterXml
      (
         this : in out XmlEntity.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function InnerXml
      (
         this : in out XmlEntity.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure InnerXml
      (
         this : in out XmlEntity.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure WriteTo
      (
         this : in out XmlEntity.Kind;
         w : NetFrameworkBase.System.Xml.XmlWriter.Kind_Ptr
      );
      
      procedure WriteContentTo
      (
         this : in out XmlEntity.Kind;
         w : NetFrameworkBase.System.Xml.XmlWriter.Kind_Ptr
      );
      
      function BaseURI
      (
         this : in out XmlEntity.Kind
      )
      return NetFrameworkBase.BSTR;
      
end;
