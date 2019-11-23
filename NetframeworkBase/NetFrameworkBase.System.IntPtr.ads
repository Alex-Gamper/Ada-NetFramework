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
--------------------------------------------------------------------------------
package NetFrameworkBase.System.IntPtr is
   
   type Kind is new NetFrameworkBase.System.ValueType.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Equals
      (
         this : in out IntPtr.Kind;
         obj : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function GetHashCode
      (
         this : in out IntPtr.Kind
      )
      return NetFrameworkBase.Int32;
      
      function ToInt32
      (
         this : in out IntPtr.Kind
      )
      return NetFrameworkBase.Int32;
      
      function ToInt64
      (
         this : in out IntPtr.Kind
      )
      return NetFrameworkBase.Int64;
      
      function ToString
      (
         this : in out IntPtr.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function ToString
      (
         this : in out IntPtr.Kind;
         format : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function op_Explicit
      (
         value : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.IntPtr;
      
      function op_Explicit
      (
         value : NetFrameworkBase.Int64
      )
      return NetFrameworkBase.IntPtr;
      
      function op_Explicit
      (
         value : NetFrameworkBase.Void_Ptr
      )
      return NetFrameworkBase.IntPtr;
      
      function op_Explicit
      (
         value : NetFrameworkBase.IntPtr
      )
      return NetFrameworkBase.Void_Ptr;
      
      function op_Explicit
      (
         value : NetFrameworkBase.IntPtr
      )
      return NetFrameworkBase.Int32;
      
      function op_Explicit
      (
         value : NetFrameworkBase.IntPtr
      )
      return NetFrameworkBase.Int64;
      
      function op_Equality
      (
         value1 : NetFrameworkBase.IntPtr; 
         value2 : NetFrameworkBase.IntPtr
      )
      return NetFrameworkBase.Boolean;
      
      function op_Inequality
      (
         value1 : NetFrameworkBase.IntPtr; 
         value2 : NetFrameworkBase.IntPtr
      )
      return NetFrameworkBase.Boolean;
      
      function Add
      (
         pointer : NetFrameworkBase.IntPtr; 
         offset : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.IntPtr;
      
      function op_Addition
      (
         pointer : NetFrameworkBase.IntPtr; 
         offset : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.IntPtr;
      function "+"(pointer : NetFrameworkBase.IntPtr; offset : NetFrameworkBase.Int32) return NetFrameworkBase.IntPtr renames op_Addition;
      
      function Subtract
      (
         pointer : NetFrameworkBase.IntPtr; 
         offset : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.IntPtr;
      
      function op_Subtraction
      (
         pointer : NetFrameworkBase.IntPtr; 
         offset : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.IntPtr;
      function "-"(pointer : NetFrameworkBase.IntPtr; offset : NetFrameworkBase.Int32) return NetFrameworkBase.IntPtr renames op_Subtraction;
      
      function Size
      return NetFrameworkBase.Int32;
      
      function ToPointer
      (
         this : in out IntPtr.Kind
      )
      return NetFrameworkBase.Void_Ptr;
      
      function Constructor
      (
         value : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.IntPtr.Kind_Ptr;
      
      function Constructor
      (
         value : NetFrameworkBase.Int64
      )
      return NetFrameworkBase.System.IntPtr.Kind_Ptr;
      
      function Constructor
      (
         value : NetFrameworkBase.Void_Ptr
      )
      return NetFrameworkBase.System.IntPtr.Kind_Ptr;
      
end;
