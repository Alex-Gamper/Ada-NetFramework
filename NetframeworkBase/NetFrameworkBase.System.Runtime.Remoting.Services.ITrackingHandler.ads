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
limited with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Runtime.Remoting.ObjRef;
with NetFrameworkWin32;
with NetFrameworkAdaRuntime;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Runtime.Remoting.Services.ITrackingHandler is
   
   type Kind is interface and NetFrameworkWin32.IUnknown;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array (Natural range <>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function MarshaledObject
      (
         this : in out ITrackingHandler.Kind;
         obj : NetFrameworkBase.System.Object.Kind_Ptr;
         or_x : NetFrameworkBase.System.Runtime.Remoting.ObjRef.Kind_Ptr
      ) return HResult is abstract;
      
      function UnmarshaledObject
      (
         this : in out ITrackingHandler.Kind;
         obj : NetFrameworkBase.System.Object.Kind_Ptr;
         or_x : NetFrameworkBase.System.Runtime.Remoting.ObjRef.Kind_Ptr
      ) return HResult is abstract;
      
      function DisconnectedObject
      (
         this : in out ITrackingHandler.Kind;
         obj : NetFrameworkBase.System.Object.Kind_Ptr
      ) return HResult is abstract;
      
   private
   
      This_AssemblyFile : constant Standard.Wide_String := "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\mscorlib.dll";
      This_AssemblyName : constant Standard.Wide_String := "mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089";
      This_TypeName     : constant Standard.Wide_String := "System.Runtime.Remoting.Services.ITrackingHandler";
   
end;
