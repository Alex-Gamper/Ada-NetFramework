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
with NetFrameworkBase.System.Attribute;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Xml.Serialization.SoapTypeAttribute is
   
   type Kind is new NetFrameworkBase.System.Attribute.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function IncludeInSchema
      (
         this : in out SoapTypeAttribute.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure IncludeInSchema
      (
         this : in out SoapTypeAttribute.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function TypeName
      (
         this : in out SoapTypeAttribute.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure TypeName
      (
         this : in out SoapTypeAttribute.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Namespace
      (
         this : in out SoapTypeAttribute.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Namespace
      (
         this : in out SoapTypeAttribute.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Constructor return NetFrameworkBase.System.Xml.Serialization.SoapTypeAttribute.Kind_Ptr;
      
      function Constructor
      (
         typeName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.Serialization.SoapTypeAttribute.Kind_Ptr;
      
      function Constructor
      (
         typeName : NetFrameworkBase.BSTR;
         ns : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Xml.Serialization.SoapTypeAttribute.Kind_Ptr;
      
end;
