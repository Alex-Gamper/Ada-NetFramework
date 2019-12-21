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
limited with NetFrameworkBase.System.Xml.Schema.XmlSchemaObject;
limited with NetFrameworkBase.System.Xml.Serialization.XmlSchemas;
limited with NetFrameworkBase.System.Xml.Serialization.XmlSchemaImporter;
limited with NetFrameworkBase.System.CodeDom.CodeCompileUnit;
limited with NetFrameworkBase.System.CodeDom.CodeNamespace;
limited with NetFrameworkBase.System.Xml.Serialization.CodeGenerationOptions;
limited with NetFrameworkBase.System.CodeDom.Compiler.CodeDomProvider;
limited with NetFrameworkBase.System.Xml.Schema.XmlSchemaType;
limited with NetFrameworkBase.System.Xml.Schema.XmlSchemaAny;
limited with NetFrameworkBase.System.CodeDom.CodeExpression;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Xml.Serialization.Advanced.SchemaImporterExtension is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function ImportSchemaType
      (
         this : in out SchemaImporterExtension.Kind;
         name : NetFrameworkBase.BSTR; 
         ns : NetFrameworkBase.BSTR; 
         context : NetFrameworkBase.System.Xml.Schema.XmlSchemaObject.Kind_Ptr; 
         schemas : NetFrameworkBase.System.Xml.Serialization.XmlSchemas.Kind_Ptr; 
         importer : NetFrameworkBase.System.Xml.Serialization.XmlSchemaImporter.Kind_Ptr; 
         compileUnit : NetFrameworkBase.System.CodeDom.CodeCompileUnit.Kind_Ptr; 
         mainNamespace : NetFrameworkBase.System.CodeDom.CodeNamespace.Kind_Ptr; 
         options : NetFrameworkBase.System.Xml.Serialization.CodeGenerationOptions.Kind; 
         codeProvider : NetFrameworkBase.System.CodeDom.Compiler.CodeDomProvider.Kind_Ptr
      )
      return NetFrameworkBase.BSTR;
      
      function ImportSchemaType
      (
         this : in out SchemaImporterExtension.Kind;
         type_x : NetFrameworkBase.System.Xml.Schema.XmlSchemaType.Kind_Ptr; 
         context : NetFrameworkBase.System.Xml.Schema.XmlSchemaObject.Kind_Ptr; 
         schemas : NetFrameworkBase.System.Xml.Serialization.XmlSchemas.Kind_Ptr; 
         importer : NetFrameworkBase.System.Xml.Serialization.XmlSchemaImporter.Kind_Ptr; 
         compileUnit : NetFrameworkBase.System.CodeDom.CodeCompileUnit.Kind_Ptr; 
         mainNamespace : NetFrameworkBase.System.CodeDom.CodeNamespace.Kind_Ptr; 
         options : NetFrameworkBase.System.Xml.Serialization.CodeGenerationOptions.Kind; 
         codeProvider : NetFrameworkBase.System.CodeDom.Compiler.CodeDomProvider.Kind_Ptr
      )
      return NetFrameworkBase.BSTR;
      
      function ImportAnyElement
      (
         this : in out SchemaImporterExtension.Kind;
         any : NetFrameworkBase.System.Xml.Schema.XmlSchemaAny.Kind_Ptr; 
         mixed : NetFrameworkBase.Boolean; 
         schemas : NetFrameworkBase.System.Xml.Serialization.XmlSchemas.Kind_Ptr; 
         importer : NetFrameworkBase.System.Xml.Serialization.XmlSchemaImporter.Kind_Ptr; 
         compileUnit : NetFrameworkBase.System.CodeDom.CodeCompileUnit.Kind_Ptr; 
         mainNamespace : NetFrameworkBase.System.CodeDom.CodeNamespace.Kind_Ptr; 
         options : NetFrameworkBase.System.Xml.Serialization.CodeGenerationOptions.Kind; 
         codeProvider : NetFrameworkBase.System.CodeDom.Compiler.CodeDomProvider.Kind_Ptr
      )
      return NetFrameworkBase.BSTR;
      
      function ImportDefaultValue
      (
         this : in out SchemaImporterExtension.Kind;
         value : NetFrameworkBase.BSTR; 
         type_x : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.CodeDom.CodeExpression.Kind_Ptr;
      
end;