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
with NetFrameworkBase.System.Xml.Serialization.SchemaImporter;
limited with NetFrameworkBase.System.Xml.Serialization.SoapSchemaMember;
limited with NetFrameworkBase.System.Xml.XmlQualifiedName;
limited with NetFrameworkBase.System.Type_x;
limited with NetFrameworkBase.System.Xml.Serialization.XmlSchemas;
limited with NetFrameworkBase.System.Xml.Serialization.CodeIdentifiers;
limited with NetFrameworkBase.System.Xml.Serialization.CodeGenerationOptions;
limited with NetFrameworkBase.System.Xml.Serialization.ImportContext;
limited with NetFrameworkBase.System.CodeDom.Compiler.CodeDomProvider;
limited with NetFrameworkBase.System.Xml.Serialization.XmlMembersMapping;
limited with NetFrameworkBase.System.Xml.Serialization.XmlTypeMapping;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Xml.Serialization.SoapSchemaImporter is
   
   type Kind is new NetFrameworkBase.System.Xml.Serialization.SchemaImporter.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function ImportMembersMapping
      (
         this : in out SoapSchemaImporter.Kind;
         name : NetFrameworkBase.BSTR; 
         ns : NetFrameworkBase.BSTR; 
         members : NetFrameworkBase.System.Xml.Serialization.SoapSchemaMember.Kind_Array
      )
      return NetFrameworkBase.System.Xml.Serialization.XmlMembersMapping.Kind_Ptr;
      
      function ImportMembersMapping
      (
         this : in out SoapSchemaImporter.Kind;
         name : NetFrameworkBase.BSTR; 
         ns : NetFrameworkBase.BSTR; 
         members : NetFrameworkBase.System.Xml.Serialization.SoapSchemaMember.Kind_Array; 
         hasWrapperElement : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Xml.Serialization.XmlMembersMapping.Kind_Ptr;
      
      function ImportDerivedTypeMapping
      (
         this : in out SoapSchemaImporter.Kind;
         name : NetFrameworkBase.System.Xml.XmlQualifiedName.Kind_Ptr; 
         baseType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         baseTypeCanBeIndirect : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Xml.Serialization.XmlTypeMapping.Kind_Ptr;
      
      function ImportMembersMapping
      (
         this : in out SoapSchemaImporter.Kind;
         name : NetFrameworkBase.BSTR; 
         ns : NetFrameworkBase.BSTR; 
         member : NetFrameworkBase.System.Xml.Serialization.SoapSchemaMember.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.Serialization.XmlMembersMapping.Kind_Ptr;
      
      function ImportMembersMapping
      (
         this : in out SoapSchemaImporter.Kind;
         name : NetFrameworkBase.BSTR; 
         ns : NetFrameworkBase.BSTR; 
         members : NetFrameworkBase.System.Xml.Serialization.SoapSchemaMember.Kind_Array; 
         hasWrapperElement : NetFrameworkBase.Boolean; 
         baseType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         baseTypeCanBeIndirect : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Xml.Serialization.XmlMembersMapping.Kind_Ptr;
      
      function Constructor
      (
         schemas : NetFrameworkBase.System.Xml.Serialization.XmlSchemas.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.Serialization.SoapSchemaImporter.Kind_Ptr;
      
      function Constructor
      (
         schemas : NetFrameworkBase.System.Xml.Serialization.XmlSchemas.Kind_Ptr;
         typeIdentifiers : NetFrameworkBase.System.Xml.Serialization.CodeIdentifiers.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.Serialization.SoapSchemaImporter.Kind_Ptr;
      
      function Constructor
      (
         schemas : NetFrameworkBase.System.Xml.Serialization.XmlSchemas.Kind_Ptr;
         typeIdentifiers : NetFrameworkBase.System.Xml.Serialization.CodeIdentifiers.Kind_Ptr;
         options : NetFrameworkBase.System.Xml.Serialization.CodeGenerationOptions.Kind
      )
      return NetFrameworkBase.System.Xml.Serialization.SoapSchemaImporter.Kind_Ptr;
      
      function Constructor
      (
         schemas : NetFrameworkBase.System.Xml.Serialization.XmlSchemas.Kind_Ptr;
         options : NetFrameworkBase.System.Xml.Serialization.CodeGenerationOptions.Kind;
         context : NetFrameworkBase.System.Xml.Serialization.ImportContext.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.Serialization.SoapSchemaImporter.Kind_Ptr;
      
      function Constructor
      (
         schemas : NetFrameworkBase.System.Xml.Serialization.XmlSchemas.Kind_Ptr;
         options : NetFrameworkBase.System.Xml.Serialization.CodeGenerationOptions.Kind;
         codeProvider : NetFrameworkBase.System.CodeDom.Compiler.CodeDomProvider.Kind_Ptr;
         context : NetFrameworkBase.System.Xml.Serialization.ImportContext.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.Serialization.SoapSchemaImporter.Kind_Ptr;
      
end;