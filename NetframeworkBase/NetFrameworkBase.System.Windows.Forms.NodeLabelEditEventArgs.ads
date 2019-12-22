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
with NetFrameworkBase.System.EventArgs;
limited with NetFrameworkBase.System.Windows.Forms.TreeNode;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.NodeLabelEditEventArgs is
   
   type Kind is new NetFrameworkBase.System.EventArgs.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function CancelEdit
      (
         this : in out NodeLabelEditEventArgs.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure CancelEdit
      (
         this : in out NodeLabelEditEventArgs.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function Label
      (
         this : in out NodeLabelEditEventArgs.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Node
      (
         this : in out NodeLabelEditEventArgs.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.TreeNode.Kind_Ptr;
      
      function Constructor
      (
         node : NetFrameworkBase.System.Windows.Forms.TreeNode.Kind_Ptr
      )
      return NetFrameworkBase.System.Windows.Forms.NodeLabelEditEventArgs.Kind_Ptr;
      
      function Constructor
      (
         node : NetFrameworkBase.System.Windows.Forms.TreeNode.Kind_Ptr;
         label : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Windows.Forms.NodeLabelEditEventArgs.Kind_Ptr;
      
end;
