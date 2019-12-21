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
with NetFrameworkBase.System.IO.Stream;
limited with NetFrameworkBase.System.Threading.CancellationToken;
limited with NetFrameworkBase.System.IO.SeekOrigin;
limited with NetFrameworkBase.System.Runtime.InteropServices.SafeBuffer;
limited with NetFrameworkBase.System.IO.FileAccess;
limited with NetFrameworkBase.System.Threading.Tasks.Task_x;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.IO.UnmanagedMemoryStream is
   
   type Kind is new NetFrameworkBase.System.IO.Stream.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function CanRead
      (
         this : in out UnmanagedMemoryStream.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function CanSeek
      (
         this : in out UnmanagedMemoryStream.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function CanWrite
      (
         this : in out UnmanagedMemoryStream.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure Flush
      (
         this : in out UnmanagedMemoryStream.Kind
      );
      
      function FlushAsync
      (
         this : in out UnmanagedMemoryStream.Kind;
         cancellationToken : NetFrameworkBase.System.Threading.CancellationToken.Kind_Ptr
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function Length
      (
         this : in out UnmanagedMemoryStream.Kind
      )
      return NetFrameworkBase.Int64;
      
      function Position
      (
         this : in out UnmanagedMemoryStream.Kind
      )
      return NetFrameworkBase.Int64;
      
      procedure Position
      (
         this : in out UnmanagedMemoryStream.Kind;
         value : NetFrameworkBase.Int64
      );
      
      function Seek
      (
         this : in out UnmanagedMemoryStream.Kind;
         offset : NetFrameworkBase.Int64; 
         loc : NetFrameworkBase.System.IO.SeekOrigin.Kind
      )
      return NetFrameworkBase.Int64;
      
      procedure SetLength
      (
         this : in out UnmanagedMemoryStream.Kind;
         value : NetFrameworkBase.Int64
      );
      
      function WriteAsync
      (
         this : in out UnmanagedMemoryStream.Kind;
         buffer : NetFrameworkBase.Byte_Array; 
         offset : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32; 
         cancellationToken : NetFrameworkBase.System.Threading.CancellationToken.Kind_Ptr
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function Capacity
      (
         this : in out UnmanagedMemoryStream.Kind
      )
      return NetFrameworkBase.Int64;
      
      function PositionPointer
      (
         this : in out UnmanagedMemoryStream.Kind
      )
      return NetFrameworkBase.Byte_Ptr;
      
      procedure PositionPointer
      (
         this : in out UnmanagedMemoryStream.Kind;
         value : NetFrameworkBase.Byte_Ptr
      );
      
      function Read
      (
         this : in out UnmanagedMemoryStream.Kind;
         buffer : in out NetFrameworkBase.Byte_Array; 
         offset : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function ReadByte
      (
         this : in out UnmanagedMemoryStream.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure Write
      (
         this : in out UnmanagedMemoryStream.Kind;
         buffer : NetFrameworkBase.Byte_Array; 
         offset : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32
      );
      
      procedure WriteByte
      (
         this : in out UnmanagedMemoryStream.Kind;
         value : NetFrameworkBase.Byte
      );
      
      function Constructor
      (
         buffer : NetFrameworkBase.System.Runtime.InteropServices.SafeBuffer.Kind_Ptr;
         offset : NetFrameworkBase.Int64;
         length : NetFrameworkBase.Int64
      )
      return NetFrameworkBase.System.IO.UnmanagedMemoryStream.Kind_Ptr;
      
      function Constructor
      (
         buffer : NetFrameworkBase.System.Runtime.InteropServices.SafeBuffer.Kind_Ptr;
         offset : NetFrameworkBase.Int64;
         length : NetFrameworkBase.Int64;
         access_x : NetFrameworkBase.System.IO.FileAccess.Kind
      )
      return NetFrameworkBase.System.IO.UnmanagedMemoryStream.Kind_Ptr;
      
      function Constructor
      (
         pointer : NetFrameworkBase.Byte_Ptr;
         length : NetFrameworkBase.Int64
      )
      return NetFrameworkBase.System.IO.UnmanagedMemoryStream.Kind_Ptr;
      
      function Constructor
      (
         pointer : NetFrameworkBase.Byte_Ptr;
         length : NetFrameworkBase.Int64;
         capacity : NetFrameworkBase.Int64;
         access_x : NetFrameworkBase.System.IO.FileAccess.Kind
      )
      return NetFrameworkBase.System.IO.UnmanagedMemoryStream.Kind_Ptr;
      
end;