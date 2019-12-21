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
limited with NetFrameworkBase.System.Runtime.InteropServices.UnmanagedType;
limited with NetFrameworkBase.System.Guid;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Reflection.Emit.UnmanagedMarshal is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function DefineUnmanagedMarshal
      (
         unmanagedType : NetFrameworkBase.System.Runtime.InteropServices.UnmanagedType.Kind
      )
      return NetFrameworkBase.System.Reflection.Emit.UnmanagedMarshal.Kind_Ptr;
      
      function DefineByValTStr
      (
         elemCount : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Reflection.Emit.UnmanagedMarshal.Kind_Ptr;
      
      function DefineSafeArray
      (
         elemType : NetFrameworkBase.System.Runtime.InteropServices.UnmanagedType.Kind
      )
      return NetFrameworkBase.System.Reflection.Emit.UnmanagedMarshal.Kind_Ptr;
      
      function DefineByValArray
      (
         elemCount : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Reflection.Emit.UnmanagedMarshal.Kind_Ptr;
      
      function DefineLPArray
      (
         elemType : NetFrameworkBase.System.Runtime.InteropServices.UnmanagedType.Kind
      )
      return NetFrameworkBase.System.Reflection.Emit.UnmanagedMarshal.Kind_Ptr;
      
      function GetUnmanagedType
      (
         this : in out UnmanagedMarshal.Kind
      )
      return NetFrameworkBase.System.Runtime.InteropServices.UnmanagedType.Kind;
      
      function IIDGuid
      (
         this : in out UnmanagedMarshal.Kind
      )
      return NetFrameworkBase.System.Guid.Kind_Ptr;
      
      function ElementCount
      (
         this : in out UnmanagedMarshal.Kind
      )
      return NetFrameworkBase.Int32;
      
      function BaseType
      (
         this : in out UnmanagedMarshal.Kind
      )
      return NetFrameworkBase.System.Runtime.InteropServices.UnmanagedType.Kind;
      
end;