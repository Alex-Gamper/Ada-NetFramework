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
with NetFrameworkBase.System.Windows.Forms.CommonDialog;
limited with NetFrameworkBase.System.Drawing.Color;
limited with NetFrameworkBase.System.Drawing.Font;
limited with NetFrameworkBase.System.EventHandler;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.FontDialog is
   
   type Kind is new NetFrameworkBase.System.Windows.Forms.CommonDialog.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function AllowSimulations
      (
         this : in out FontDialog.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure AllowSimulations
      (
         this : in out FontDialog.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function AllowVectorFonts
      (
         this : in out FontDialog.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure AllowVectorFonts
      (
         this : in out FontDialog.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function AllowVerticalFonts
      (
         this : in out FontDialog.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure AllowVerticalFonts
      (
         this : in out FontDialog.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function AllowScriptChange
      (
         this : in out FontDialog.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure AllowScriptChange
      (
         this : in out FontDialog.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function Color
      (
         this : in out FontDialog.Kind
      )
      return NetFrameworkBase.System.Drawing.Color.Kind_Ptr;
      
      procedure Color
      (
         this : in out FontDialog.Kind;
         value : NetFrameworkBase.System.Drawing.Color.Kind_Ptr
      );
      
      function FixedPitchOnly
      (
         this : in out FontDialog.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure FixedPitchOnly
      (
         this : in out FontDialog.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function Font
      (
         this : in out FontDialog.Kind
      )
      return NetFrameworkBase.System.Drawing.Font.Kind_Ptr;
      
      procedure Font
      (
         this : in out FontDialog.Kind;
         value : NetFrameworkBase.System.Drawing.Font.Kind_Ptr
      );
      
      function FontMustExist
      (
         this : in out FontDialog.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure FontMustExist
      (
         this : in out FontDialog.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function MaxSize
      (
         this : in out FontDialog.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure MaxSize
      (
         this : in out FontDialog.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function MinSize
      (
         this : in out FontDialog.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure MinSize
      (
         this : in out FontDialog.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function ScriptsOnly
      (
         this : in out FontDialog.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure ScriptsOnly
      (
         this : in out FontDialog.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function ShowApply
      (
         this : in out FontDialog.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure ShowApply
      (
         this : in out FontDialog.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function ShowColor
      (
         this : in out FontDialog.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure ShowColor
      (
         this : in out FontDialog.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function ShowEffects
      (
         this : in out FontDialog.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure ShowEffects
      (
         this : in out FontDialog.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function ShowHelp
      (
         this : in out FontDialog.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure ShowHelp
      (
         this : in out FontDialog.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure add_Apply
      (
         this : in out FontDialog.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_Apply
      (
         this : in out FontDialog.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure Reset
      (
         this : in out FontDialog.Kind
      );
      
      function ToString
      (
         this : in out FontDialog.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Constructor return NetFrameworkBase.System.Windows.Forms.FontDialog.Kind_Ptr;
      
end;