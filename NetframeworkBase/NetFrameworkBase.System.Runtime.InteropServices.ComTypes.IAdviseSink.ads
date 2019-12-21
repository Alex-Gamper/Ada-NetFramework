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
limited with NetFrameworkBase.System.Runtime.InteropServices.ComTypes.FORMATETC;
limited with NetFrameworkBase.System.Runtime.InteropServices.ComTypes.STGMEDIUM;
limited with NetFrameworkBase.System.Runtime.InteropServices.ComTypes.IMoniker;
with NetFrameworkWin32;
with NetFrameworkAdaRuntime;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Runtime.InteropServices.ComTypes.IAdviseSink is
   
   type Kind is interface and NetFrameworkWin32.IUnknown;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array (Natural range <>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function OnDataChange
      (
         this : in out IAdviseSink.Kind;
         format : NetFrameworkBase.System.Runtime.InteropServices.ComTypes.FORMATETC.Kind_Ptr;
         stgmedium : NetFrameworkBase.System.Runtime.InteropServices.ComTypes.STGMEDIUM.Kind_Ptr
      ) return HResult is abstract;
      
      function OnViewChange
      (
         this : in out IAdviseSink.Kind;
         aspect : NetFrameworkBase.Int32;
         index : NetFrameworkBase.Int32
      ) return HResult is abstract;
      
      function OnRename
      (
         this : in out IAdviseSink.Kind;
         moniker : NetFrameworkBase.System.Runtime.InteropServices.ComTypes.IMoniker.Kind_Ptr
      ) return HResult is abstract;
      
      function OnSave
      (
         this : in out IAdviseSink.Kind
      ) return HResult is abstract;
      
      function OnClose
      (
         this : in out IAdviseSink.Kind
      ) return HResult is abstract;
      
   private
   
      This_AssemblyFile : constant Standard.Wide_String := "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\System.dll";
      This_AssemblyName : constant Standard.Wide_String := "System, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089";
      This_TypeName     : constant Standard.Wide_String := "System.Runtime.InteropServices.ComTypes.IAdviseSink";
   
end;
