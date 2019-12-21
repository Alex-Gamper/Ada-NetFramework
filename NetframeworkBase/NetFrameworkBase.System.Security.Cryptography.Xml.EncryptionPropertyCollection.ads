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
limited with NetFrameworkBase.System.Security.Cryptography.Xml.EncryptionProperty;
limited with NetFrameworkBase.System.Array_x;
limited with NetFrameworkBase.System.Collections.IEnumerator;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Security.Cryptography.Xml.EncryptionPropertyCollection is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function GetEnumerator
      (
         this : in out EncryptionPropertyCollection.Kind
      )
      return NetFrameworkBase.System.Collections.IEnumerator.Kind_Ptr;
      
      function Count
      (
         this : in out EncryptionPropertyCollection.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Add
      (
         this : in out EncryptionPropertyCollection.Kind;
         value : NetFrameworkBase.System.Security.Cryptography.Xml.EncryptionProperty.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      procedure Clear
      (
         this : in out EncryptionPropertyCollection.Kind
      );
      
      function Contains
      (
         this : in out EncryptionPropertyCollection.Kind;
         value : NetFrameworkBase.System.Security.Cryptography.Xml.EncryptionProperty.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function IndexOf
      (
         this : in out EncryptionPropertyCollection.Kind;
         value : NetFrameworkBase.System.Security.Cryptography.Xml.EncryptionProperty.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      procedure Insert
      (
         this : in out EncryptionPropertyCollection.Kind;
         index : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Security.Cryptography.Xml.EncryptionProperty.Kind_Ptr
      );
      
      procedure Remove
      (
         this : in out EncryptionPropertyCollection.Kind;
         value : NetFrameworkBase.System.Security.Cryptography.Xml.EncryptionProperty.Kind_Ptr
      );
      
      procedure RemoveAt
      (
         this : in out EncryptionPropertyCollection.Kind;
         index : NetFrameworkBase.Int32
      );
      
      function IsFixedSize
      (
         this : in out EncryptionPropertyCollection.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsReadOnly
      (
         this : in out EncryptionPropertyCollection.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Item
      (
         this : in out EncryptionPropertyCollection.Kind;
         index : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Security.Cryptography.Xml.EncryptionProperty.Kind_Ptr;
      
      function ItemOf
      (
         this : in out EncryptionPropertyCollection.Kind;
         index : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Security.Cryptography.Xml.EncryptionProperty.Kind_Ptr;
      
      procedure ItemOf
      (
         this : in out EncryptionPropertyCollection.Kind;
         index : NetFrameworkBase.Int32; 
         value : NetFrameworkBase.System.Security.Cryptography.Xml.EncryptionProperty.Kind_Ptr
      );
      
      procedure CopyTo
      (
         this : in out EncryptionPropertyCollection.Kind;
         array_x : NetFrameworkBase.System.Array_x.Kind_Ptr; 
         index : NetFrameworkBase.Int32
      );
      
      procedure CopyTo
      (
         this : in out EncryptionPropertyCollection.Kind;
         array_x : NetFrameworkBase.System.Security.Cryptography.Xml.EncryptionProperty.Kind_Array; 
         index : NetFrameworkBase.Int32
      );
      
      function SyncRoot
      (
         this : in out EncryptionPropertyCollection.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function IsSynchronized
      (
         this : in out EncryptionPropertyCollection.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Constructor return NetFrameworkBase.System.Security.Cryptography.Xml.EncryptionPropertyCollection.Kind_Ptr;
      
end;