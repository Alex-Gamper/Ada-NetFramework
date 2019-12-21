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
with NetFrameworkBase.System.Xml.Schema.XmlSchemaAnnotated;
limited with NetFrameworkBase.System.Xml.XmlQualifiedName;
limited with NetFrameworkBase.System.Xml.Schema.XmlTypeCode;
limited with NetFrameworkBase.System.Xml.Schema.XmlSchemaDerivationMethod;
limited with NetFrameworkBase.System.Xml.Schema.XmlSchemaSimpleType;
limited with NetFrameworkBase.System.Xml.Schema.XmlSchemaComplexType;
limited with NetFrameworkBase.System.Xml.Schema.XmlSchemaDatatype;
with NetFrameworkBase.System.Object;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Xml.Schema.XmlSchemaType is
   
   type Kind is new NetFrameworkBase.System.Xml.Schema.XmlSchemaAnnotated.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function GetBuiltInSimpleType
      (
         qualifiedName : NetFrameworkBase.System.Xml.XmlQualifiedName.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchemaSimpleType.Kind_Ptr;
      
      function GetBuiltInSimpleType
      (
         typeCode : NetFrameworkBase.System.Xml.Schema.XmlTypeCode.Kind
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchemaSimpleType.Kind_Ptr;
      
      function GetBuiltInComplexType
      (
         typeCode : NetFrameworkBase.System.Xml.Schema.XmlTypeCode.Kind
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchemaComplexType.Kind_Ptr;
      
      function GetBuiltInComplexType
      (
         qualifiedName : NetFrameworkBase.System.Xml.XmlQualifiedName.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchemaComplexType.Kind_Ptr;
      
      function Name
      (
         this : in out XmlSchemaType.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Name
      (
         this : in out XmlSchemaType.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Final
      (
         this : in out XmlSchemaType.Kind
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchemaDerivationMethod.Kind;
      
      procedure Final
      (
         this : in out XmlSchemaType.Kind;
         value : NetFrameworkBase.System.Xml.Schema.XmlSchemaDerivationMethod.Kind
      );
      
      function QualifiedName
      (
         this : in out XmlSchemaType.Kind
      )
      return NetFrameworkBase.System.Xml.XmlQualifiedName.Kind_Ptr;
      
      function FinalResolved
      (
         this : in out XmlSchemaType.Kind
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchemaDerivationMethod.Kind;
      
      function BaseXmlSchemaType
      (
         this : in out XmlSchemaType.Kind
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchemaType.Kind_Ptr;
      
      function DerivedBy
      (
         this : in out XmlSchemaType.Kind
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchemaDerivationMethod.Kind;
      
      function Datatype
      (
         this : in out XmlSchemaType.Kind
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchemaDatatype.Kind_Ptr;
      
      function IsMixed
      (
         this : in out XmlSchemaType.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure IsMixed
      (
         this : in out XmlSchemaType.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function TypeCode
      (
         this : in out XmlSchemaType.Kind
      )
      return NetFrameworkBase.System.Xml.Schema.XmlTypeCode.Kind;
      
      function IsDerivedFrom
      (
         derivedType : NetFrameworkBase.System.Xml.Schema.XmlSchemaType.Kind_Ptr; 
         baseType : NetFrameworkBase.System.Xml.Schema.XmlSchemaType.Kind_Ptr; 
         except : NetFrameworkBase.System.Xml.Schema.XmlSchemaDerivationMethod.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function BaseSchemaType
      (
         this : in out XmlSchemaType.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function Constructor return NetFrameworkBase.System.Xml.Schema.XmlSchemaType.Kind_Ptr;
      
end;
