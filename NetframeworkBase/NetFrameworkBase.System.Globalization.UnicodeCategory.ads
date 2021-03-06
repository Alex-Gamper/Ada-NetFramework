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
with NetFrameworkBase.System.Enum;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Globalization.UnicodeCategory is
   
   type Kind_Clr is new NetFrameworkBase.System.Enum.Kind with null record;
   type Kind_Clr_Ptr is access Kind_Clr;
   type Kind_Clr_Array is array(Natural range<>) of Kind_Clr_Ptr;
   type Kind_Clr_Array_Ptr is access all Kind_Clr_Array;
   
   type Kind is (
      UppercaseLetter,
      LowercaseLetter,
      TitlecaseLetter,
      ModifierLetter,
      OtherLetter,
      NonSpacingMark,
      SpacingCombiningMark,
      EnclosingMark,
      DecimalDigitNumber,
      LetterNumber,
      OtherNumber,
      SpaceSeparator,
      LineSeparator,
      ParagraphSeparator,
      Control,
      Format,
      Surrogate,
      PrivateUse,
      ConnectorPunctuation,
      DashPunctuation,
      OpenPunctuation,
      ClosePunctuation,
      InitialQuotePunctuation,
      FinalQuotePunctuation,
      OtherPunctuation,
      MathSymbol,
      CurrencySymbol,
      ModifierSymbol,
      OtherSymbol,
      OtherNotAssigned
   );
   
   for Kind use (
      UppercaseLetter => 0,
      LowercaseLetter => 1,
      TitlecaseLetter => 2,
      ModifierLetter => 3,
      OtherLetter => 4,
      NonSpacingMark => 5,
      SpacingCombiningMark => 6,
      EnclosingMark => 7,
      DecimalDigitNumber => 8,
      LetterNumber => 9,
      OtherNumber => 10,
      SpaceSeparator => 11,
      LineSeparator => 12,
      ParagraphSeparator => 13,
      Control => 14,
      Format => 15,
      Surrogate => 16,
      PrivateUse => 17,
      ConnectorPunctuation => 18,
      DashPunctuation => 19,
      OpenPunctuation => 20,
      ClosePunctuation => 21,
      InitialQuotePunctuation => 22,
      FinalQuotePunctuation => 23,
      OtherPunctuation => 24,
      MathSymbol => 25,
      CurrencySymbol => 26,
      ModifierSymbol => 27,
      OtherSymbol => 28,
      OtherNotAssigned => 29
   );
   
   for Kind'Size use 32;
   
   type Kind_Ptr is access Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
   function Instance return NetFrameworkWin32.IType_Ptr;
   
end;
