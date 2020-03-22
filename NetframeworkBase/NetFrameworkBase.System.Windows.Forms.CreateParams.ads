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
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.CreateParams is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function ClassName
      (
         this : in out CreateParams.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure ClassName
      (
         this : in out CreateParams.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Caption
      (
         this : in out CreateParams.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Caption
      (
         this : in out CreateParams.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Style
      (
         this : in out CreateParams.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure Style
      (
         this : in out CreateParams.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function ExStyle
      (
         this : in out CreateParams.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure ExStyle
      (
         this : in out CreateParams.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function ClassStyle
      (
         this : in out CreateParams.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure ClassStyle
      (
         this : in out CreateParams.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function X
      (
         this : in out CreateParams.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure X
      (
         this : in out CreateParams.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function Y
      (
         this : in out CreateParams.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure Y
      (
         this : in out CreateParams.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function Width
      (
         this : in out CreateParams.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure Width
      (
         this : in out CreateParams.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function Height
      (
         this : in out CreateParams.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure Height
      (
         this : in out CreateParams.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function Parent
      (
         this : in out CreateParams.Kind
      )
      return NetFrameworkBase.IntPtr;
      
      procedure Parent
      (
         this : in out CreateParams.Kind;
         value : NetFrameworkBase.IntPtr
      );
      
      function Param
      (
         this : in out CreateParams.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure Param
      (
         this : in out CreateParams.Kind;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      function ToString
      (
         this : in out CreateParams.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Constructor return NetFrameworkBase.System.Windows.Forms.CreateParams.Kind_Ptr;
      
end;