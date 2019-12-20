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
limited with NetFrameworkBase.System.Decimal;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNegativeInteger is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Value
      (
         this : in out SoapNegativeInteger.Kind
      )
      return NetFrameworkBase.System.Decimal.Kind_Ptr;
      
      procedure Value
      (
         this : in out SoapNegativeInteger.Kind;
         value : NetFrameworkBase.System.Decimal.Kind_Ptr
      );
      
      function ToString
      (
         this : in out SoapNegativeInteger.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Parse
      (
         value : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNegativeInteger.Kind_Ptr;
      
      function XsdType
      return NetFrameworkBase.BSTR;
      
      function GetXsdType
      (
         this : in out SoapNegativeInteger.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Constructor return NetFrameworkBase.System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNegativeInteger.Kind_Ptr;
      
      function Constructor
      (
         value : NetFrameworkBase.System.Decimal.Kind_Ptr
      )
      return NetFrameworkBase.System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNegativeInteger.Kind_Ptr;
      
end;
