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
limited with NetFrameworkBase.System.Windows.Forms.StatusBarPanel;
limited with NetFrameworkBase.System.Collections.IEnumerator;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.StatusBar.StatusBarPanelCollection is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Item
      (
         this : in out StatusBarPanelCollection.Kind;
         index : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Windows.Forms.StatusBarPanel.Kind_Ptr;
      
      function Item
      (
         this : in out StatusBarPanelCollection.Kind;
         key : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Windows.Forms.StatusBarPanel.Kind_Ptr;
      
      function Count
      (
         this : in out StatusBarPanelCollection.Kind
      )
      return NetFrameworkBase.Int32;
      
      function IsReadOnly
      (
         this : in out StatusBarPanelCollection.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Add
      (
         this : in out StatusBarPanelCollection.Kind;
         text : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Windows.Forms.StatusBarPanel.Kind_Ptr;
      
      function Add
      (
         this : in out StatusBarPanelCollection.Kind;
         value : NetFrameworkBase.System.Windows.Forms.StatusBarPanel.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      procedure AddRange
      (
         this : in out StatusBarPanelCollection.Kind;
         panels : NetFrameworkBase.System.Windows.Forms.StatusBarPanel.Kind_Array
      );
      
      function Contains
      (
         this : in out StatusBarPanelCollection.Kind;
         panel : NetFrameworkBase.System.Windows.Forms.StatusBarPanel.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function ContainsKey
      (
         this : in out StatusBarPanelCollection.Kind;
         key : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function IndexOf
      (
         this : in out StatusBarPanelCollection.Kind;
         panel : NetFrameworkBase.System.Windows.Forms.StatusBarPanel.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function IndexOfKey
      (
         this : in out StatusBarPanelCollection.Kind;
         key : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Int32;
      
      procedure Clear
      (
         this : in out StatusBarPanelCollection.Kind
      );
      
      procedure Remove
      (
         this : in out StatusBarPanelCollection.Kind;
         value : NetFrameworkBase.System.Windows.Forms.StatusBarPanel.Kind_Ptr
      );
      
      procedure RemoveByKey
      (
         this : in out StatusBarPanelCollection.Kind;
         key : NetFrameworkBase.BSTR
      );
      
      procedure Item
      (
         this : in out StatusBarPanelCollection.Kind;
         index : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Windows.Forms.StatusBarPanel.Kind_Ptr
      );
      
      procedure Insert
      (
         this : in out StatusBarPanelCollection.Kind;
         index : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Windows.Forms.StatusBarPanel.Kind_Ptr
      );
      
      procedure RemoveAt
      (
         this : in out StatusBarPanelCollection.Kind;
         index : NetFrameworkBase.Int32
      );
      
      function GetEnumerator
      (
         this : in out StatusBarPanelCollection.Kind
      )
      return NetFrameworkBase.System.Collections.IEnumerator.Kind_Ptr;
      
      function Constructor
      (
         owner : NetFrameworkBase.System.Windows.Forms.StatusBar.Kind_Ptr
      )
      return NetFrameworkBase.System.Windows.Forms.StatusBar.StatusBarPanelCollection.Kind_Ptr;
      
end;
