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
limited with NetFrameworkBase.System.Configuration.SettingsPropertyValue;
limited with NetFrameworkBase.System.Array_x;
limited with NetFrameworkBase.System.Collections.IEnumerator;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Configuration.SettingsPropertyValueCollection is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      procedure Add
      (
         this : in out SettingsPropertyValueCollection.Kind;
         property : NetFrameworkBase.System.Configuration.SettingsPropertyValue.Kind_Ptr
      );
      
      procedure Remove
      (
         this : in out SettingsPropertyValueCollection.Kind;
         name : NetFrameworkBase.BSTR
      );
      
      function Item
      (
         this : in out SettingsPropertyValueCollection.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Configuration.SettingsPropertyValue.Kind_Ptr;
      
      function GetEnumerator
      (
         this : in out SettingsPropertyValueCollection.Kind
      )
      return NetFrameworkBase.System.Collections.IEnumerator.Kind_Ptr;
      
      function Clone
      (
         this : in out SettingsPropertyValueCollection.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure SetReadOnly
      (
         this : in out SettingsPropertyValueCollection.Kind
      );
      
      procedure Clear
      (
         this : in out SettingsPropertyValueCollection.Kind
      );
      
      function Count
      (
         this : in out SettingsPropertyValueCollection.Kind
      )
      return NetFrameworkBase.Int32;
      
      function IsSynchronized
      (
         this : in out SettingsPropertyValueCollection.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function SyncRoot
      (
         this : in out SettingsPropertyValueCollection.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure CopyTo
      (
         this : in out SettingsPropertyValueCollection.Kind;
         array_x : NetFrameworkBase.System.Array_x.Kind_Ptr; 
         index : NetFrameworkBase.Int32
      );
      
      function Constructor return NetFrameworkBase.System.Configuration.SettingsPropertyValueCollection.Kind_Ptr;
      
end;
