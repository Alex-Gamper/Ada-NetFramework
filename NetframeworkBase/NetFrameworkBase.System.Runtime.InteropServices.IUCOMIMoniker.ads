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
limited with NetFrameworkBase.System.Guid;
limited with NetFrameworkBase.System.Runtime.InteropServices.IUCOMIStream;
limited with NetFrameworkBase.System.Runtime.InteropServices.IUCOMIBindCtx;
limited with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Runtime.InteropServices.IUCOMIEnumMoniker;
limited with NetFrameworkBase.System.Runtime.InteropServices.FILETIME;
with NetFrameworkWin32;
with NetFrameworkAdaRuntime;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Runtime.InteropServices.IUCOMIMoniker is
   
   type Kind is interface and NetFrameworkWin32.IUnknown;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array (Natural range <>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function GetClassID
      (
         this : in out IUCOMIMoniker.Kind;
         pClassID : NetFrameworkBase.System.Guid.Kind_Ptr
      ) return HResult is abstract;
      
      function IsDirty
      (
         this : in out IUCOMIMoniker.Kind;
         RetVal : access NetFrameworkBase.Int32
      ) return HResult is abstract;
      
      function Load
      (
         this : in out IUCOMIMoniker.Kind;
         pStm : NetFrameworkBase.System.Runtime.InteropServices.IUCOMIStream.Kind_Ptr
      ) return HResult is abstract;
      
      function Save
      (
         this : in out IUCOMIMoniker.Kind;
         pStm : NetFrameworkBase.System.Runtime.InteropServices.IUCOMIStream.Kind_Ptr;
         fClearDirty : NetFrameworkBase.Boolean
      ) return HResult is abstract;
      
      function GetSizeMax
      (
         this : in out IUCOMIMoniker.Kind;
         pcbSize : NetFrameworkBase.Int64
      ) return HResult is abstract;
      
      function BindToObject
      (
         this : in out IUCOMIMoniker.Kind;
         pbc : NetFrameworkBase.System.Runtime.InteropServices.IUCOMIBindCtx.Kind_Ptr;
         pmkToLeft : NetFrameworkBase.System.Runtime.InteropServices.IUCOMIMoniker.Kind_Ptr;
         riidResult : NetFrameworkBase.System.Guid.Kind_Ptr;
         ppvResult : NetFrameworkBase.System.Object.Kind_Ptr
      ) return HResult is abstract;
      
      function BindToStorage
      (
         this : in out IUCOMIMoniker.Kind;
         pbc : NetFrameworkBase.System.Runtime.InteropServices.IUCOMIBindCtx.Kind_Ptr;
         pmkToLeft : NetFrameworkBase.System.Runtime.InteropServices.IUCOMIMoniker.Kind_Ptr;
         riid : NetFrameworkBase.System.Guid.Kind_Ptr;
         ppvObj : NetFrameworkBase.System.Object.Kind_Ptr
      ) return HResult is abstract;
      
      function Reduce
      (
         this : in out IUCOMIMoniker.Kind;
         pbc : NetFrameworkBase.System.Runtime.InteropServices.IUCOMIBindCtx.Kind_Ptr;
         dwReduceHowFar : NetFrameworkBase.Int32;
         ppmkToLeft : NetFrameworkBase.System.Runtime.InteropServices.IUCOMIMoniker.Kind_Ptr;
         ppmkReduced : NetFrameworkBase.System.Runtime.InteropServices.IUCOMIMoniker.Kind_Ptr
      ) return HResult is abstract;
      
      function ComposeWith
      (
         this : in out IUCOMIMoniker.Kind;
         pmkRight : NetFrameworkBase.System.Runtime.InteropServices.IUCOMIMoniker.Kind_Ptr;
         fOnlyIfNotGeneric : NetFrameworkBase.Boolean;
         ppmkComposite : NetFrameworkBase.System.Runtime.InteropServices.IUCOMIMoniker.Kind_Ptr
      ) return HResult is abstract;
      
      function Enum
      (
         this : in out IUCOMIMoniker.Kind;
         fForward : NetFrameworkBase.Boolean;
         ppenumMoniker : NetFrameworkBase.System.Runtime.InteropServices.IUCOMIEnumMoniker.Kind_Ptr
      ) return HResult is abstract;
      
      function IsEqual
      (
         this : in out IUCOMIMoniker.Kind;
         pmkOtherMoniker : NetFrameworkBase.System.Runtime.InteropServices.IUCOMIMoniker.Kind_Ptr
      ) return HResult is abstract;
      
      function Hash
      (
         this : in out IUCOMIMoniker.Kind;
         pdwHash : NetFrameworkBase.Int32
      ) return HResult is abstract;
      
      function IsRunning
      (
         this : in out IUCOMIMoniker.Kind;
         pbc : NetFrameworkBase.System.Runtime.InteropServices.IUCOMIBindCtx.Kind_Ptr;
         pmkToLeft : NetFrameworkBase.System.Runtime.InteropServices.IUCOMIMoniker.Kind_Ptr;
         pmkNewlyRunning : NetFrameworkBase.System.Runtime.InteropServices.IUCOMIMoniker.Kind_Ptr
      ) return HResult is abstract;
      
      function GetTimeOfLastChange
      (
         this : in out IUCOMIMoniker.Kind;
         pbc : NetFrameworkBase.System.Runtime.InteropServices.IUCOMIBindCtx.Kind_Ptr;
         pmkToLeft : NetFrameworkBase.System.Runtime.InteropServices.IUCOMIMoniker.Kind_Ptr;
         pFileTime : NetFrameworkBase.System.Runtime.InteropServices.FILETIME.Kind_Ptr
      ) return HResult is abstract;
      
      function Inverse
      (
         this : in out IUCOMIMoniker.Kind;
         ppmk : NetFrameworkBase.System.Runtime.InteropServices.IUCOMIMoniker.Kind_Ptr
      ) return HResult is abstract;
      
      function CommonPrefixWith
      (
         this : in out IUCOMIMoniker.Kind;
         pmkOther : NetFrameworkBase.System.Runtime.InteropServices.IUCOMIMoniker.Kind_Ptr;
         ppmkPrefix : NetFrameworkBase.System.Runtime.InteropServices.IUCOMIMoniker.Kind_Ptr
      ) return HResult is abstract;
      
      function RelativePathTo
      (
         this : in out IUCOMIMoniker.Kind;
         pmkOther : NetFrameworkBase.System.Runtime.InteropServices.IUCOMIMoniker.Kind_Ptr;
         ppmkRelPath : NetFrameworkBase.System.Runtime.InteropServices.IUCOMIMoniker.Kind_Ptr
      ) return HResult is abstract;
      
      function GetDisplayName
      (
         this : in out IUCOMIMoniker.Kind;
         pbc : NetFrameworkBase.System.Runtime.InteropServices.IUCOMIBindCtx.Kind_Ptr;
         pmkToLeft : NetFrameworkBase.System.Runtime.InteropServices.IUCOMIMoniker.Kind_Ptr;
         ppszDisplayName : NetFrameworkBase.BSTR
      ) return HResult is abstract;
      
      function ParseDisplayName
      (
         this : in out IUCOMIMoniker.Kind;
         pbc : NetFrameworkBase.System.Runtime.InteropServices.IUCOMIBindCtx.Kind_Ptr;
         pmkToLeft : NetFrameworkBase.System.Runtime.InteropServices.IUCOMIMoniker.Kind_Ptr;
         pszDisplayName : NetFrameworkBase.BSTR;
         pchEaten : NetFrameworkBase.Int32;
         ppmkOut : NetFrameworkBase.System.Runtime.InteropServices.IUCOMIMoniker.Kind_Ptr
      ) return HResult is abstract;
      
      function IsSystemMoniker
      (
         this : in out IUCOMIMoniker.Kind;
         pdwMksys : NetFrameworkBase.Int32
      ) return HResult is abstract;
      
   private
   
      This_AssemblyFile : constant Standard.Wide_String := "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\mscorlib.dll";
      This_AssemblyName : constant Standard.Wide_String := "mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089";
      This_TypeName     : constant Standard.Wide_String := "System.Runtime.InteropServices.UCOMIMoniker";
   
end;