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
with NetFrameworkBase.System.IO.Pipes.PipeStream;
limited with NetFrameworkBase.System.IO.Pipes.PipeTransmissionMode;
limited with NetFrameworkBase.System.IO.Pipes.PipeDirection;
limited with NetFrameworkBase.System.IO.HandleInheritability;
limited with NetFrameworkBase.System.IO.Pipes.PipeSecurity;
limited with NetFrameworkBase.Microsoft.Win32.SafeHandles.SafePipeHandle;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.IO.Pipes.AnonymousPipeServerStream is
   
   type Kind is new NetFrameworkBase.System.IO.Pipes.PipeStream.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function TransmissionMode
      (
         this : in out AnonymousPipeServerStream.Kind
      )
      return NetFrameworkBase.System.IO.Pipes.PipeTransmissionMode.Kind;
      
      procedure ReadMode
      (
         this : in out AnonymousPipeServerStream.Kind;
         value : NetFrameworkBase.System.IO.Pipes.PipeTransmissionMode.Kind
      );
      
      function GetClientHandleAsString
      (
         this : in out AnonymousPipeServerStream.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function ClientSafePipeHandle
      (
         this : in out AnonymousPipeServerStream.Kind
      )
      return NetFrameworkBase.Microsoft.Win32.SafeHandles.SafePipeHandle.Kind_Ptr;
      
      procedure DisposeLocalCopyOfClientHandle
      (
         this : in out AnonymousPipeServerStream.Kind
      );
      
      function Constructor return NetFrameworkBase.System.IO.Pipes.AnonymousPipeServerStream.Kind_Ptr;
      
      function Constructor
      (
         direction : NetFrameworkBase.System.IO.Pipes.PipeDirection.Kind
      )
      return NetFrameworkBase.System.IO.Pipes.AnonymousPipeServerStream.Kind_Ptr;
      
      function Constructor
      (
         direction : NetFrameworkBase.System.IO.Pipes.PipeDirection.Kind;
         inheritability : NetFrameworkBase.System.IO.HandleInheritability.Kind
      )
      return NetFrameworkBase.System.IO.Pipes.AnonymousPipeServerStream.Kind_Ptr;
      
      function Constructor
      (
         direction : NetFrameworkBase.System.IO.Pipes.PipeDirection.Kind;
         inheritability : NetFrameworkBase.System.IO.HandleInheritability.Kind;
         bufferSize : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.IO.Pipes.AnonymousPipeServerStream.Kind_Ptr;
      
      function Constructor
      (
         direction : NetFrameworkBase.System.IO.Pipes.PipeDirection.Kind;
         inheritability : NetFrameworkBase.System.IO.HandleInheritability.Kind;
         bufferSize : NetFrameworkBase.Int32;
         pipeSecurity : NetFrameworkBase.System.IO.Pipes.PipeSecurity.Kind_Ptr
      )
      return NetFrameworkBase.System.IO.Pipes.AnonymousPipeServerStream.Kind_Ptr;
      
      function Constructor
      (
         direction : NetFrameworkBase.System.IO.Pipes.PipeDirection.Kind;
         serverSafePipeHandle : NetFrameworkBase.Microsoft.Win32.SafeHandles.SafePipeHandle.Kind_Ptr;
         clientSafePipeHandle : NetFrameworkBase.Microsoft.Win32.SafeHandles.SafePipeHandle.Kind_Ptr
      )
      return NetFrameworkBase.System.IO.Pipes.AnonymousPipeServerStream.Kind_Ptr;
      
end;
