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
limited with NetFrameworkBase.System.Windows.Forms.HorizontalAlignment;
limited with NetFrameworkBase.System.Windows.Forms.ColumnHeader;
limited with NetFrameworkBase.System.Collections.IEnumerator;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.ListView.ColumnHeaderCollection is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Item
      (
         this : in out ColumnHeaderCollection.Kind;
         key : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Windows.Forms.ColumnHeader.Kind_Ptr;
      
      function Count
      (
         this : in out ColumnHeaderCollection.Kind
      )
      return NetFrameworkBase.Int32;
      
      function IsReadOnly
      (
         this : in out ColumnHeaderCollection.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure RemoveByKey
      (
         this : in out ColumnHeaderCollection.Kind;
         key : NetFrameworkBase.BSTR
      );
      
      function IndexOfKey
      (
         this : in out ColumnHeaderCollection.Kind;
         key : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Int32;
      
      function Add
      (
         this : in out ColumnHeaderCollection.Kind;
         text : NetFrameworkBase.BSTR; 
         width : NetFrameworkBase.Int32; 
         textAlign : NetFrameworkBase.System.Windows.Forms.HorizontalAlignment.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.ColumnHeader.Kind_Ptr;
      
      function Add
      (
         this : in out ColumnHeaderCollection.Kind;
         value : NetFrameworkBase.System.Windows.Forms.ColumnHeader.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function Add
      (
         this : in out ColumnHeaderCollection.Kind;
         text : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Windows.Forms.ColumnHeader.Kind_Ptr;
      
      function Add
      (
         this : in out ColumnHeaderCollection.Kind;
         text : NetFrameworkBase.BSTR; 
         width : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Windows.Forms.ColumnHeader.Kind_Ptr;
      
      function Add
      (
         this : in out ColumnHeaderCollection.Kind;
         key : NetFrameworkBase.BSTR; 
         text : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Windows.Forms.ColumnHeader.Kind_Ptr;
      
      function Add
      (
         this : in out ColumnHeaderCollection.Kind;
         key : NetFrameworkBase.BSTR; 
         text : NetFrameworkBase.BSTR; 
         width : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Windows.Forms.ColumnHeader.Kind_Ptr;
      
      function Add
      (
         this : in out ColumnHeaderCollection.Kind;
         key : NetFrameworkBase.BSTR; 
         text : NetFrameworkBase.BSTR; 
         width : NetFrameworkBase.Int32; 
         textAlign : NetFrameworkBase.System.Windows.Forms.HorizontalAlignment.Kind; 
         imageKey : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Windows.Forms.ColumnHeader.Kind_Ptr;
      
      function Add
      (
         this : in out ColumnHeaderCollection.Kind;
         key : NetFrameworkBase.BSTR; 
         text : NetFrameworkBase.BSTR; 
         width : NetFrameworkBase.Int32; 
         textAlign : NetFrameworkBase.System.Windows.Forms.HorizontalAlignment.Kind; 
         imageIndex : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Windows.Forms.ColumnHeader.Kind_Ptr;
      
      procedure Clear
      (
         this : in out ColumnHeaderCollection.Kind
      );
      
      function Contains
      (
         this : in out ColumnHeaderCollection.Kind;
         value : NetFrameworkBase.System.Windows.Forms.ColumnHeader.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function ContainsKey
      (
         this : in out ColumnHeaderCollection.Kind;
         key : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function IndexOf
      (
         this : in out ColumnHeaderCollection.Kind;
         value : NetFrameworkBase.System.Windows.Forms.ColumnHeader.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      procedure Insert
      (
         this : in out ColumnHeaderCollection.Kind;
         index : NetFrameworkBase.Int32; 
         text : NetFrameworkBase.BSTR; 
         width : NetFrameworkBase.Int32; 
         textAlign : NetFrameworkBase.System.Windows.Forms.HorizontalAlignment.Kind
      );
      
      procedure Insert
      (
         this : in out ColumnHeaderCollection.Kind;
         index : NetFrameworkBase.Int32; 
         text : NetFrameworkBase.BSTR
      );
      
      procedure Insert
      (
         this : in out ColumnHeaderCollection.Kind;
         index : NetFrameworkBase.Int32; 
         text : NetFrameworkBase.BSTR; 
         width : NetFrameworkBase.Int32
      );
      
      procedure Insert
      (
         this : in out ColumnHeaderCollection.Kind;
         index : NetFrameworkBase.Int32; 
         key : NetFrameworkBase.BSTR; 
         text : NetFrameworkBase.BSTR
      );
      
      procedure Insert
      (
         this : in out ColumnHeaderCollection.Kind;
         index : NetFrameworkBase.Int32; 
         key : NetFrameworkBase.BSTR; 
         text : NetFrameworkBase.BSTR; 
         width : NetFrameworkBase.Int32
      );
      
      procedure Insert
      (
         this : in out ColumnHeaderCollection.Kind;
         index : NetFrameworkBase.Int32; 
         key : NetFrameworkBase.BSTR; 
         text : NetFrameworkBase.BSTR; 
         width : NetFrameworkBase.Int32; 
         textAlign : NetFrameworkBase.System.Windows.Forms.HorizontalAlignment.Kind; 
         imageKey : NetFrameworkBase.BSTR
      );
      
      procedure Insert
      (
         this : in out ColumnHeaderCollection.Kind;
         index : NetFrameworkBase.Int32; 
         key : NetFrameworkBase.BSTR; 
         text : NetFrameworkBase.BSTR; 
         width : NetFrameworkBase.Int32; 
         textAlign : NetFrameworkBase.System.Windows.Forms.HorizontalAlignment.Kind; 
         imageIndex : NetFrameworkBase.Int32
      );
      
      procedure Remove
      (
         this : in out ColumnHeaderCollection.Kind;
         column : NetFrameworkBase.System.Windows.Forms.ColumnHeader.Kind_Ptr
      );
      
      function Item
      (
         this : in out ColumnHeaderCollection.Kind;
         index : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Windows.Forms.ColumnHeader.Kind_Ptr;
      
      procedure AddRange
      (
         this : in out ColumnHeaderCollection.Kind;
         values : NetFrameworkBase.System.Windows.Forms.ColumnHeader.Kind_Array
      );
      
      procedure Insert
      (
         this : in out ColumnHeaderCollection.Kind;
         index : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Windows.Forms.ColumnHeader.Kind_Ptr
      );
      
      procedure RemoveAt
      (
         this : in out ColumnHeaderCollection.Kind;
         index : NetFrameworkBase.Int32
      );
      
      function GetEnumerator
      (
         this : in out ColumnHeaderCollection.Kind
      )
      return NetFrameworkBase.System.Collections.IEnumerator.Kind_Ptr;
      
      function Constructor
      (
         owner : NetFrameworkBase.System.Windows.Forms.ListView.Kind_Ptr
      )
      return NetFrameworkBase.System.Windows.Forms.ListView.ColumnHeaderCollection.Kind_Ptr;
      
end;