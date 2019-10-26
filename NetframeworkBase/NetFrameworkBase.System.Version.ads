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
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Version is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Major
      (
         this : in out Version.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Minor
      (
         this : in out Version.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Build
      (
         this : in out Version.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Revision
      (
         this : in out Version.Kind
      )
      return NetFrameworkBase.Int32;
      
      function MajorRevision
      (
         this : in out Version.Kind
      )
      return NetFrameworkBase.Int16;
      
      function MinorRevision
      (
         this : in out Version.Kind
      )
      return NetFrameworkBase.Int16;
      
      function Clone
      (
         this : in out Version.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function CompareTo
      (
         this : in out Version.Kind;
         version : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function CompareTo
      (
         this : in out Version.Kind;
         value : NetFrameworkBase.System.Version.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function Equals
      (
         this : in out Version.Kind;
         obj : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function Equals
      (
         this : in out Version.Kind;
         obj : NetFrameworkBase.System.Version.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function GetHashCode
      (
         this : in out Version.Kind
      )
      return NetFrameworkBase.Int32;
      
      function ToString
      (
         this : in out Version.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function ToString
      (
         this : in out Version.Kind;
         fieldCount : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.BSTR;
      
      function op_Equality
      (
         v1 : NetFrameworkBase.System.Version.Kind_Ptr;
         v2 : NetFrameworkBase.System.Version.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function op_Inequality
      (
         v1 : NetFrameworkBase.System.Version.Kind_Ptr;
         v2 : NetFrameworkBase.System.Version.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function op_LessThan
      (
         v1 : NetFrameworkBase.System.Version.Kind_Ptr;
         v2 : NetFrameworkBase.System.Version.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function op_LessThanOrEqual
      (
         v1 : NetFrameworkBase.System.Version.Kind_Ptr;
         v2 : NetFrameworkBase.System.Version.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function op_GreaterThan
      (
         v1 : NetFrameworkBase.System.Version.Kind_Ptr;
         v2 : NetFrameworkBase.System.Version.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function op_GreaterThanOrEqual
      (
         v1 : NetFrameworkBase.System.Version.Kind_Ptr;
         v2 : NetFrameworkBase.System.Version.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function Parse
      (
         input : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Version.Kind_Ptr;
      
      function TryParse
      (
         input : NetFrameworkBase.BSTR;
         result : out NetFrameworkBase.System.Version.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function Constructor
      (
         major : NetFrameworkBase.Int32;
         minor : NetFrameworkBase.Int32;
         build : NetFrameworkBase.Int32;
         revision : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Version.Kind_Ptr;
      
      function Constructor
      (
         major : NetFrameworkBase.Int32;
         minor : NetFrameworkBase.Int32;
         build : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Version.Kind_Ptr;
      
      function Constructor
      (
         major : NetFrameworkBase.Int32;
         minor : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Version.Kind_Ptr;
      
      function Constructor
      (
         version : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Version.Kind_Ptr;
      
      function Constructor return NetFrameworkBase.System.Version.Kind_Ptr;
      
end;
