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
package NetFrameworkBase.System.Windows.Forms.LinkLabel.Link is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Description
      (
         this : in out Link.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Description
      (
         this : in out Link.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Enabled
      (
         this : in out Link.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure Enabled
      (
         this : in out Link.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function Length
      (
         this : in out Link.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure Length
      (
         this : in out Link.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function LinkData
      (
         this : in out Link.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure LinkData
      (
         this : in out Link.Kind;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      function Name
      (
         this : in out Link.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Name
      (
         this : in out Link.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Start
      (
         this : in out Link.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure Start
      (
         this : in out Link.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function Tag
      (
         this : in out Link.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure Tag
      (
         this : in out Link.Kind;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      function Visited
      (
         this : in out Link.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure Visited
      (
         this : in out Link.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function Constructor return NetFrameworkBase.System.Windows.Forms.LinkLabel.Link.Kind_Ptr;
      
      function Constructor
      (
         start : NetFrameworkBase.Int32;
         length : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Windows.Forms.LinkLabel.Link.Kind_Ptr;
      
      function Constructor
      (
         start : NetFrameworkBase.Int32;
         length : NetFrameworkBase.Int32;
         linkData : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.System.Windows.Forms.LinkLabel.Link.Kind_Ptr;
      
end;