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
limited with NetFrameworkBase.System.Diagnostics.TraceListenerCollection;
limited with NetFrameworkBase.System.Diagnostics.CorrelationManager;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Diagnostics.Trace is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Listeners
      return NetFrameworkBase.System.Diagnostics.TraceListenerCollection.Kind_Ptr;
      
      function AutoFlush
      return NetFrameworkBase.Boolean;
      
      procedure AutoFlush
      (
         value : NetFrameworkBase.Boolean
      )
      ;
      
      function UseGlobalLock
      return NetFrameworkBase.Boolean;
      
      procedure UseGlobalLock
      (
         value : NetFrameworkBase.Boolean
      )
      ;
      
      function CorrelationManager
      return NetFrameworkBase.System.Diagnostics.CorrelationManager.Kind_Ptr;
      
      function IndentLevel
      return NetFrameworkBase.Int32;
      
      procedure IndentLevel
      (
         value : NetFrameworkBase.Int32
      )
      ;
      
      function IndentSize
      return NetFrameworkBase.Int32;
      
      procedure IndentSize
      (
         value : NetFrameworkBase.Int32
      )
      ;
      
      procedure Flush
      ;
      
      procedure Close
      ;
      
      procedure Assert
      (
         condition : NetFrameworkBase.Boolean
      )
      ;
      
      procedure Assert
      (
         condition : NetFrameworkBase.Boolean; 
         message : NetFrameworkBase.BSTR
      )
      ;
      
      procedure Assert
      (
         condition : NetFrameworkBase.Boolean; 
         message : NetFrameworkBase.BSTR; 
         detailMessage : NetFrameworkBase.BSTR
      )
      ;
      
      procedure Fail
      (
         message : NetFrameworkBase.BSTR
      )
      ;
      
      procedure Fail
      (
         message : NetFrameworkBase.BSTR; 
         detailMessage : NetFrameworkBase.BSTR
      )
      ;
      
      procedure Refresh
      ;
      
      procedure TraceInformation
      (
         message : NetFrameworkBase.BSTR
      )
      ;
      
      procedure TraceInformation
      (
         format : NetFrameworkBase.BSTR; 
         args : NetFrameworkBase.System.Object.Kind_Array
      )
      ;
      
      procedure TraceWarning
      (
         message : NetFrameworkBase.BSTR
      )
      ;
      
      procedure TraceWarning
      (
         format : NetFrameworkBase.BSTR; 
         args : NetFrameworkBase.System.Object.Kind_Array
      )
      ;
      
      procedure TraceError
      (
         message : NetFrameworkBase.BSTR
      )
      ;
      
      procedure TraceError
      (
         format : NetFrameworkBase.BSTR; 
         args : NetFrameworkBase.System.Object.Kind_Array
      )
      ;
      
      procedure Write
      (
         message : NetFrameworkBase.BSTR
      )
      ;
      
      procedure Write
      (
         value : NetFrameworkBase.System.Object.Kind_Ptr
      )
      ;
      
      procedure Write
      (
         message : NetFrameworkBase.BSTR; 
         category : NetFrameworkBase.BSTR
      )
      ;
      
      procedure Write
      (
         value : NetFrameworkBase.System.Object.Kind_Ptr; 
         category : NetFrameworkBase.BSTR
      )
      ;
      
      procedure WriteLine
      (
         message : NetFrameworkBase.BSTR
      )
      ;
      
      procedure WriteLine
      (
         value : NetFrameworkBase.System.Object.Kind_Ptr
      )
      ;
      
      procedure WriteLine
      (
         message : NetFrameworkBase.BSTR; 
         category : NetFrameworkBase.BSTR
      )
      ;
      
      procedure WriteLine
      (
         value : NetFrameworkBase.System.Object.Kind_Ptr; 
         category : NetFrameworkBase.BSTR
      )
      ;
      
      procedure WriteIf
      (
         condition : NetFrameworkBase.Boolean; 
         message : NetFrameworkBase.BSTR
      )
      ;
      
      procedure WriteIf
      (
         condition : NetFrameworkBase.Boolean; 
         value : NetFrameworkBase.System.Object.Kind_Ptr
      )
      ;
      
      procedure WriteIf
      (
         condition : NetFrameworkBase.Boolean; 
         message : NetFrameworkBase.BSTR; 
         category : NetFrameworkBase.BSTR
      )
      ;
      
      procedure WriteIf
      (
         condition : NetFrameworkBase.Boolean; 
         value : NetFrameworkBase.System.Object.Kind_Ptr; 
         category : NetFrameworkBase.BSTR
      )
      ;
      
      procedure WriteLineIf
      (
         condition : NetFrameworkBase.Boolean; 
         message : NetFrameworkBase.BSTR
      )
      ;
      
      procedure WriteLineIf
      (
         condition : NetFrameworkBase.Boolean; 
         value : NetFrameworkBase.System.Object.Kind_Ptr
      )
      ;
      
      procedure WriteLineIf
      (
         condition : NetFrameworkBase.Boolean; 
         message : NetFrameworkBase.BSTR; 
         category : NetFrameworkBase.BSTR
      )
      ;
      
      procedure WriteLineIf
      (
         condition : NetFrameworkBase.Boolean; 
         value : NetFrameworkBase.System.Object.Kind_Ptr; 
         category : NetFrameworkBase.BSTR
      )
      ;
      
      procedure Indent
      ;
      
      procedure Unindent
      ;
      
end;
