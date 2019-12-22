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
limited with NetFrameworkBase.System.Drawing.Graphics;
limited with NetFrameworkBase.System.Drawing.Rectangle;
limited with NetFrameworkBase.System.Drawing.Size;
limited with NetFrameworkBase.System.Drawing.BufferedGraphics;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Drawing.BufferedGraphicsContext is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function MaximumBuffer
      (
         this : in out BufferedGraphicsContext.Kind
      )
      return NetFrameworkBase.System.Drawing.Size.Kind_Ptr;
      
      function Allocate
      (
         this : in out BufferedGraphicsContext.Kind;
         targetGraphics : NetFrameworkBase.System.Drawing.Graphics.Kind_Ptr; 
         targetRectangle : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr
      )
      return NetFrameworkBase.System.Drawing.BufferedGraphics.Kind_Ptr;
      
      function Allocate
      (
         this : in out BufferedGraphicsContext.Kind;
         targetDC : NetFrameworkBase.IntPtr; 
         targetRectangle : NetFrameworkBase.System.Drawing.Rectangle.Kind_Ptr
      )
      return NetFrameworkBase.System.Drawing.BufferedGraphics.Kind_Ptr;
      
      procedure Dispose
      (
         this : in out BufferedGraphicsContext.Kind
      );
      
      procedure Invalidate
      (
         this : in out BufferedGraphicsContext.Kind
      );
      
      procedure MaximumBuffer
      (
         this : in out BufferedGraphicsContext.Kind;
         value : NetFrameworkBase.System.Drawing.Size.Kind_Ptr
      );
      
      function Constructor return NetFrameworkBase.System.Drawing.BufferedGraphicsContext.Kind_Ptr;
      
end;
