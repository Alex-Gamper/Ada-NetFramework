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
with NetFrameworkBase.System.Windows.Forms.ContainerControl;
limited with NetFrameworkBase.System.Windows.Forms.AutoValidate;
limited with NetFrameworkBase.System.Windows.Forms.ValidationConstraints;
limited with NetFrameworkBase.System.EventHandler;
limited with NetFrameworkBase.System.Windows.Forms.AutoSizeMode;
limited with NetFrameworkBase.System.Windows.Forms.BorderStyle;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.UserControl is
   
   type Kind is new NetFrameworkBase.System.Windows.Forms.ContainerControl.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function AutoSize
      (
         this : in out UserControl.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure AutoSize
      (
         this : in out UserControl.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function AutoValidate
      (
         this : in out UserControl.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.AutoValidate.Kind;
      
      procedure AutoValidate
      (
         this : in out UserControl.Kind;
         value : NetFrameworkBase.System.Windows.Forms.AutoValidate.Kind
      );
      
      function Text
      (
         this : in out UserControl.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Text
      (
         this : in out UserControl.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function ValidateChildren
      (
         this : in out UserControl.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function ValidateChildren
      (
         this : in out UserControl.Kind;
         validationConstraints : NetFrameworkBase.System.Windows.Forms.ValidationConstraints.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure add_AutoSizeChanged
      (
         this : in out UserControl.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_AutoSizeChanged
      (
         this : in out UserControl.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      function AutoSizeMode
      (
         this : in out UserControl.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.AutoSizeMode.Kind;
      
      procedure AutoSizeMode
      (
         this : in out UserControl.Kind;
         value : NetFrameworkBase.System.Windows.Forms.AutoSizeMode.Kind
      );
      
      procedure add_AutoValidateChanged
      (
         this : in out UserControl.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_AutoValidateChanged
      (
         this : in out UserControl.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      function BorderStyle
      (
         this : in out UserControl.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.BorderStyle.Kind;
      
      procedure BorderStyle
      (
         this : in out UserControl.Kind;
         value : NetFrameworkBase.System.Windows.Forms.BorderStyle.Kind
      );
      
      procedure add_Load
      (
         this : in out UserControl.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_Load
      (
         this : in out UserControl.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_TextChanged
      (
         this : in out UserControl.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_TextChanged
      (
         this : in out UserControl.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      function Constructor return NetFrameworkBase.System.Windows.Forms.UserControl.Kind_Ptr;
      
end;