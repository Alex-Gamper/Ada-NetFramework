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
with NetFrameworkBase.System.Xml.Serialization.CodeExporter;
limited with NetFrameworkBase.System.Xml.Serialization.XmlTypeMapping;
limited with NetFrameworkBase.System.Xml.Serialization.XmlMembersMapping;
limited with NetFrameworkBase.System.CodeDom.CodeAttributeDeclarationCollection;
limited with NetFrameworkBase.System.Xml.Serialization.XmlMemberMapping;
limited with NetFrameworkBase.System.CodeDom.CodeNamespace;
limited with NetFrameworkBase.System.CodeDom.CodeCompileUnit;
limited with NetFrameworkBase.System.Xml.Serialization.CodeGenerationOptions;
limited with NetFrameworkBase.System.Collections.Hashtable;
limited with NetFrameworkBase.System.CodeDom.Compiler.CodeDomProvider;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Xml.Serialization.SoapCodeExporter is
   
   type Kind is new NetFrameworkBase.System.Xml.Serialization.CodeExporter.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      procedure ExportTypeMapping
      (
         this : in out SoapCodeExporter.Kind;
         xmlTypeMapping : NetFrameworkBase.System.Xml.Serialization.XmlTypeMapping.Kind_Ptr
      );
      
      procedure ExportMembersMapping
      (
         this : in out SoapCodeExporter.Kind;
         xmlMembersMapping : NetFrameworkBase.System.Xml.Serialization.XmlMembersMapping.Kind_Ptr
      );
      
      procedure AddMappingMetadata
      (
         this : in out SoapCodeExporter.Kind;
         metadata : NetFrameworkBase.System.CodeDom.CodeAttributeDeclarationCollection.Kind_Ptr; 
         member : NetFrameworkBase.System.Xml.Serialization.XmlMemberMapping.Kind_Ptr; 
         forceUseMemberName : NetFrameworkBase.Boolean
      );
      
      procedure AddMappingMetadata
      (
         this : in out SoapCodeExporter.Kind;
         metadata : NetFrameworkBase.System.CodeDom.CodeAttributeDeclarationCollection.Kind_Ptr; 
         member : NetFrameworkBase.System.Xml.Serialization.XmlMemberMapping.Kind_Ptr
      );
      
      function Constructor
      (
         codeNamespace : NetFrameworkBase.System.CodeDom.CodeNamespace.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.Serialization.SoapCodeExporter.Kind_Ptr;
      
      function Constructor
      (
         codeNamespace : NetFrameworkBase.System.CodeDom.CodeNamespace.Kind_Ptr;
         codeCompileUnit : NetFrameworkBase.System.CodeDom.CodeCompileUnit.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.Serialization.SoapCodeExporter.Kind_Ptr;
      
      function Constructor
      (
         codeNamespace : NetFrameworkBase.System.CodeDom.CodeNamespace.Kind_Ptr;
         codeCompileUnit : NetFrameworkBase.System.CodeDom.CodeCompileUnit.Kind_Ptr;
         options : NetFrameworkBase.System.Xml.Serialization.CodeGenerationOptions.Kind
      )
      return NetFrameworkBase.System.Xml.Serialization.SoapCodeExporter.Kind_Ptr;
      
      function Constructor
      (
         codeNamespace : NetFrameworkBase.System.CodeDom.CodeNamespace.Kind_Ptr;
         codeCompileUnit : NetFrameworkBase.System.CodeDom.CodeCompileUnit.Kind_Ptr;
         options : NetFrameworkBase.System.Xml.Serialization.CodeGenerationOptions.Kind;
         mappings : NetFrameworkBase.System.Collections.Hashtable.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.Serialization.SoapCodeExporter.Kind_Ptr;
      
      function Constructor
      (
         codeNamespace : NetFrameworkBase.System.CodeDom.CodeNamespace.Kind_Ptr;
         codeCompileUnit : NetFrameworkBase.System.CodeDom.CodeCompileUnit.Kind_Ptr;
         codeProvider : NetFrameworkBase.System.CodeDom.Compiler.CodeDomProvider.Kind_Ptr;
         options : NetFrameworkBase.System.Xml.Serialization.CodeGenerationOptions.Kind;
         mappings : NetFrameworkBase.System.Collections.Hashtable.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.Serialization.SoapCodeExporter.Kind_Ptr;
      
end;