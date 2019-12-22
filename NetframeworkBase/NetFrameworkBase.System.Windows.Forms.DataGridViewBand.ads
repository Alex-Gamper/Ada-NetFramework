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
with NetFrameworkBase.System.Windows.Forms.DataGridViewElement;
limited with NetFrameworkBase.System.Windows.Forms.ContextMenuStrip;
limited with NetFrameworkBase.System.Windows.Forms.DataGridViewCellStyle;
limited with NetFrameworkBase.System.Windows.Forms.DataGridViewTriState;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Type_x;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.DataGridViewBand is
   
   type Kind is new NetFrameworkBase.System.Windows.Forms.DataGridViewElement.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function ContextMenuStrip
      (
         this : in out DataGridViewBand.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.ContextMenuStrip.Kind_Ptr;
      
      procedure ContextMenuStrip
      (
         this : in out DataGridViewBand.Kind;
         value : NetFrameworkBase.System.Windows.Forms.ContextMenuStrip.Kind_Ptr
      );
      
      function DefaultCellStyle
      (
         this : in out DataGridViewBand.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.DataGridViewCellStyle.Kind_Ptr;
      
      procedure DefaultCellStyle
      (
         this : in out DataGridViewBand.Kind;
         value : NetFrameworkBase.System.Windows.Forms.DataGridViewCellStyle.Kind_Ptr
      );
      
      function DefaultHeaderCellType
      (
         this : in out DataGridViewBand.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function Displayed
      (
         this : in out DataGridViewBand.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Frozen
      (
         this : in out DataGridViewBand.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure Frozen
      (
         this : in out DataGridViewBand.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function HasDefaultCellStyle
      (
         this : in out DataGridViewBand.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Index
      (
         this : in out DataGridViewBand.Kind
      )
      return NetFrameworkBase.Int32;
      
      function InheritedStyle
      (
         this : in out DataGridViewBand.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.DataGridViewCellStyle.Kind_Ptr;
      
      function ReadOnly
      (
         this : in out DataGridViewBand.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Resizable
      (
         this : in out DataGridViewBand.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.DataGridViewTriState.Kind;
      
      procedure Resizable
      (
         this : in out DataGridViewBand.Kind;
         value : NetFrameworkBase.System.Windows.Forms.DataGridViewTriState.Kind
      );
      
      function Selected
      (
         this : in out DataGridViewBand.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Tag
      (
         this : in out DataGridViewBand.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure Tag
      (
         this : in out DataGridViewBand.Kind;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      function Visible
      (
         this : in out DataGridViewBand.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure Visible
      (
         this : in out DataGridViewBand.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function Clone
      (
         this : in out DataGridViewBand.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure Dispose
      (
         this : in out DataGridViewBand.Kind
      );
      
      procedure DefaultHeaderCellType
      (
         this : in out DataGridViewBand.Kind;
         value : NetFrameworkBase.System.Type_x.Kind_Ptr
      );
      
      procedure ReadOnly
      (
         this : in out DataGridViewBand.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure Selected
      (
         this : in out DataGridViewBand.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function ToString
      (
         this : in out DataGridViewBand.Kind
      )
      return NetFrameworkBase.BSTR;
      
end;
