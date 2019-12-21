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
with NetFrameworkBase.System.Configuration.ConfigurationElement;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Collections.IEnumerator;
limited with NetFrameworkBase.System.Configuration.ConfigurationElementCollectionType;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Configuration.ConfigurationElementCollection is
   
   type Kind is new NetFrameworkBase.System.Configuration.ConfigurationElement.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function IsReadOnly
      (
         this : in out ConfigurationElementCollection.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Equals
      (
         this : in out ConfigurationElementCollection.Kind;
         compareTo : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function GetHashCode
      (
         this : in out ConfigurationElementCollection.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Count
      (
         this : in out ConfigurationElementCollection.Kind
      )
      return NetFrameworkBase.Int32;
      
      function EmitClear
      (
         this : in out ConfigurationElementCollection.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure EmitClear
      (
         this : in out ConfigurationElementCollection.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function IsSynchronized
      (
         this : in out ConfigurationElementCollection.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function SyncRoot
      (
         this : in out ConfigurationElementCollection.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure CopyTo
      (
         this : in out ConfigurationElementCollection.Kind;
         array_x : NetFrameworkBase.System.Configuration.ConfigurationElement.Kind_Array; 
         index : NetFrameworkBase.Int32
      );
      
      function GetEnumerator
      (
         this : in out ConfigurationElementCollection.Kind
      )
      return NetFrameworkBase.System.Collections.IEnumerator.Kind_Ptr;
      
      function CollectionType
      (
         this : in out ConfigurationElementCollection.Kind
      )
      return NetFrameworkBase.System.Configuration.ConfigurationElementCollectionType.Kind;
      
end;
