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
limited with NetFrameworkBase.System.Diagnostics.Tracing.EventLevel;
limited with NetFrameworkBase.System.Diagnostics.Tracing.EventKeywords;
limited with NetFrameworkBase.System.Diagnostics.Tracing.EventChannel;
limited with NetFrameworkBase.System.Type_x;
limited with NetFrameworkBase.System.Diagnostics.Tracing.EventManifestOptions;
limited with NetFrameworkBase.System.Diagnostics.Tracing.EventCommand;
limited with NetFrameworkBase.System.Guid;
limited with NetFrameworkBase.System.Diagnostics.Tracing.EventSourceOptions;
limited with NetFrameworkBase.System.Diagnostics.Tracing.EventSourceSettings;
limited with NetFrameworkBase.System.Exception_x;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Diagnostics.Tracing.EventSource is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Name
      (
         this : in out EventSource.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Guid
      (
         this : in out EventSource.Kind
      )
      return NetFrameworkBase.System.Guid.Kind_Ptr;
      
      function IsEnabled
      (
         this : in out EventSource.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsEnabled
      (
         this : in out EventSource.Kind;
         level : NetFrameworkBase.System.Diagnostics.Tracing.EventLevel.Kind; 
         keywords : NetFrameworkBase.System.Diagnostics.Tracing.EventKeywords.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsEnabled
      (
         this : in out EventSource.Kind;
         level : NetFrameworkBase.System.Diagnostics.Tracing.EventLevel.Kind; 
         keywords : NetFrameworkBase.System.Diagnostics.Tracing.EventKeywords.Kind; 
         channel : NetFrameworkBase.System.Diagnostics.Tracing.EventChannel.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Settings
      (
         this : in out EventSource.Kind
      )
      return NetFrameworkBase.System.Diagnostics.Tracing.EventSourceSettings.Kind;
      
      function GetGuid
      (
         eventSourceType : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.System.Guid.Kind_Ptr;
      
      function GetName
      (
         eventSourceType : NetFrameworkBase.System.Type_x.Kind_Ptr
      )
      return NetFrameworkBase.BSTR;
      
      function GenerateManifest
      (
         eventSourceType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         assemblyPathToIncludeInManifest : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function GenerateManifest
      (
         eventSourceType : NetFrameworkBase.System.Type_x.Kind_Ptr; 
         assemblyPathToIncludeInManifest : NetFrameworkBase.BSTR; 
         flags : NetFrameworkBase.System.Diagnostics.Tracing.EventManifestOptions.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure SetCurrentThreadActivityId
      (
         activityId : NetFrameworkBase.System.Guid.Kind_Ptr
      )
      ;
      
      procedure SetCurrentThreadActivityId
      (
         activityId : NetFrameworkBase.System.Guid.Kind_Ptr; 
         oldActivityThatWillContinue : out NetFrameworkBase.System.Guid.Kind_Ptr
      )
      ;
      
      function CurrentThreadActivityId
      return NetFrameworkBase.System.Guid.Kind_Ptr;
      
      function ConstructionException
      (
         this : in out EventSource.Kind
      )
      return NetFrameworkBase.System.Exception_x.Kind_Ptr;
      
      function GetTrait
      (
         this : in out EventSource.Kind;
         key : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      procedure Dispose
      (
         this : in out EventSource.Kind
      );
      
      procedure Write
      (
         this : in out EventSource.Kind;
         eventName : NetFrameworkBase.BSTR
      );
      
      procedure Write
      (
         this : in out EventSource.Kind;
         eventName : NetFrameworkBase.BSTR; 
         options : NetFrameworkBase.System.Diagnostics.Tracing.EventSourceOptions.Kind_Ptr
      );
      
      function ToString
      (
         this : in out EventSource.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Constructor
      (
         eventSourceName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Diagnostics.Tracing.EventSource.Kind_Ptr;
      
      function Constructor
      (
         eventSourceName : NetFrameworkBase.BSTR;
         config : NetFrameworkBase.System.Diagnostics.Tracing.EventSourceSettings.Kind
      )
      return NetFrameworkBase.System.Diagnostics.Tracing.EventSource.Kind_Ptr;
      
      function Constructor
      (
         eventSourceName : NetFrameworkBase.BSTR;
         config : NetFrameworkBase.System.Diagnostics.Tracing.EventSourceSettings.Kind;
         traits : NetFrameworkBase.BSTR_Array
      )
      return NetFrameworkBase.System.Diagnostics.Tracing.EventSource.Kind_Ptr;
      
end;
