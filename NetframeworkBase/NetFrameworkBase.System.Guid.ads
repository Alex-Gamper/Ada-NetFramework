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
with NetFrameworkBase.System.ValueType;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.IFormatProvider;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Guid is
   
   type Kind is new NetFrameworkBase.System.ValueType.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Parse
      (
         input : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Guid.Kind_Ptr;
      
      function TryParse
      (
         input : NetFrameworkBase.BSTR;
         result : out NetFrameworkBase.System.Guid.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function ParseExact
      (
         input : NetFrameworkBase.BSTR;
         format : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Guid.Kind_Ptr;
      
      function TryParseExact
      (
         input : NetFrameworkBase.BSTR;
         format : NetFrameworkBase.BSTR;
         result : out NetFrameworkBase.System.Guid.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function ToByteArray
      (
         this : in out Guid.Kind
      )
      return NetFrameworkBase.Byte_Array;
      
      function GetHashCode
      (
         this : in out Guid.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Equals
      (
         this : in out Guid.Kind;
         o : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function Equals
      (
         this : in out Guid.Kind;
         g : NetFrameworkBase.System.Guid.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function CompareTo
      (
         this : in out Guid.Kind;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function CompareTo
      (
         this : in out Guid.Kind;
         value : NetFrameworkBase.System.Guid.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function op_Equality
      (
         a : NetFrameworkBase.System.Guid.Kind_Ptr;
         b : NetFrameworkBase.System.Guid.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function op_Inequality
      (
         a : NetFrameworkBase.System.Guid.Kind_Ptr;
         b : NetFrameworkBase.System.Guid.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function NewGuid
      return NetFrameworkBase.System.Guid.Kind_Ptr;
      
      function ToString
      (
         this : in out Guid.Kind;
         format : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function ToString
      (
         this : in out Guid.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function ToString
      (
         this : in out Guid.Kind;
         format : NetFrameworkBase.BSTR;
         provider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr
      )
      return NetFrameworkBase.BSTR;
      
      function Constructor
      (
         b : NetFrameworkBase.Byte_Array
      )
      return NetFrameworkBase.System.Guid.Kind_Ptr;
      
      function Constructor
      (
         a : NetFrameworkBase.UInt32;
         b : NetFrameworkBase.UInt16;
         c : NetFrameworkBase.UInt16;
         d : NetFrameworkBase.Byte;
         e : NetFrameworkBase.Byte;
         f : NetFrameworkBase.Byte;
         g : NetFrameworkBase.Byte;
         h : NetFrameworkBase.Byte;
         i : NetFrameworkBase.Byte;
         j : NetFrameworkBase.Byte;
         k : NetFrameworkBase.Byte
      )
      return NetFrameworkBase.System.Guid.Kind_Ptr;
      
      function Constructor
      (
         a : NetFrameworkBase.Int32;
         b : NetFrameworkBase.Int16;
         c : NetFrameworkBase.Int16;
         d : NetFrameworkBase.Byte_Array
      )
      return NetFrameworkBase.System.Guid.Kind_Ptr;
      
      function Constructor
      (
         a : NetFrameworkBase.Int32;
         b : NetFrameworkBase.Int16;
         c : NetFrameworkBase.Int16;
         d : NetFrameworkBase.Byte;
         e : NetFrameworkBase.Byte;
         f : NetFrameworkBase.Byte;
         g : NetFrameworkBase.Byte;
         h : NetFrameworkBase.Byte;
         i : NetFrameworkBase.Byte;
         j : NetFrameworkBase.Byte;
         k : NetFrameworkBase.Byte
      )
      return NetFrameworkBase.System.Guid.Kind_Ptr;
      
      function Constructor
      (
         g : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Guid.Kind_Ptr;
      
end;
