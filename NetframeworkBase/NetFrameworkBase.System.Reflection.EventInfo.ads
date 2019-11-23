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
with NetFrameworkBase.System.Reflection.MemberInfo;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Delegate;
limited with NetFrameworkBase.System.Reflection.MemberTypes;
limited with NetFrameworkBase.System.Reflection.MethodInfo;
limited with NetFrameworkBase.System.Type_x;
limited with NetFrameworkBase.System.Reflection.EventAttributes;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Reflection.EventInfo is
   
   type Kind is new NetFrameworkBase.System.Reflection.MemberInfo.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function op_Equality
      (
         left : NetFrameworkBase.System.Reflection.EventInfo.Kind_Ptr; 
         right : NetFrameworkBase.System.Reflection.EventInfo.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      function "="(left : NetFrameworkBase.System.Reflection.EventInfo.Kind_Ptr; right : NetFrameworkBase.System.Reflection.EventInfo.Kind_Ptr) return NetFrameworkBase.Boolean renames op_Equality;
      
      function op_Inequality
      (
         left : NetFrameworkBase.System.Reflection.EventInfo.Kind_Ptr; 
         right : NetFrameworkBase.System.Reflection.EventInfo.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function Equals
      (
         this : in out EventInfo.Kind;
         obj : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function GetHashCode
      (
         this : in out EventInfo.Kind
      )
      return NetFrameworkBase.Int32;
      
      function MemberType
      (
         this : in out EventInfo.Kind
      )
      return NetFrameworkBase.System.Reflection.MemberTypes.Kind;
      
      function GetOtherMethods
      (
         this : in out EventInfo.Kind;
         nonPublic : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Reflection.MethodInfo.Kind_Array;
      
      function AddMethod
      (
         this : in out EventInfo.Kind
      )
      return NetFrameworkBase.System.Reflection.MethodInfo.Kind_Ptr;
      
      function RemoveMethod
      (
         this : in out EventInfo.Kind
      )
      return NetFrameworkBase.System.Reflection.MethodInfo.Kind_Ptr;
      
      function RaiseMethod
      (
         this : in out EventInfo.Kind
      )
      return NetFrameworkBase.System.Reflection.MethodInfo.Kind_Ptr;
      
      function GetOtherMethods
      (
         this : in out EventInfo.Kind
      )
      return NetFrameworkBase.System.Reflection.MethodInfo.Kind_Array;
      
      function GetAddMethod
      (
         this : in out EventInfo.Kind
      )
      return NetFrameworkBase.System.Reflection.MethodInfo.Kind_Ptr;
      
      function GetRemoveMethod
      (
         this : in out EventInfo.Kind
      )
      return NetFrameworkBase.System.Reflection.MethodInfo.Kind_Ptr;
      
      function GetRaiseMethod
      (
         this : in out EventInfo.Kind
      )
      return NetFrameworkBase.System.Reflection.MethodInfo.Kind_Ptr;
      
      procedure AddEventHandler
      (
         this : in out EventInfo.Kind;
         target : NetFrameworkBase.System.Object.Kind_Ptr; 
         handler : NetFrameworkBase.System.Delegate.Kind_Ptr
      );
      
      procedure RemoveEventHandler
      (
         this : in out EventInfo.Kind;
         target : NetFrameworkBase.System.Object.Kind_Ptr; 
         handler : NetFrameworkBase.System.Delegate.Kind_Ptr
      );
      
      function EventHandlerType
      (
         this : in out EventInfo.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function IsSpecialName
      (
         this : in out EventInfo.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsMulticast
      (
         this : in out EventInfo.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function GetAddMethod
      (
         this : in out EventInfo.Kind;
         nonPublic : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Reflection.MethodInfo.Kind_Ptr;
      
      function GetRemoveMethod
      (
         this : in out EventInfo.Kind;
         nonPublic : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Reflection.MethodInfo.Kind_Ptr;
      
      function GetRaiseMethod
      (
         this : in out EventInfo.Kind;
         nonPublic : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Reflection.MethodInfo.Kind_Ptr;
      
      function Attributes
      (
         this : in out EventInfo.Kind
      )
      return NetFrameworkBase.System.Reflection.EventAttributes.Kind;
      
end;
