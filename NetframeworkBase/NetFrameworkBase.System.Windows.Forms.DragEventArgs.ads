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
limited with NetFrameworkBase.System.Windows.Forms.DragDropEffects;
limited with NetFrameworkBase.System.Windows.Forms.IDataObject;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.DragEventArgs is
   
   type Kind is new NetFrameworkBase.System.EventArgs.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Data
      (
         this : in out DragEventArgs.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.IDataObject.Kind_Ptr;
      
      function KeyState
      (
         this : in out DragEventArgs.Kind
      )
      return NetFrameworkBase.Int32;
      
      function X
      (
         this : in out DragEventArgs.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Y
      (
         this : in out DragEventArgs.Kind
      )
      return NetFrameworkBase.Int32;
      
      function AllowedEffect
      (
         this : in out DragEventArgs.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.DragDropEffects.Kind;
      
      function Effect
      (
         this : in out DragEventArgs.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.DragDropEffects.Kind;
      
      procedure Effect
      (
         this : in out DragEventArgs.Kind;
         value : NetFrameworkBase.System.Windows.Forms.DragDropEffects.Kind
      );
      
      function Constructor
      (
         data : NetFrameworkBase.System.Windows.Forms.IDataObject.Kind_Ptr;
         keyState : NetFrameworkBase.Int32;
         x : NetFrameworkBase.Int32;
         y : NetFrameworkBase.Int32;
         allowedEffect : NetFrameworkBase.System.Windows.Forms.DragDropEffects.Kind;
         effect : NetFrameworkBase.System.Windows.Forms.DragDropEffects.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.DragEventArgs.Kind_Ptr;
      
end;
