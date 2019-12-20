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
with NetFrameworkBase.System.Security.AccessControl.QualifiedAce;
limited with NetFrameworkBase.System.Security.AccessControl.AceFlags;
limited with NetFrameworkBase.System.Security.AccessControl.AceQualifier;
limited with NetFrameworkBase.System.Security.Principal.SecurityIdentifier;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Security.AccessControl.CommonAce is
   
   type Kind is new NetFrameworkBase.System.Security.AccessControl.QualifiedAce.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function BinaryLength
      (
         this : in out CommonAce.Kind
      )
      return NetFrameworkBase.Int32;
      
      function MaxOpaqueLength
      (
         isCallback : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.Int32;
      
      procedure GetBinaryForm
      (
         this : in out CommonAce.Kind;
         binaryForm : NetFrameworkBase.Byte_Array; 
         offset : NetFrameworkBase.Int32
      );
      
      function Constructor
      (
         flags : NetFrameworkBase.System.Security.AccessControl.AceFlags.Kind;
         qualifier : NetFrameworkBase.System.Security.AccessControl.AceQualifier.Kind;
         accessMask : NetFrameworkBase.Int32;
         sid : NetFrameworkBase.System.Security.Principal.SecurityIdentifier.Kind_Ptr;
         isCallback : NetFrameworkBase.Boolean;
         opaque : NetFrameworkBase.Byte_Array
      )
      return NetFrameworkBase.System.Security.AccessControl.CommonAce.Kind_Ptr;
      
end;
