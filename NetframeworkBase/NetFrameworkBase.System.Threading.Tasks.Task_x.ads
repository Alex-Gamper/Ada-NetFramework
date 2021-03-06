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
limited with NetFrameworkBase.System.Threading.Tasks.TaskScheduler;
limited with NetFrameworkBase.System.TimeSpan;
limited with NetFrameworkBase.System.Threading.CancellationToken;
limited with NetFrameworkBase.System.Threading.Tasks.TaskContinuationOptions;
limited with NetFrameworkBase.System.Exception_x;
limited with NetFrameworkBase.System.Action;
limited with NetFrameworkBase.System.Threading.Tasks.TaskCreationOptions;
limited with NetFrameworkBase.System.AggregateException;
limited with NetFrameworkBase.System.Threading.Tasks.TaskStatus;
limited with NetFrameworkBase.System.Threading.Tasks.TaskFactory;
limited with NetFrameworkBase.System.Runtime.CompilerServices.TaskAwaiter;
limited with NetFrameworkBase.System.Runtime.CompilerServices.ConfiguredTaskAwaitable;
limited with NetFrameworkBase.System.Runtime.CompilerServices.YieldAwaitable;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Threading.Tasks.Task_x is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      procedure Start
      (
         this : in out Task_x.Kind
      );
      
      procedure Start
      (
         this : in out Task_x.Kind;
         scheduler : NetFrameworkBase.System.Threading.Tasks.TaskScheduler.Kind_Ptr
      );
      
      procedure RunSynchronously
      (
         this : in out Task_x.Kind
      );
      
      procedure RunSynchronously
      (
         this : in out Task_x.Kind;
         scheduler : NetFrameworkBase.System.Threading.Tasks.TaskScheduler.Kind_Ptr
      );
      
      function Id
      (
         this : in out Task_x.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Exception_x
      (
         this : in out Task_x.Kind
      )
      return NetFrameworkBase.System.AggregateException.Kind_Ptr;
      
      function Status
      (
         this : in out Task_x.Kind
      )
      return NetFrameworkBase.System.Threading.Tasks.TaskStatus.Kind;
      
      function IsCanceled
      (
         this : in out Task_x.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsCompleted
      (
         this : in out Task_x.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function CreationOptions
      (
         this : in out Task_x.Kind
      )
      return NetFrameworkBase.System.Threading.Tasks.TaskCreationOptions.Kind;
      
      function AsyncState
      (
         this : in out Task_x.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function Factory
      return NetFrameworkBase.System.Threading.Tasks.TaskFactory.Kind_Ptr;
      
      function CompletedTask
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function IsFaulted
      (
         this : in out Task_x.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure Dispose
      (
         this : in out Task_x.Kind
      );
      
      function GetAwaiter
      (
         this : in out Task_x.Kind
      )
      return NetFrameworkBase.System.Runtime.CompilerServices.TaskAwaiter.Kind_Ptr;
      
      function ConfigureAwait
      (
         this : in out Task_x.Kind;
         continueOnCapturedContext : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Runtime.CompilerServices.ConfiguredTaskAwaitable.Kind_Ptr;
      
      function Yield
      return NetFrameworkBase.System.Runtime.CompilerServices.YieldAwaitable.Kind_Ptr;
      
      procedure Wait
      (
         this : in out Task_x.Kind
      );
      
      function Wait
      (
         this : in out Task_x.Kind;
         timeout : NetFrameworkBase.System.TimeSpan.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      procedure Wait
      (
         this : in out Task_x.Kind;
         cancellationToken : NetFrameworkBase.System.Threading.CancellationToken.Kind_Ptr
      );
      
      function Wait
      (
         this : in out Task_x.Kind;
         millisecondsTimeout : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Boolean;
      
      function Wait
      (
         this : in out Task_x.Kind;
         millisecondsTimeout : NetFrameworkBase.Int32; 
         cancellationToken : NetFrameworkBase.System.Threading.CancellationToken.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      procedure WaitAll
      (
         tasks : NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Array
      )
      ;
      
      function WaitAll
      (
         tasks : NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Array; 
         timeout : NetFrameworkBase.System.TimeSpan.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function WaitAll
      (
         tasks : NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Array; 
         millisecondsTimeout : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Boolean;
      
      procedure WaitAll
      (
         tasks : NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Array; 
         cancellationToken : NetFrameworkBase.System.Threading.CancellationToken.Kind_Ptr
      )
      ;
      
      function WaitAll
      (
         tasks : NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Array; 
         millisecondsTimeout : NetFrameworkBase.Int32; 
         cancellationToken : NetFrameworkBase.System.Threading.CancellationToken.Kind_Ptr
      )
      return NetFrameworkBase.Boolean;
      
      function WaitAny
      (
         tasks : NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Array
      )
      return NetFrameworkBase.Int32;
      
      function WaitAny
      (
         tasks : NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Array; 
         timeout : NetFrameworkBase.System.TimeSpan.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function WaitAny
      (
         tasks : NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Array; 
         cancellationToken : NetFrameworkBase.System.Threading.CancellationToken.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function WaitAny
      (
         tasks : NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Array; 
         millisecondsTimeout : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function WaitAny
      (
         tasks : NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Array; 
         millisecondsTimeout : NetFrameworkBase.Int32; 
         cancellationToken : NetFrameworkBase.System.Threading.CancellationToken.Kind_Ptr
      )
      return NetFrameworkBase.Int32;
      
      function FromException
      (
         exception_x : NetFrameworkBase.System.Exception_x.Kind_Ptr
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function FromCanceled
      (
         cancellationToken : NetFrameworkBase.System.Threading.CancellationToken.Kind_Ptr
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function Run
      (
         action : NetFrameworkBase.System.Action.Kind_Ptr
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function Run
      (
         action : NetFrameworkBase.System.Action.Kind_Ptr; 
         cancellationToken : NetFrameworkBase.System.Threading.CancellationToken.Kind_Ptr
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function Delay_x
      (
         delay_x : NetFrameworkBase.System.TimeSpan.Kind_Ptr
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function Delay_x
      (
         delay_x : NetFrameworkBase.System.TimeSpan.Kind_Ptr; 
         cancellationToken : NetFrameworkBase.System.Threading.CancellationToken.Kind_Ptr
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function Delay_x
      (
         millisecondsDelay : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WhenAll
      (
         tasks : NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Array
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function Delay_x
      (
         millisecondsDelay : NetFrameworkBase.Int32; 
         cancellationToken : NetFrameworkBase.System.Threading.CancellationToken.Kind_Ptr
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function Constructor
      (
         action : NetFrameworkBase.System.Action.Kind_Ptr
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function Constructor
      (
         action : NetFrameworkBase.System.Action.Kind_Ptr;
         cancellationToken : NetFrameworkBase.System.Threading.CancellationToken.Kind_Ptr
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function Constructor
      (
         action : NetFrameworkBase.System.Action.Kind_Ptr;
         creationOptions : NetFrameworkBase.System.Threading.Tasks.TaskCreationOptions.Kind
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function Constructor
      (
         action : NetFrameworkBase.System.Action.Kind_Ptr;
         cancellationToken : NetFrameworkBase.System.Threading.CancellationToken.Kind_Ptr;
         creationOptions : NetFrameworkBase.System.Threading.Tasks.TaskCreationOptions.Kind
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
end;
