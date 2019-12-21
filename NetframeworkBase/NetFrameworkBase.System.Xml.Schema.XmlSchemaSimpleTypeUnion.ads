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
with NetFrameworkBase.System.Xml.Schema.XmlSchemaSimpleTypeContent;
limited with NetFrameworkBase.System.Xml.XmlQualifiedName;
limited with NetFrameworkBase.System.Xml.Schema.XmlSchemaObjectCollection;
limited with NetFrameworkBase.System.Xml.Schema.XmlSchemaSimpleType;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Xml.Schema.XmlSchemaSimpleTypeUnion is
   
   type Kind is new NetFrameworkBase.System.Xml.Schema.XmlSchemaSimpleTypeContent.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function BaseTypes
      (
         this : in out XmlSchemaSimpleTypeUnion.Kind
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchemaObjectCollection.Kind_Ptr;
      
      function MemberTypes
      (
         this : in out XmlSchemaSimpleTypeUnion.Kind
      )
      return NetFrameworkBase.System.Xml.XmlQualifiedName.Kind_Array;
      
      procedure MemberTypes
      (
         this : in out XmlSchemaSimpleTypeUnion.Kind;
         value : NetFrameworkBase.System.Xml.XmlQualifiedName.Kind_Array
      );
      
      function BaseMemberTypes
      (
         this : in out XmlSchemaSimpleTypeUnion.Kind
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchemaSimpleType.Kind_Array;
      
      function Constructor return NetFrameworkBase.System.Xml.Schema.XmlSchemaSimpleTypeUnion.Kind_Ptr;
      
end;