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
limited with NetFrameworkBase.System.Windows.Forms.ListView.ListViewItemCollection;
limited with NetFrameworkBase.System.Windows.Forms.ListView;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.ListViewGroup is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Header
      (
         this : in out ListViewGroup.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Header
      (
         this : in out ListViewGroup.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function HeaderAlignment
      (
         this : in out ListViewGroup.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.HorizontalAlignment.Kind;
      
      procedure HeaderAlignment
      (
         this : in out ListViewGroup.Kind;
         value : NetFrameworkBase.System.Windows.Forms.HorizontalAlignment.Kind
      );
      
      function Items
      (
         this : in out ListViewGroup.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.ListView.ListViewItemCollection.Kind_Ptr;
      
      function ListView
      (
         this : in out ListViewGroup.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.ListView.Kind_Ptr;
      
      function Name
      (
         this : in out ListViewGroup.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Name
      (
         this : in out ListViewGroup.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Tag
      (
         this : in out ListViewGroup.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure Tag
      (
         this : in out ListViewGroup.Kind;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      function ToString
      (
         this : in out ListViewGroup.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Constructor return NetFrameworkBase.System.Windows.Forms.ListViewGroup.Kind_Ptr;
      
      function Constructor
      (
         key : NetFrameworkBase.BSTR;
         headerText : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Windows.Forms.ListViewGroup.Kind_Ptr;
      
      function Constructor
      (
         header : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Windows.Forms.ListViewGroup.Kind_Ptr;
      
      function Constructor
      (
         header : NetFrameworkBase.BSTR;
         headerAlignment : NetFrameworkBase.System.Windows.Forms.HorizontalAlignment.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.ListViewGroup.Kind_Ptr;
      
end;
