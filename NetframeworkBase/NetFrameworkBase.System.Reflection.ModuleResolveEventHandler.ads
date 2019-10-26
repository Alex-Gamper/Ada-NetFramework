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
with NetFrameworkBase.System.MulticastDelegate;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.ResolveEventArgs;
limited with NetFrameworkBase.System.AsyncCallback;
limited with NetFrameworkBase.System.IAsyncResult;
limited with NetFrameworkBase.System.Reflection.Module;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Reflection.ModuleResolveEventHandler is
   
   type Kind is abstract new NetFrameworkBase.System.MulticastDelegate.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Invoke
      (
         this : in out ModuleResolveEventHandler.Kind;
         sender : NetFrameworkBase.System.Object.Kind_Ptr;
         e : NetFrameworkBase.System.ResolveEventArgs.Kind_Ptr
      )
      return NetFrameworkBase.System.Reflection.Module.Kind_Ptr is abstract;
      
      function BeginInvoke
      (
         this : in out ModuleResolveEventHandler.Kind;
         sender : NetFrameworkBase.System.Object.Kind_Ptr;
         e : NetFrameworkBase.System.ResolveEventArgs.Kind_Ptr;
         callback : NetFrameworkBase.System.AsyncCallback.Kind_Ptr;
         object : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.System.IAsyncResult.Kind_Ptr is abstract;
      
      function EndInvoke
      (
         this : in out ModuleResolveEventHandler.Kind;
         result : NetFrameworkBase.System.IAsyncResult.Kind_Ptr
      )
      return NetFrameworkBase.System.Reflection.Module.Kind_Ptr is abstract;
      
   private
   
      This_AssemblyFile : constant Standard.Wide_String := "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\mscorlib.dll";
      This_AssemblyName : constant Standard.Wide_String := "mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089";
      This_TypeName     : constant Standard.Wide_String := "System.Reflection.ModuleResolveEventHandler";
   
end;
