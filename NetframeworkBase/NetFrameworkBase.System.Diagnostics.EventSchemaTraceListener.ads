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
with NetFrameworkBase.System.Diagnostics.TextWriterTraceListener;
limited with NetFrameworkBase.System.Diagnostics.TraceEventCache;
limited with NetFrameworkBase.System.Diagnostics.TraceEventType;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.IO.TextWriter;
limited with NetFrameworkBase.System.Guid;
limited with NetFrameworkBase.System.Diagnostics.TraceLogRetentionOption;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Diagnostics.EventSchemaTraceListener is
   
   type Kind is new NetFrameworkBase.System.Diagnostics.TextWriterTraceListener.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function IsThreadSafe
      (
         this : in out EventSchemaTraceListener.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure Close
      (
         this : in out EventSchemaTraceListener.Kind
      );
      
      procedure Flush
      (
         this : in out EventSchemaTraceListener.Kind
      );
      
      procedure Write
      (
         this : in out EventSchemaTraceListener.Kind;
         message : NetFrameworkBase.BSTR
      );
      
      procedure TraceEvent
      (
         this : in out EventSchemaTraceListener.Kind;
         eventCache : NetFrameworkBase.System.Diagnostics.TraceEventCache.Kind_Ptr; 
         source : NetFrameworkBase.BSTR; 
         eventType : NetFrameworkBase.System.Diagnostics.TraceEventType.Kind; 
         id : NetFrameworkBase.Int32; 
         format : NetFrameworkBase.BSTR; 
         args : NetFrameworkBase.System.Object.Kind_Array
      );
      
      procedure TraceEvent
      (
         this : in out EventSchemaTraceListener.Kind;
         eventCache : NetFrameworkBase.System.Diagnostics.TraceEventCache.Kind_Ptr; 
         source : NetFrameworkBase.BSTR; 
         eventType : NetFrameworkBase.System.Diagnostics.TraceEventType.Kind; 
         id : NetFrameworkBase.Int32; 
         message : NetFrameworkBase.BSTR
      );
      
      function Writer
      (
         this : in out EventSchemaTraceListener.Kind
      )
      return NetFrameworkBase.System.IO.TextWriter.Kind_Ptr;
      
      procedure Writer
      (
         this : in out EventSchemaTraceListener.Kind;
         value : NetFrameworkBase.System.IO.TextWriter.Kind_Ptr
      );
      
      function BufferSize
      (
         this : in out EventSchemaTraceListener.Kind
      )
      return NetFrameworkBase.Int32;
      
      function TraceLogRetentionOption
      (
         this : in out EventSchemaTraceListener.Kind
      )
      return NetFrameworkBase.System.Diagnostics.TraceLogRetentionOption.Kind;
      
      function MaximumFileSize
      (
         this : in out EventSchemaTraceListener.Kind
      )
      return NetFrameworkBase.Int64;
      
      function MaximumNumberOfFiles
      (
         this : in out EventSchemaTraceListener.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure WriteLine
      (
         this : in out EventSchemaTraceListener.Kind;
         message : NetFrameworkBase.BSTR
      );
      
      procedure Fail
      (
         this : in out EventSchemaTraceListener.Kind;
         message : NetFrameworkBase.BSTR; 
         detailMessage : NetFrameworkBase.BSTR
      );
      
      procedure TraceData
      (
         this : in out EventSchemaTraceListener.Kind;
         eventCache : NetFrameworkBase.System.Diagnostics.TraceEventCache.Kind_Ptr; 
         source : NetFrameworkBase.BSTR; 
         eventType : NetFrameworkBase.System.Diagnostics.TraceEventType.Kind; 
         id : NetFrameworkBase.Int32; 
         data : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      procedure TraceData
      (
         this : in out EventSchemaTraceListener.Kind;
         eventCache : NetFrameworkBase.System.Diagnostics.TraceEventCache.Kind_Ptr; 
         source : NetFrameworkBase.BSTR; 
         eventType : NetFrameworkBase.System.Diagnostics.TraceEventType.Kind; 
         id : NetFrameworkBase.Int32; 
         data : NetFrameworkBase.System.Object.Kind_Array
      );
      
      procedure TraceTransfer
      (
         this : in out EventSchemaTraceListener.Kind;
         eventCache : NetFrameworkBase.System.Diagnostics.TraceEventCache.Kind_Ptr; 
         source : NetFrameworkBase.BSTR; 
         id : NetFrameworkBase.Int32; 
         message : NetFrameworkBase.BSTR; 
         relatedActivityId : NetFrameworkBase.System.Guid.Kind_Ptr
      );
      
      function Constructor
      (
         fileName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Diagnostics.EventSchemaTraceListener.Kind_Ptr;
      
      function Constructor
      (
         fileName : NetFrameworkBase.BSTR;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Diagnostics.EventSchemaTraceListener.Kind_Ptr;
      
      function Constructor
      (
         fileName : NetFrameworkBase.BSTR;
         name : NetFrameworkBase.BSTR;
         bufferSize : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Diagnostics.EventSchemaTraceListener.Kind_Ptr;
      
      function Constructor
      (
         fileName : NetFrameworkBase.BSTR;
         name : NetFrameworkBase.BSTR;
         bufferSize : NetFrameworkBase.Int32;
         logRetentionOption : NetFrameworkBase.System.Diagnostics.TraceLogRetentionOption.Kind
      )
      return NetFrameworkBase.System.Diagnostics.EventSchemaTraceListener.Kind_Ptr;
      
      function Constructor
      (
         fileName : NetFrameworkBase.BSTR;
         name : NetFrameworkBase.BSTR;
         bufferSize : NetFrameworkBase.Int32;
         logRetentionOption : NetFrameworkBase.System.Diagnostics.TraceLogRetentionOption.Kind;
         maximumFileSize : NetFrameworkBase.Int64
      )
      return NetFrameworkBase.System.Diagnostics.EventSchemaTraceListener.Kind_Ptr;
      
      function Constructor
      (
         fileName : NetFrameworkBase.BSTR;
         name : NetFrameworkBase.BSTR;
         bufferSize : NetFrameworkBase.Int32;
         logRetentionOption : NetFrameworkBase.System.Diagnostics.TraceLogRetentionOption.Kind;
         maximumFileSize : NetFrameworkBase.Int64;
         maximumNumberOfFiles : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Diagnostics.EventSchemaTraceListener.Kind_Ptr;
      
end;
