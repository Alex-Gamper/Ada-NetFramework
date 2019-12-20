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
with NetFrameworkBase.System.Security.AccessControl.GenericAcl;
limited with NetFrameworkBase.System.Security.AccessControl.GenericAce;
limited with NetFrameworkBase.System.Security.Principal.SecurityIdentifier;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Security.AccessControl.CommonAcl is
   
   type Kind is new NetFrameworkBase.System.Security.AccessControl.GenericAcl.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Revision
      (
         this : in out CommonAcl.Kind
      )
      return NetFrameworkBase.Byte;
      
      function Count
      (
         this : in out CommonAcl.Kind
      )
      return NetFrameworkBase.Int32;
      
      function BinaryLength
      (
         this : in out CommonAcl.Kind
      )
      return NetFrameworkBase.Int32;
      
      function IsCanonical
      (
         this : in out CommonAcl.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsContainer
      (
         this : in out CommonAcl.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsDS
      (
         this : in out CommonAcl.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure GetBinaryForm
      (
         this : in out CommonAcl.Kind;
         binaryForm : NetFrameworkBase.Byte_Array; 
         offset : NetFrameworkBase.Int32
      );
      
      function Item
      (
         this : in out CommonAcl.Kind;
         index : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Security.AccessControl.GenericAce.Kind_Ptr;
      
      procedure Item
      (
         this : in out CommonAcl.Kind;
         index : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Security.AccessControl.GenericAce.Kind_Ptr
      );
      
      procedure RemoveInheritedAces
      (
         this : in out CommonAcl.Kind
      );
      
      procedure Purge
      (
         this : in out CommonAcl.Kind;
         sid : NetFrameworkBase.System.Security.Principal.SecurityIdentifier.Kind_Ptr
      );
      
end;
