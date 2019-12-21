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
limited with NetFrameworkBase.System.Runtime.InteropServices.ComTypes.DATADIR;
limited with NetFrameworkBase.System.Runtime.InteropServices.ComTypes.ADVF;
limited with NetFrameworkBase.System.Runtime.InteropServices.ComTypes.IAdviseSink;
limited with NetFrameworkBase.System.Runtime.InteropServices.ComTypes.IEnumSTATDATA;
limited with NetFrameworkBase.System.Runtime.InteropServices.ComTypes.IEnumFORMATETC;
with NetFrameworkWin32;
with NetFrameworkAdaRuntime;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Runtime.InteropServices.ComTypes.IDataObject is
   
   type Kind is interface and NetFrameworkWin32.IUnknown;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array (Natural range <>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function QueryGetData
      (
         this : in out IDataObject.Kind;
         format : NetFrameworkBase.System.Runtime.InteropServices.ComTypes.FORMATETC.Kind_Ptr;
         RetVal : access NetFrameworkBase.Int32
      ) return HResult is abstract;
      
      function GetData
      (
         this : in out IDataObject.Kind;
         format : NetFrameworkBase.System.Runtime.InteropServices.ComTypes.FORMATETC.Kind_Ptr;
         medium : NetFrameworkBase.System.Runtime.InteropServices.ComTypes.STGMEDIUM.Kind_Ptr
      ) return HResult is abstract;
      
      function GetDataHere
      (
         this : in out IDataObject.Kind;
         format : NetFrameworkBase.System.Runtime.InteropServices.ComTypes.FORMATETC.Kind_Ptr;
         medium : NetFrameworkBase.System.Runtime.InteropServices.ComTypes.STGMEDIUM.Kind_Ptr
      ) return HResult is abstract;
      
      function GetCanonicalFormatEtc
      (
         this : in out IDataObject.Kind;
         formatIn : NetFrameworkBase.System.Runtime.InteropServices.ComTypes.FORMATETC.Kind_Ptr;
         formatOut : NetFrameworkBase.System.Runtime.InteropServices.ComTypes.FORMATETC.Kind_Ptr;
         RetVal : access NetFrameworkBase.Int32
      ) return HResult is abstract;
      
      function SetData
      (
         this : in out IDataObject.Kind;
         formatIn : NetFrameworkBase.System.Runtime.InteropServices.ComTypes.FORMATETC.Kind_Ptr;
         medium : NetFrameworkBase.System.Runtime.InteropServices.ComTypes.STGMEDIUM.Kind_Ptr;
         release : NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function EnumFormatEtc
      (
         this : in out IDataObject.Kind;
         direction : NetFrameworkBase.System.Runtime.InteropServices.ComTypes.DATADIR.Kind;
         RetVal : access NetFrameworkBase.System.Runtime.InteropServices.ComTypes.IEnumFORMATETC.Kind_Ptr
      ) return HResult is abstract;
      
      function DAdvise
      (
         this : in out IDataObject.Kind;
         pFormatetc : NetFrameworkBase.System.Runtime.InteropServices.ComTypes.FORMATETC.Kind_Ptr;
         advf : NetFrameworkBase.System.Runtime.InteropServices.ComTypes.ADVF.Kind;
         adviseSink : NetFrameworkBase.System.Runtime.InteropServices.ComTypes.IAdviseSink.Kind_Ptr;
         connection : NetFrameworkBase.Int32;
         RetVal : access NetFrameworkBase.Int32
      ) return HResult is abstract;
      
      function DUnadvise
      (
         this : in out IDataObject.Kind;
         connection : NetFrameworkBase.Int32
      ) return HResult is abstract;
      
      function EnumDAdvise
      (
         this : in out IDataObject.Kind;
         enumAdvise : NetFrameworkBase.System.Runtime.InteropServices.ComTypes.IEnumSTATDATA.Kind_Ptr;
         RetVal : access NetFrameworkBase.Int32
      ) return HResult is abstract;
      
   private
   
      This_AssemblyFile : constant Standard.Wide_String := "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\System.dll";
      This_AssemblyName : constant Standard.Wide_String := "System, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089";
      This_TypeName     : constant Standard.Wide_String := "System.Runtime.InteropServices.ComTypes.IDataObject";
   
end;
