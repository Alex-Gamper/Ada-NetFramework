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
with NetFrameworkBase.System.Xml.Schema.XmlSchemaException;
limited with NetFrameworkBase.System.Runtime.Serialization.SerializationInfo;
limited with NetFrameworkBase.System.Runtime.Serialization.StreamingContext;
limited with NetFrameworkBase.System.Exception_x;
with NetFrameworkBase.System.Object;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Xml.Schema.XmlSchemaValidationException is
   
   type Kind is new NetFrameworkBase.System.Xml.Schema.XmlSchemaException.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      procedure GetObjectData
      (
         this : in out XmlSchemaValidationException.Kind;
         info : NetFrameworkBase.System.Runtime.Serialization.SerializationInfo.Kind_Ptr; 
         context : NetFrameworkBase.System.Runtime.Serialization.StreamingContext.Kind_Ptr
      );
      
      function SourceObject
      (
         this : in out XmlSchemaValidationException.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function Constructor return NetFrameworkBase.System.Xml.Schema.XmlSchemaValidationException.Kind_Ptr;
      
      function Constructor
      (
         message : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchemaValidationException.Kind_Ptr;
      
      function Constructor
      (
         message : NetFrameworkBase.BSTR;
         innerException : NetFrameworkBase.System.Exception_x.Kind_Ptr
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchemaValidationException.Kind_Ptr;
      
      function Constructor
      (
         message : NetFrameworkBase.BSTR;
         innerException : NetFrameworkBase.System.Exception_x.Kind_Ptr;
         lineNumber : NetFrameworkBase.Int32;
         linePosition : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Xml.Schema.XmlSchemaValidationException.Kind_Ptr;
      
end;
