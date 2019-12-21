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
with NetFrameworkBase.System.Diagnostics.TraceListener;
limited with NetFrameworkBase.System.Diagnostics.EventLog;
limited with NetFrameworkBase.System.Diagnostics.TraceEventCache;
limited with NetFrameworkBase.System.Diagnostics.TraceEventType;
with NetFrameworkBase.System.Object;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Diagnostics.EventLogTraceListener is
   
   type Kind is new NetFrameworkBase.System.Diagnostics.TraceListener.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Name
      (
         this : in out EventLogTraceListener.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Name
      (
         this : in out EventLogTraceListener.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure Close
      (
         this : in out EventLogTraceListener.Kind
      );
      
      procedure Write
      (
         this : in out EventLogTraceListener.Kind;
         message : NetFrameworkBase.BSTR
      );
      
      procedure WriteLine
      (
         this : in out EventLogTraceListener.Kind;
         message : NetFrameworkBase.BSTR
      );
      
      function EventLog
      (
         this : in out EventLogTraceListener.Kind
      )
      return NetFrameworkBase.System.Diagnostics.EventLog.Kind_Ptr;
      
      procedure EventLog
      (
         this : in out EventLogTraceListener.Kind;
         value : NetFrameworkBase.System.Diagnostics.EventLog.Kind_Ptr
      );
      
      procedure TraceEvent
      (
         this : in out EventLogTraceListener.Kind;
         eventCache : NetFrameworkBase.System.Diagnostics.TraceEventCache.Kind_Ptr; 
         source : NetFrameworkBase.BSTR; 
         severity : NetFrameworkBase.System.Diagnostics.TraceEventType.Kind; 
         id : NetFrameworkBase.Int32; 
         format : NetFrameworkBase.BSTR; 
         args : NetFrameworkBase.System.Object.Kind_Array
      );
      
      procedure TraceEvent
      (
         this : in out EventLogTraceListener.Kind;
         eventCache : NetFrameworkBase.System.Diagnostics.TraceEventCache.Kind_Ptr; 
         source : NetFrameworkBase.BSTR; 
         severity : NetFrameworkBase.System.Diagnostics.TraceEventType.Kind; 
         id : NetFrameworkBase.Int32; 
         message : NetFrameworkBase.BSTR
      );
      
      procedure TraceData
      (
         this : in out EventLogTraceListener.Kind;
         eventCache : NetFrameworkBase.System.Diagnostics.TraceEventCache.Kind_Ptr; 
         source : NetFrameworkBase.BSTR; 
         severity : NetFrameworkBase.System.Diagnostics.TraceEventType.Kind; 
         id : NetFrameworkBase.Int32; 
         data : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      procedure TraceData
      (
         this : in out EventLogTraceListener.Kind;
         eventCache : NetFrameworkBase.System.Diagnostics.TraceEventCache.Kind_Ptr; 
         source : NetFrameworkBase.BSTR; 
         severity : NetFrameworkBase.System.Diagnostics.TraceEventType.Kind; 
         id : NetFrameworkBase.Int32; 
         data : NetFrameworkBase.System.Object.Kind_Array
      );
      
      function Constructor return NetFrameworkBase.System.Diagnostics.EventLogTraceListener.Kind_Ptr;
      
      function Constructor
      (
         eventLog : NetFrameworkBase.System.Diagnostics.EventLog.Kind_Ptr
      )
      return NetFrameworkBase.System.Diagnostics.EventLogTraceListener.Kind_Ptr;
      
      function Constructor
      (
         source : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Diagnostics.EventLogTraceListener.Kind_Ptr;
      
end;