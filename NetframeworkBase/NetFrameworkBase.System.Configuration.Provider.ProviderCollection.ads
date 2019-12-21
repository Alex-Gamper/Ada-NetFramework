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
limited with NetFrameworkBase.System.Configuration.Provider.ProviderBase;
limited with NetFrameworkBase.System.Collections.IEnumerator;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Configuration.Provider.ProviderCollection is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      procedure Add
      (
         this : in out ProviderCollection.Kind;
         provider : NetFrameworkBase.System.Configuration.Provider.ProviderBase.Kind_Ptr
      );
      
      procedure Remove
      (
         this : in out ProviderCollection.Kind;
         name : NetFrameworkBase.BSTR
      );
      
      function Item
      (
         this : in out ProviderCollection.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Configuration.Provider.ProviderBase.Kind_Ptr;
      
      function GetEnumerator
      (
         this : in out ProviderCollection.Kind
      )
      return NetFrameworkBase.System.Collections.IEnumerator.Kind_Ptr;
      
      procedure SetReadOnly
      (
         this : in out ProviderCollection.Kind
      );
      
      procedure Clear
      (
         this : in out ProviderCollection.Kind
      );
      
      function Count
      (
         this : in out ProviderCollection.Kind
      )
      return NetFrameworkBase.Int32;
      
      function IsSynchronized
      (
         this : in out ProviderCollection.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function SyncRoot
      (
         this : in out ProviderCollection.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure CopyTo
      (
         this : in out ProviderCollection.Kind;
         array_x : NetFrameworkBase.System.Configuration.Provider.ProviderBase.Kind_Array; 
         index : NetFrameworkBase.Int32
      );
      
      function Constructor return NetFrameworkBase.System.Configuration.Provider.ProviderCollection.Kind_Ptr;
      
end;