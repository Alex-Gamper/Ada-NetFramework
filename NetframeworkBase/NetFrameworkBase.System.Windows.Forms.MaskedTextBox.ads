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
with NetFrameworkBase.System.Windows.Forms.TextBoxBase;
limited with NetFrameworkBase.System.Drawing.Point;
limited with NetFrameworkBase.System.EventHandler;
limited with NetFrameworkBase.System.Globalization.CultureInfo;
limited with NetFrameworkBase.System.Windows.Forms.MaskFormat;
limited with NetFrameworkBase.System.IFormatProvider;
limited with NetFrameworkBase.System.Windows.Forms.InsertKeyMode;
limited with NetFrameworkBase.System.Windows.Forms.MaskInputRejectedEventHandler;
limited with NetFrameworkBase.System.Windows.Forms.HorizontalAlignment;
limited with NetFrameworkBase.System.Windows.Forms.TypeValidationEventHandler;
limited with NetFrameworkBase.System.Type_x;
limited with NetFrameworkBase.System.ComponentModel.MaskedTextProvider;
with NetFrameworkBase.System.Object;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.MaskedTextBox is
   
   type Kind is new NetFrameworkBase.System.Windows.Forms.TextBoxBase.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function MaxLength
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure MaxLength
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function Multiline
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure Multiline
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function SelectedText
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure SelectedText
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Text
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Text
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function TextLength
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.Int32;
      
      function GetCharFromPosition
      (
         this : in out MaskedTextBox.Kind;
         pt : NetFrameworkBase.System.Drawing.Point.Kind_Ptr
      )
      return NetFrameworkBase.Wide_Char;
      
      function GetCharIndexFromPosition
      (
         this : in out MaskedTextBox.Kind;
         pt : NetFrameworkBase.System.Drawing.Point.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function GetLineFromCharIndex
      (
         this : in out MaskedTextBox.Kind;
         index : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function GetPositionFromCharIndex
      (
         this : in out MaskedTextBox.Kind;
         index : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Drawing.Point.Kind_Ptr;
      
      function AcceptsTab
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure AcceptsTab
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function AllowPromptAsInput
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure AllowPromptAsInput
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure add_AcceptsTabChanged
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_AcceptsTabChanged
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      function AsciiOnly
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure AsciiOnly
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function BeepOnError
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure BeepOnError
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function CanUndo
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Culture
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr;
      
      procedure Culture
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr
      );
      
      function CutCopyMaskFormat
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.MaskFormat.Kind;
      
      procedure CutCopyMaskFormat
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.System.Windows.Forms.MaskFormat.Kind
      );
      
      function FormatProvider
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.System.IFormatProvider.Kind_Ptr;
      
      procedure FormatProvider
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.System.IFormatProvider.Kind_Ptr
      );
      
      function HidePromptOnLeave
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure HidePromptOnLeave
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function InsertKeyMode
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.InsertKeyMode.Kind;
      
      procedure InsertKeyMode
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.System.Windows.Forms.InsertKeyMode.Kind
      );
      
      function IsOverwriteMode
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure add_IsOverwriteModeChanged
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_IsOverwriteModeChanged
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      function Lines
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.BSTR_Array;
      
      procedure Lines
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.BSTR_Array
      );
      
      function Mask
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Mask
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure add_MaskChanged
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_MaskChanged
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      function MaskCompleted
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function MaskFull
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function MaskedTextProvider
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.System.ComponentModel.MaskedTextProvider.Kind_Ptr;
      
      procedure add_MaskInputRejected
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.System.Windows.Forms.MaskInputRejectedEventHandler.Kind_Ptr
      );
      
      procedure remove_MaskInputRejected
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.System.Windows.Forms.MaskInputRejectedEventHandler.Kind_Ptr
      );
      
      procedure add_MultilineChanged
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_MultilineChanged
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      function PasswordChar
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.Wide_Char;
      
      procedure PasswordChar
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.Wide_Char
      );
      
      function PromptChar
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.Wide_Char;
      
      procedure PromptChar
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.Wide_Char
      );
      
      function ReadOnly
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure ReadOnly
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function RejectInputOnFirstFailure
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure RejectInputOnFirstFailure
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function ResetOnPrompt
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure ResetOnPrompt
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function ResetOnSpace
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure ResetOnSpace
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function SkipLiterals
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure SkipLiterals
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function TextAlign
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.HorizontalAlignment.Kind;
      
      procedure TextAlign
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.System.Windows.Forms.HorizontalAlignment.Kind
      );
      
      procedure add_TextAlignChanged
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_TextAlignChanged
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      function TextMaskFormat
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.MaskFormat.Kind;
      
      procedure TextMaskFormat
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.System.Windows.Forms.MaskFormat.Kind
      );
      
      function ToString
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure add_TypeValidationCompleted
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.System.Windows.Forms.TypeValidationEventHandler.Kind_Ptr
      );
      
      procedure remove_TypeValidationCompleted
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.System.Windows.Forms.TypeValidationEventHandler.Kind_Ptr
      );
      
      function UseSystemPasswordChar
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure UseSystemPasswordChar
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function ValidatingType
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      procedure ValidatingType
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.System.Type_x.Kind_Ptr
      );
      
      function WordWrap
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure WordWrap
      (
         this : in out MaskedTextBox.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure ClearUndo
      (
         this : in out MaskedTextBox.Kind
      );
      
      function GetFirstCharIndexOfCurrentLine
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.Int32;
      
      function GetFirstCharIndexFromLine
      (
         this : in out MaskedTextBox.Kind;
         lineNumber : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      procedure ScrollToCaret
      (
         this : in out MaskedTextBox.Kind
      );
      
      procedure Undo
      (
         this : in out MaskedTextBox.Kind
      );
      
      function ValidateText
      (
         this : in out MaskedTextBox.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function Constructor return NetFrameworkBase.System.Windows.Forms.MaskedTextBox.Kind_Ptr;
      
      function Constructor
      (
         mask : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Windows.Forms.MaskedTextBox.Kind_Ptr;
      
      function Constructor
      (
         maskedTextProvider : NetFrameworkBase.System.ComponentModel.MaskedTextProvider.Kind_Ptr
      )
      return NetFrameworkBase.System.Windows.Forms.MaskedTextBox.Kind_Ptr;
      
end;