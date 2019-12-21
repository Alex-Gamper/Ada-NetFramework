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
limited with NetFrameworkBase.System.Runtime.InteropServices.ITypeLibImporterNotifySink;
limited with NetFrameworkBase.System.Reflection.StrongNameKeyPair;
limited with NetFrameworkBase.System.Reflection.Assembly;
limited with NetFrameworkBase.System.Runtime.InteropServices.TypeLibExporterFlags;
limited with NetFrameworkBase.System.Runtime.InteropServices.ITypeLibExporterNotifySink;
limited with NetFrameworkBase.System.Runtime.InteropServices.TypeLibImporterFlags;
limited with NetFrameworkBase.System.Version;
limited with NetFrameworkBase.System.Guid;
limited with NetFrameworkBase.System.Reflection.Emit.AssemblyBuilder;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Runtime.InteropServices.TypeLibConverter is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function ConvertTypeLibToAssembly
      (
         this : in out TypeLibConverter.Kind;
         typeLib : NetFrameworkBase.System.Object.Kind_Ptr; 
         asmFileName : NetFrameworkBase.BSTR; 
         flags : NetFrameworkBase.Int32; 
         notifySink : NetFrameworkBase.System.Runtime.InteropServices.ITypeLibImporterNotifySink.Kind_Ptr; 
         publicKey : NetFrameworkBase.Byte_Array; 
         keyPair : NetFrameworkBase.System.Reflection.StrongNameKeyPair.Kind_Ptr; 
         unsafeInterfaces : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Reflection.Emit.AssemblyBuilder.Kind_Ptr;
      
      function ConvertAssemblyToTypeLib
      (
         this : in out TypeLibConverter.Kind;
         assembly : NetFrameworkBase.System.Reflection.Assembly.Kind_Ptr; 
         strTypeLibName : NetFrameworkBase.BSTR; 
         flags : NetFrameworkBase.System.Runtime.InteropServices.TypeLibExporterFlags.Kind; 
         notifySink : NetFrameworkBase.System.Runtime.InteropServices.ITypeLibExporterNotifySink.Kind_Ptr
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function ConvertTypeLibToAssembly
      (
         this : in out TypeLibConverter.Kind;
         typeLib : NetFrameworkBase.System.Object.Kind_Ptr; 
         asmFileName : NetFrameworkBase.BSTR; 
         flags : NetFrameworkBase.System.Runtime.InteropServices.TypeLibImporterFlags.Kind; 
         notifySink : NetFrameworkBase.System.Runtime.InteropServices.ITypeLibImporterNotifySink.Kind_Ptr; 
         publicKey : NetFrameworkBase.Byte_Array; 
         keyPair : NetFrameworkBase.System.Reflection.StrongNameKeyPair.Kind_Ptr; 
         asmNamespace : NetFrameworkBase.BSTR; 
         asmVersion : NetFrameworkBase.System.Version.Kind_Ptr
      )
      return NetFrameworkBase.System.Reflection.Emit.AssemblyBuilder.Kind_Ptr;
      
      function GetPrimaryInteropAssembly
      (
         this : in out TypeLibConverter.Kind;
         g : NetFrameworkBase.System.Guid.Kind_Ptr; 
         major : NetFrameworkBase.Int32; 
         minor : NetFrameworkBase.Int32; 
         lcid : NetFrameworkBase.Int32; 
         asmName : out NetFrameworkBase.BSTR; 
         asmCodeBase : out NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function Constructor return NetFrameworkBase.System.Runtime.InteropServices.TypeLibConverter.Kind_Ptr;
      
end;