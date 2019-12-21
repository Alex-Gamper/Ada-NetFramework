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
with NetFrameworkBase.System.Xml.Schema.XmlSchemaExternal;
limited with NetFrameworkBase.System.Xml.Schema.XmlSchemaAnnotation;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Xml.Schema.XmlSchemaImport is
   
   type Kind is new NetFrameworkBase.System.Xml.Schema.XmlSchemaExternal.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Namespace
      (
         this : in out XmlSchemaImport.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Namespace
      (
         this : in out XmlSchemaImport.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Annotation
      (
         this : in out XmlSchemaImport.Kind
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchemaAnnotation.Kind_Ptr;
      
      procedure Annotation
      (
         this : in out XmlSchemaImport.Kind;
         value : NetFrameworkBase.System.Xml.Schema.XmlSchemaAnnotation.Kind_Ptr
      );
      
      function Constructor return NetFrameworkBase.System.Xml.Schema.XmlSchemaImport.Kind_Ptr;
      
end;
