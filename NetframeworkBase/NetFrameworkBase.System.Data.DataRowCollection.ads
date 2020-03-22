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
with NetFrameworkBase.System.Data.InternalDataCollectionBase;
limited with NetFrameworkBase.System.Data.DataRow;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Array_x;
limited with NetFrameworkBase.System.Collections.IEnumerator;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Data.DataRowCollection is
   
   type Kind is new NetFrameworkBase.System.Data.InternalDataCollectionBase.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Count
      (
         this : in out DataRowCollection.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Item
      (
         this : in out DataRowCollection.Kind;
         index : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Data.DataRow.Kind_Ptr;
      
      procedure Add
      (
         this : in out DataRowCollection.Kind;
         row : NetFrameworkBase.System.Data.DataRow.Kind_Ptr
      );
      
      procedure InsertAt
      (
         this : in out DataRowCollection.Kind;
         row : NetFrameworkBase.System.Data.DataRow.Kind_Ptr; 
         pos : NetFrameworkBase.Int32
      );
      
      function IndexOf
      (
         this : in out DataRowCollection.Kind;
         row : NetFrameworkBase.System.Data.DataRow.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function Add
      (
         this : in out DataRowCollection.Kind;
         values : NetFrameworkBase.System.Object.Kind_Array
      )
      return NetFrameworkBase.System.Data.DataRow.Kind_Ptr;
      
      function Find
      (
         this : in out DataRowCollection.Kind;
         key : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.System.Data.DataRow.Kind_Ptr;
      
      function Find
      (
         this : in out DataRowCollection.Kind;
         keys : NetFrameworkBase.System.Object.Kind_Array
      )
      return NetFrameworkBase.System.Data.DataRow.Kind_Ptr;
      
      procedure Clear
      (
         this : in out DataRowCollection.Kind
      );
      
      function Contains
      (
         this : in out DataRowCollection.Kind;
         key : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function Contains
      (
         this : in out DataRowCollection.Kind;
         keys : NetFrameworkBase.System.Object.Kind_Array
      )
      return NetFrameworkBase.Boolean;
      
      procedure CopyTo
      (
         this : in out DataRowCollection.Kind;
         ar : NetFrameworkBase.System.Array_x.Kind_Ptr; 
         index : NetFrameworkBase.Int32
      );
      
      procedure CopyTo
      (
         this : in out DataRowCollection.Kind;
         array_x : NetFrameworkBase.System.Data.DataRow.Kind_Array; 
         index : NetFrameworkBase.Int32
      );
      
      function GetEnumerator
      (
         this : in out DataRowCollection.Kind
      )
      return NetFrameworkBase.System.Collections.IEnumerator.Kind_Ptr;
      
      procedure Remove
      (
         this : in out DataRowCollection.Kind;
         row : NetFrameworkBase.System.Data.DataRow.Kind_Ptr
      );
      
      procedure RemoveAt
      (
         this : in out DataRowCollection.Kind;
         index : NetFrameworkBase.Int32
      );
      
end;