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
with NetFrameworkBase.System.Threading.TimerCallback;
with NetFrameworkBase.System.Threading.Timer;
with NetFrameworkBase.System.Threading.WaitHandle;
with NetFrameworkBase.System.Threading.CancellationTokenRegistration;
with NetFrameworkBase.System.Threading.CancellationToken;
with NetFrameworkBase.System.Object;
with NetFrameworkBase.System.TimeSpan;
--------------------------------------------------------------------------------
package NetFramework.System.Threading is
   
      --------------------------------------------------------------------------
      subtype TimerCallback is NetFrameworkBase.System.Threading.TimerCallback.Kind_Ptr;
      subtype TimerCallback_Array is NetFrameworkBase.System.Threading.TimerCallback.Kind_Array;
      
         function Constructor (Callback : NetFrameworkBase.System.Threading.TimerCallback.Kind_Callback) return NetFrameworkBase.System.Threading.TimerCallback.Kind_Ptr renames NetFrameworkBase.System.Threading.TimerCallback.Constructor;
      
      --------------------------------------------------------------------------
      subtype Timer is NetFrameworkBase.System.Threading.Timer.Kind_Ptr;
      subtype Timer_Array is NetFrameworkBase.System.Threading.Timer.Kind_Array;
      
         function Constructor
         (
            callback : NetFrameworkBase.System.Threading.TimerCallback.Kind_Ptr;
            state : NetFrameworkBase.System.Object.Kind_Ptr;
            dueTime : NetFrameworkBase.Int32;
            period : NetFrameworkBase.Int32
         )
         return NetFrameworkBase.System.Threading.Timer.Kind_Ptr renames NetFrameworkBase.System.Threading.Timer.Constructor; 
         
         function Constructor
         (
            callback : NetFrameworkBase.System.Threading.TimerCallback.Kind_Ptr;
            state : NetFrameworkBase.System.Object.Kind_Ptr;
            dueTime : NetFrameworkBase.System.TimeSpan.Kind_Ptr;
            period : NetFrameworkBase.System.TimeSpan.Kind_Ptr
         )
         return NetFrameworkBase.System.Threading.Timer.Kind_Ptr renames NetFrameworkBase.System.Threading.Timer.Constructor; 
         
         function Constructor
         (
            callback : NetFrameworkBase.System.Threading.TimerCallback.Kind_Ptr;
            state : NetFrameworkBase.System.Object.Kind_Ptr;
            dueTime : NetFrameworkBase.UInt32;
            period : NetFrameworkBase.UInt32
         )
         return NetFrameworkBase.System.Threading.Timer.Kind_Ptr renames NetFrameworkBase.System.Threading.Timer.Constructor; 
         
         function Constructor
         (
            callback : NetFrameworkBase.System.Threading.TimerCallback.Kind_Ptr;
            state : NetFrameworkBase.System.Object.Kind_Ptr;
            dueTime : NetFrameworkBase.Int64;
            period : NetFrameworkBase.Int64
         )
         return NetFrameworkBase.System.Threading.Timer.Kind_Ptr renames NetFrameworkBase.System.Threading.Timer.Constructor; 
         
         function Constructor
         (
            callback : NetFrameworkBase.System.Threading.TimerCallback.Kind_Ptr
         )
         return NetFrameworkBase.System.Threading.Timer.Kind_Ptr renames NetFrameworkBase.System.Threading.Timer.Constructor; 
         
      --------------------------------------------------------------------------
      subtype WaitHandle is NetFrameworkBase.System.Threading.WaitHandle.Kind_Ptr;
      subtype WaitHandle_Array is NetFrameworkBase.System.Threading.WaitHandle.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype CancellationTokenRegistration is NetFrameworkBase.System.Threading.CancellationTokenRegistration.Kind_Ptr;
      subtype CancellationTokenRegistration_Array is NetFrameworkBase.System.Threading.CancellationTokenRegistration.Kind_Array;
      
      --------------------------------------------------------------------------
      subtype CancellationToken is NetFrameworkBase.System.Threading.CancellationToken.Kind_Ptr;
      subtype CancellationToken_Array is NetFrameworkBase.System.Threading.CancellationToken.Kind_Array;
      
         function Constructor
         (
            canceled : NetFrameworkBase.Boolean
         )
         return NetFrameworkBase.System.Threading.CancellationToken.Kind_Ptr renames NetFrameworkBase.System.Threading.CancellationToken.Constructor; 
         
   
end;
