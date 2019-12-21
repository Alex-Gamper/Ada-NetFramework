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
with NetFrameworkBase.System.ComponentModel.Component;
limited with NetFrameworkBase.System.Diagnostics.EventLogEntryType;
limited with NetFrameworkBase.System.ComponentModel.ISynchronizeInvoke;
limited with NetFrameworkBase.System.Diagnostics.EntryWrittenEventHandler;
limited with NetFrameworkBase.System.Diagnostics.EventSourceCreationData;
limited with NetFrameworkBase.System.Diagnostics.OverflowAction;
limited with NetFrameworkBase.System.Diagnostics.EventInstance;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Diagnostics.EventLogEntryCollection;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Diagnostics.EventLog is
   
   type Kind is new NetFrameworkBase.System.ComponentModel.Component.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      procedure BeginInit
      (
         this : in out EventLog.Kind
      );
      
      procedure CreateEventSource
      (
         source : NetFrameworkBase.BSTR; 
         logName : NetFrameworkBase.BSTR; 
         machineName : NetFrameworkBase.BSTR
      )
      ;
      
      procedure EndInit
      (
         this : in out EventLog.Kind
      );
      
      function SourceExists
      (
         source : NetFrameworkBase.BSTR; 
         machineName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function LogNameFromSourceName
      (
         source : NetFrameworkBase.BSTR; 
         machineName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      procedure WriteEntry
      (
         source : NetFrameworkBase.BSTR; 
         message : NetFrameworkBase.BSTR
      )
      ;
      
      procedure WriteEntry
      (
         source : NetFrameworkBase.BSTR; 
         message : NetFrameworkBase.BSTR; 
         type_x : NetFrameworkBase.System.Diagnostics.EventLogEntryType.Kind
      )
      ;
      
      procedure WriteEntry
      (
         source : NetFrameworkBase.BSTR; 
         message : NetFrameworkBase.BSTR; 
         type_x : NetFrameworkBase.System.Diagnostics.EventLogEntryType.Kind; 
         eventID : NetFrameworkBase.Int32
      )
      ;
      
      procedure WriteEntry
      (
         source : NetFrameworkBase.BSTR; 
         message : NetFrameworkBase.BSTR; 
         type_x : NetFrameworkBase.System.Diagnostics.EventLogEntryType.Kind; 
         eventID : NetFrameworkBase.Int32; 
         category : NetFrameworkBase.Int16
      )
      ;
      
      function Entries
      (
         this : in out EventLog.Kind
      )
      return NetFrameworkBase.System.Diagnostics.EventLogEntryCollection.Kind_Ptr;
      
      function LogDisplayName
      (
         this : in out EventLog.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Log
      (
         this : in out EventLog.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Log
      (
         this : in out EventLog.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function MachineName
      (
         this : in out EventLog.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure MachineName
      (
         this : in out EventLog.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function MaximumKilobytes
      (
         this : in out EventLog.Kind
      )
      return NetFrameworkBase.Int64;
      
      procedure MaximumKilobytes
      (
         this : in out EventLog.Kind;
         value : NetFrameworkBase.Int64
      );
      
      function OverflowAction
      (
         this : in out EventLog.Kind
      )
      return NetFrameworkBase.System.Diagnostics.OverflowAction.Kind;
      
      function MinimumRetentionDays
      (
         this : in out EventLog.Kind
      )
      return NetFrameworkBase.Int32;
      
      function EnableRaisingEvents
      (
         this : in out EventLog.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure EnableRaisingEvents
      (
         this : in out EventLog.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function SynchronizingObject
      (
         this : in out EventLog.Kind
      )
      return NetFrameworkBase.System.ComponentModel.ISynchronizeInvoke.Kind_Ptr;
      
      procedure SynchronizingObject
      (
         this : in out EventLog.Kind;
         value : NetFrameworkBase.System.ComponentModel.ISynchronizeInvoke.Kind_Ptr
      );
      
      function Source
      (
         this : in out EventLog.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Source
      (
         this : in out EventLog.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      procedure add_EntryWritten
      (
         this : in out EventLog.Kind;
         value : NetFrameworkBase.System.Diagnostics.EntryWrittenEventHandler.Kind_Ptr
      );
      
      procedure remove_EntryWritten
      (
         this : in out EventLog.Kind;
         value : NetFrameworkBase.System.Diagnostics.EntryWrittenEventHandler.Kind_Ptr
      );
      
      procedure Clear
      (
         this : in out EventLog.Kind
      );
      
      procedure Close
      (
         this : in out EventLog.Kind
      );
      
      procedure CreateEventSource
      (
         source : NetFrameworkBase.BSTR; 
         logName : NetFrameworkBase.BSTR
      )
      ;
      
      procedure CreateEventSource
      (
         sourceData : NetFrameworkBase.System.Diagnostics.EventSourceCreationData.Kind_Ptr
      )
      ;
      
      procedure Delete
      (
         logName : NetFrameworkBase.BSTR
      )
      ;
      
      procedure Delete
      (
         logName : NetFrameworkBase.BSTR; 
         machineName : NetFrameworkBase.BSTR
      )
      ;
      
      procedure DeleteEventSource
      (
         source : NetFrameworkBase.BSTR
      )
      ;
      
      procedure DeleteEventSource
      (
         source : NetFrameworkBase.BSTR; 
         machineName : NetFrameworkBase.BSTR
      )
      ;
      
      function Exists
      (
         logName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function Exists
      (
         logName : NetFrameworkBase.BSTR; 
         machineName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function GetEventLogs
      return NetFrameworkBase.System.Diagnostics.EventLog.Kind_Array;
      
      function GetEventLogs
      (
         machineName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Diagnostics.EventLog.Kind_Array;
      
      function SourceExists
      (
         source : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      procedure ModifyOverflowPolicy
      (
         this : in out EventLog.Kind;
         action : NetFrameworkBase.System.Diagnostics.OverflowAction.Kind; 
         retentionDays : NetFrameworkBase.Int32
      );
      
      procedure RegisterDisplayName
      (
         this : in out EventLog.Kind;
         resourceFile : NetFrameworkBase.BSTR; 
         resourceId : NetFrameworkBase.Int64
      );
      
      procedure WriteEntry
      (
         this : in out EventLog.Kind;
         message : NetFrameworkBase.BSTR
      );
      
      procedure WriteEntry
      (
         this : in out EventLog.Kind;
         message : NetFrameworkBase.BSTR; 
         type_x : NetFrameworkBase.System.Diagnostics.EventLogEntryType.Kind
      );
      
      procedure WriteEntry
      (
         this : in out EventLog.Kind;
         message : NetFrameworkBase.BSTR; 
         type_x : NetFrameworkBase.System.Diagnostics.EventLogEntryType.Kind; 
         eventID : NetFrameworkBase.Int32
      );
      
      procedure WriteEntry
      (
         this : in out EventLog.Kind;
         message : NetFrameworkBase.BSTR; 
         type_x : NetFrameworkBase.System.Diagnostics.EventLogEntryType.Kind; 
         eventID : NetFrameworkBase.Int32; 
         category : NetFrameworkBase.Int16
      );
      
      procedure WriteEntry
      (
         source : NetFrameworkBase.BSTR; 
         message : NetFrameworkBase.BSTR; 
         type_x : NetFrameworkBase.System.Diagnostics.EventLogEntryType.Kind; 
         eventID : NetFrameworkBase.Int32; 
         category : NetFrameworkBase.Int16; 
         rawData : NetFrameworkBase.Byte_Array
      )
      ;
      
      procedure WriteEntry
      (
         this : in out EventLog.Kind;
         message : NetFrameworkBase.BSTR; 
         type_x : NetFrameworkBase.System.Diagnostics.EventLogEntryType.Kind; 
         eventID : NetFrameworkBase.Int32; 
         category : NetFrameworkBase.Int16; 
         rawData : NetFrameworkBase.Byte_Array
      );
      
      procedure WriteEvent
      (
         this : in out EventLog.Kind;
         instance_x : NetFrameworkBase.System.Diagnostics.EventInstance.Kind_Ptr; 
         values : NetFrameworkBase.System.Object.Kind_Array
      );
      
      procedure WriteEvent
      (
         this : in out EventLog.Kind;
         instance_x : NetFrameworkBase.System.Diagnostics.EventInstance.Kind_Ptr; 
         data : NetFrameworkBase.Byte_Array; 
         values : NetFrameworkBase.System.Object.Kind_Array
      );
      
      procedure WriteEvent
      (
         source : NetFrameworkBase.BSTR; 
         instance_x : NetFrameworkBase.System.Diagnostics.EventInstance.Kind_Ptr; 
         values : NetFrameworkBase.System.Object.Kind_Array
      )
      ;
      
      procedure WriteEvent
      (
         source : NetFrameworkBase.BSTR; 
         instance_x : NetFrameworkBase.System.Diagnostics.EventInstance.Kind_Ptr; 
         data : NetFrameworkBase.Byte_Array; 
         values : NetFrameworkBase.System.Object.Kind_Array
      )
      ;
      
      function Constructor return NetFrameworkBase.System.Diagnostics.EventLog.Kind_Ptr;
      
      function Constructor
      (
         logName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Diagnostics.EventLog.Kind_Ptr;
      
      function Constructor
      (
         logName : NetFrameworkBase.BSTR;
         machineName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Diagnostics.EventLog.Kind_Ptr;
      
      function Constructor
      (
         logName : NetFrameworkBase.BSTR;
         machineName : NetFrameworkBase.BSTR;
         source : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Diagnostics.EventLog.Kind_Ptr;
      
end;
