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
with NetFrameworkBase.System.Reflection.MethodBase;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Reflection.BindingFlags;
limited with NetFrameworkBase.System.Reflection.Binder;
limited with NetFrameworkBase.System.Globalization.CultureInfo;
limited with NetFrameworkBase.System.Reflection.MemberTypes;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Reflection.ConstructorInfo is
   
   type Kind is new NetFrameworkBase.System.Reflection.MethodBase.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function op_Equality
      (
         left : NetFrameworkBase.System.Reflection.ConstructorInfo.Kind_Ptr; 
         right : NetFrameworkBase.System.Reflection.ConstructorInfo.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      function "="(left : NetFrameworkBase.System.Reflection.ConstructorInfo.Kind_Ptr; right : NetFrameworkBase.System.Reflection.ConstructorInfo.Kind_Ptr) return NetFrameworkBase.Boolean renames op_Equality;
      
      function op_Inequality
      (
         left : NetFrameworkBase.System.Reflection.ConstructorInfo.Kind_Ptr; 
         right : NetFrameworkBase.System.Reflection.ConstructorInfo.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function Equals
      (
         this : in out ConstructorInfo.Kind;
         obj : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function GetHashCode
      (
         this : in out ConstructorInfo.Kind
      )
      return NetFrameworkBase.Int32;
      
      function MemberType
      (
         this : in out ConstructorInfo.Kind
      )
      return NetFrameworkBase.System.Reflection.MemberTypes.Kind;
      
      function Invoke
      (
         this : in out ConstructorInfo.Kind;
         parameters : NetFrameworkBase.System.Object.Kind_Array
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function Invoke
      (
         this : in out ConstructorInfo.Kind;
         invokeAttr : NetFrameworkBase.System.Reflection.BindingFlags.Kind; 
         binder : NetFrameworkBase.System.Reflection.Binder.Kind_Ptr; 
         parameters : NetFrameworkBase.System.Object.Kind_Array; 
         culture : NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
end;
