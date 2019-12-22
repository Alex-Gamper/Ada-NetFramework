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
limited with NetFrameworkBase.System.Drawing.Printing.Margins;
limited with NetFrameworkBase.System.Drawing.Printing.PaperSize;
limited with NetFrameworkBase.System.Drawing.Printing.PaperSource;
limited with NetFrameworkBase.System.Drawing.Printing.PrinterResolution;
limited with NetFrameworkBase.System.Drawing.Printing.PrinterSettings;
limited with NetFrameworkBase.System.Drawing.Rectangle;
limited with NetFrameworkBase.System.Drawing.RectangleF;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Drawing.Printing.PageSettings is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Margins
      (
         this : in out PageSettings.Kind
      )
      return NetFrameworkBase.System.Drawing.Printing.Margins.Kind_Ptr;
      
      function Bounds
      (
         this : in out PageSettings.Kind
      )
      return NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr;
      
      function Color
      (
         this : in out PageSettings.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure Color
      (
         this : in out PageSettings.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function HardMarginX
      (
         this : in out PageSettings.Kind
      )
      return NetFrameworkBase.Single;
      
      function HardMarginY
      (
         this : in out PageSettings.Kind
      )
      return NetFrameworkBase.Single;
      
      function Landscape
      (
         this : in out PageSettings.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure Landscape
      (
         this : in out PageSettings.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure Margins
      (
         this : in out PageSettings.Kind;
         value : NetFrameworkBase.System.Drawing.Printing.Margins.Kind_Ptr
      );
      
      function PaperSize
      (
         this : in out PageSettings.Kind
      )
      return NetFrameworkBase.System.Drawing.Printing.PaperSize.Kind_Ptr;
      
      procedure PaperSize
      (
         this : in out PageSettings.Kind;
         value : NetFrameworkBase.System.Drawing.Printing.PaperSize.Kind_Ptr
      );
      
      function PaperSource
      (
         this : in out PageSettings.Kind
      )
      return NetFrameworkBase.System.Drawing.Printing.PaperSource.Kind_Ptr;
      
      procedure PaperSource
      (
         this : in out PageSettings.Kind;
         value : NetFrameworkBase.System.Drawing.Printing.PaperSource.Kind_Ptr
      );
      
      function PrintableArea
      (
         this : in out PageSettings.Kind
      )
      return NetFrameworkBase.System.Drawing.RectangleF.Kind_Ptr;
      
      function PrinterResolution
      (
         this : in out PageSettings.Kind
      )
      return NetFrameworkBase.System.Drawing.Printing.PrinterResolution.Kind_Ptr;
      
      procedure PrinterResolution
      (
         this : in out PageSettings.Kind;
         value : NetFrameworkBase.System.Drawing.Printing.PrinterResolution.Kind_Ptr
      );
      
      function PrinterSettings
      (
         this : in out PageSettings.Kind
      )
      return NetFrameworkBase.System.Drawing.Printing.PrinterSettings.Kind_Ptr;
      
      procedure PrinterSettings
      (
         this : in out PageSettings.Kind;
         value : NetFrameworkBase.System.Drawing.Printing.PrinterSettings.Kind_Ptr
      );
      
      function Clone
      (
         this : in out PageSettings.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure CopyToHdevmode
      (
         this : in out PageSettings.Kind;
         hdevmode : NetFrameworkBase.IntPtr
      );
      
      procedure SetHdevmode
      (
         this : in out PageSettings.Kind;
         hdevmode : NetFrameworkBase.IntPtr
      );
      
      function ToString
      (
         this : in out PageSettings.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Constructor return NetFrameworkBase.System.Drawing.Printing.PageSettings.Kind_Ptr;
      
      function Constructor
      (
         printerSettings : NetFrameworkBase.System.Drawing.Printing.PrinterSettings.Kind_Ptr
      )
      return NetFrameworkBase.System.Drawing.Printing.PageSettings.Kind_Ptr;
      
end;
