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
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventBookmark;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogType;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogIsolation;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogMode;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogConfiguration;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogLink;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogStatus;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventProperty;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogPropertySelector;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventRecord;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventKeyword;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLevel;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogRecord;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogReader;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogWatcher;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventRecordWrittenEventArgs;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogQuery;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.SessionAuthentication;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.PathType;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogSession;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventMetadata;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventOpcode;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventTask;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogException;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogNotFoundException;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogReadingException;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogProviderDisabledException;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogInvalidDataException;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogInformation;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.ProviderMetadata;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.StandardEventLevel;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.StandardEventTask;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.StandardEventOpcode;
with NetFrameworkBase.System.Diagnostics.Eventing.Reader.StandardEventKeywords;
with NetFrameworkBase.System.Security.SecureString;
with NetFrameworkBase.System.Exception_x;
with NetFrameworkBase.System.Globalization.CultureInfo;
--------------------------------------------------------------------------------
package NetFramework.System.Diagnostics.Eventing.Reader is
   
      --------------------------------------------------------------------------
      subtype EventBookmark is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventBookmark.Kind_Ptr;
      subtype EventBookmark_Array is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventBookmark.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype EventLogType is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogType.Kind;
      
      --------------------------------------------------------------------------
      subtype EventLogIsolation is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogIsolation.Kind;
      
      --------------------------------------------------------------------------
      subtype EventLogMode is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogMode.Kind;
      
      --------------------------------------------------------------------------
      subtype EventLogConfiguration is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogConfiguration.Kind_Ptr;
      subtype EventLogConfiguration_Array is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogConfiguration.Kind_Array;
      
         function Constructor
         (
            logName : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogConfiguration.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogConfiguration.Constructor; 
         
         function Constructor
         (
            logName : NetFrameworkBase.BSTR;
            session : NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogSession.Kind_Ptr
         )
         return NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogConfiguration.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogConfiguration.Constructor; 
         
      --------------------------------------------------------------------------
      subtype EventLogLink is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogLink.Kind_Ptr;
      subtype EventLogLink_Array is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogLink.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype EventLogStatus is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogStatus.Kind_Ptr;
      subtype EventLogStatus_Array is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogStatus.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype EventProperty is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventProperty.Kind_Ptr;
      subtype EventProperty_Array is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventProperty.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype EventLogPropertySelector is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogPropertySelector.Kind_Ptr;
      subtype EventLogPropertySelector_Array is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogPropertySelector.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype EventRecord is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventRecord.Kind_Ptr;
      subtype EventRecord_Array is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventRecord.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype EventKeyword is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventKeyword.Kind_Ptr;
      subtype EventKeyword_Array is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventKeyword.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype EventLevel is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLevel.Kind_Ptr;
      subtype EventLevel_Array is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLevel.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype EventLogRecord is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogRecord.Kind_Ptr;
      subtype EventLogRecord_Array is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogRecord.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype EventLogReader is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogReader.Kind_Ptr;
      subtype EventLogReader_Array is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogReader.Kind_Array;
      
         function Constructor
         (
            path : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogReader.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogReader.Constructor; 
         
         function Constructor
         (
            path : NetFrameworkBase.BSTR;
            pathType : NetFrameworkBase.System.Diagnostics.Eventing.Reader.PathType.Kind
         )
         return NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogReader.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogReader.Constructor; 
         
         function Constructor
         (
            eventQuery : NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogQuery.Kind_Ptr
         )
         return NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogReader.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogReader.Constructor; 
         
         function Constructor
         (
            eventQuery : NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogQuery.Kind_Ptr;
            bookmark : NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventBookmark.Kind_Ptr
         )
         return NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogReader.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogReader.Constructor; 
         
      --------------------------------------------------------------------------
      subtype EventLogWatcher is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogWatcher.Kind_Ptr;
      subtype EventLogWatcher_Array is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogWatcher.Kind_Array;
      
         function Constructor
         (
            path : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogWatcher.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogWatcher.Constructor; 
         
         function Constructor
         (
            eventQuery : NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogQuery.Kind_Ptr
         )
         return NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogWatcher.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogWatcher.Constructor; 
         
         function Constructor
         (
            eventQuery : NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogQuery.Kind_Ptr;
            bookmark : NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventBookmark.Kind_Ptr
         )
         return NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogWatcher.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogWatcher.Constructor; 
         
         function Constructor
         (
            eventQuery : NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogQuery.Kind_Ptr;
            bookmark : NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventBookmark.Kind_Ptr;
            readExistingEvents : NetFrameworkBase.Boolean
         )
         return NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogWatcher.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogWatcher.Constructor; 
         
      --------------------------------------------------------------------------
      subtype EventRecordWrittenEventArgs is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventRecordWrittenEventArgs.Kind_Ptr;
      subtype EventRecordWrittenEventArgs_Array is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventRecordWrittenEventArgs.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype EventLogQuery is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogQuery.Kind_Ptr;
      subtype EventLogQuery_Array is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogQuery.Kind_Array;
      
         function Constructor
         (
            path : NetFrameworkBase.BSTR;
            pathType : NetFrameworkBase.System.Diagnostics.Eventing.Reader.PathType.Kind
         )
         return NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogQuery.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogQuery.Constructor; 
         
         function Constructor
         (
            path : NetFrameworkBase.BSTR;
            pathType : NetFrameworkBase.System.Diagnostics.Eventing.Reader.PathType.Kind;
            query : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogQuery.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogQuery.Constructor; 
         
      --------------------------------------------------------------------------
      subtype SessionAuthentication is NetFrameworkBase.System.Diagnostics.Eventing.Reader.SessionAuthentication.Kind;
      
      --------------------------------------------------------------------------
      subtype PathType is NetFrameworkBase.System.Diagnostics.Eventing.Reader.PathType.Kind;
      
      --------------------------------------------------------------------------
      subtype EventLogSession is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogSession.Kind_Ptr;
      subtype EventLogSession_Array is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogSession.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogSession.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogSession.Constructor;
         
         function Constructor
         (
            server : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogSession.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogSession.Constructor; 
         
         function Constructor
         (
            server : NetFrameworkBase.BSTR;
            domain : NetFrameworkBase.BSTR;
            user : NetFrameworkBase.BSTR;
            password : NetFrameworkBase.System.Security.SecureString.Kind_Ptr;
            logOnType : NetFrameworkBase.System.Diagnostics.Eventing.Reader.SessionAuthentication.Kind
         )
         return NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogSession.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogSession.Constructor; 
         
      --------------------------------------------------------------------------
      subtype EventMetadata is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventMetadata.Kind_Ptr;
      subtype EventMetadata_Array is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventMetadata.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype EventOpcode is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventOpcode.Kind_Ptr;
      subtype EventOpcode_Array is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventOpcode.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype EventTask is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventTask.Kind_Ptr;
      subtype EventTask_Array is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventTask.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype EventLogException is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogException.Kind_Ptr;
      subtype EventLogException_Array is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogException.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogException.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogException.Constructor;
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogException.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogException.Constructor; 
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR;
            innerException : NetFrameworkBase.System.Exception_x.Kind_Ptr
         )
         return NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogException.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogException.Constructor; 
         
      --------------------------------------------------------------------------
      subtype EventLogNotFoundException is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogNotFoundException.Kind_Ptr;
      subtype EventLogNotFoundException_Array is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogNotFoundException.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogNotFoundException.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogNotFoundException.Constructor;
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogNotFoundException.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogNotFoundException.Constructor; 
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR;
            innerException : NetFrameworkBase.System.Exception_x.Kind_Ptr
         )
         return NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogNotFoundException.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogNotFoundException.Constructor; 
         
      --------------------------------------------------------------------------
      subtype EventLogReadingException is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogReadingException.Kind_Ptr;
      subtype EventLogReadingException_Array is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogReadingException.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogReadingException.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogReadingException.Constructor;
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogReadingException.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogReadingException.Constructor; 
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR;
            innerException : NetFrameworkBase.System.Exception_x.Kind_Ptr
         )
         return NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogReadingException.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogReadingException.Constructor; 
         
      --------------------------------------------------------------------------
      subtype EventLogProviderDisabledException is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogProviderDisabledException.Kind_Ptr;
      subtype EventLogProviderDisabledException_Array is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogProviderDisabledException.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogProviderDisabledException.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogProviderDisabledException.Constructor;
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogProviderDisabledException.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogProviderDisabledException.Constructor; 
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR;
            innerException : NetFrameworkBase.System.Exception_x.Kind_Ptr
         )
         return NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogProviderDisabledException.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogProviderDisabledException.Constructor; 
         
      --------------------------------------------------------------------------
      subtype EventLogInvalidDataException is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogInvalidDataException.Kind_Ptr;
      subtype EventLogInvalidDataException_Array is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogInvalidDataException.Kind_Array;
      
         function Constructor return NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogInvalidDataException.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogInvalidDataException.Constructor;
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogInvalidDataException.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogInvalidDataException.Constructor; 
         
         function Constructor
         (
            message : NetFrameworkBase.BSTR;
            innerException : NetFrameworkBase.System.Exception_x.Kind_Ptr
         )
         return NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogInvalidDataException.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogInvalidDataException.Constructor; 
         
      --------------------------------------------------------------------------
      subtype EventLogInformation is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogInformation.Kind_Ptr;
      subtype EventLogInformation_Array is NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogInformation.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype ProviderMetadata is NetFrameworkBase.System.Diagnostics.Eventing.Reader.ProviderMetadata.Kind_Ptr;
      subtype ProviderMetadata_Array is NetFrameworkBase.System.Diagnostics.Eventing.Reader.ProviderMetadata.Kind_Array;
      
         function Constructor
         (
            providerName : NetFrameworkBase.BSTR
         )
         return NetFrameworkBase.System.Diagnostics.Eventing.Reader.ProviderMetadata.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.ProviderMetadata.Constructor; 
         
         function Constructor
         (
            providerName : NetFrameworkBase.BSTR;
            session : NetFrameworkBase.System.Diagnostics.Eventing.Reader.EventLogSession.Kind_Ptr;
            targetCultureInfo : NetFrameworkBase.System.Globalization.CultureInfo.Kind_Ptr
         )
         return NetFrameworkBase.System.Diagnostics.Eventing.Reader.ProviderMetadata.Kind_Ptr renames NetFrameworkBase.System.Diagnostics.Eventing.Reader.ProviderMetadata.Constructor; 
         
      --------------------------------------------------------------------------
      subtype StandardEventLevel is NetFrameworkBase.System.Diagnostics.Eventing.Reader.StandardEventLevel.Kind;
      
      --------------------------------------------------------------------------
      subtype StandardEventTask is NetFrameworkBase.System.Diagnostics.Eventing.Reader.StandardEventTask.Kind;
      
      --------------------------------------------------------------------------
      subtype StandardEventOpcode is NetFrameworkBase.System.Diagnostics.Eventing.Reader.StandardEventOpcode.Kind;
      
      --------------------------------------------------------------------------
      subtype StandardEventKeywords is NetFrameworkBase.System.Diagnostics.Eventing.Reader.StandardEventKeywords.Kind;
      
   
end;
