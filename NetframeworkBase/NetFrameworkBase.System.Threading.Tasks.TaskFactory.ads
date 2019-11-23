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
limited with NetFrameworkBase.System.Action;
limited with NetFrameworkBase.System.Threading.CancellationToken;
limited with NetFrameworkBase.System.Threading.Tasks.TaskCreationOptions;
limited with NetFrameworkBase.System.Threading.Tasks.TaskScheduler;
limited with NetFrameworkBase.System.IAsyncResult;
limited with NetFrameworkBase.System.Threading.Tasks.Task_x;
limited with NetFrameworkBase.System.Threading.Tasks.TaskContinuationOptions;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Threading.Tasks.TaskFactory is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function CancellationToken
      (
         this : in out TaskFactory.Kind
      )
      return NetFrameworkBase.System.Threading.CancellationToken.Kind_Ptr;
      
      function Scheduler
      (
         this : in out TaskFactory.Kind
      )
      return NetFrameworkBase.System.Threading.Tasks.TaskScheduler.Kind_Ptr;
      
      function CreationOptions
      (
         this : in out TaskFactory.Kind
      )
      return NetFrameworkBase.System.Threading.Tasks.TaskCreationOptions.Kind;
      
      function ContinuationOptions
      (
         this : in out TaskFactory.Kind
      )
      return NetFrameworkBase.System.Threading.Tasks.TaskContinuationOptions.Kind;
      
      function StartNew
      (
         this : in out TaskFactory.Kind;
         action : NetFrameworkBase.System.Action.Kind_Ptr
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function StartNew
      (
         this : in out TaskFactory.Kind;
         action : NetFrameworkBase.System.Action.Kind_Ptr; 
         cancellationToken : NetFrameworkBase.System.Threading.CancellationToken.Kind_Ptr
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function StartNew
      (
         this : in out TaskFactory.Kind;
         action : NetFrameworkBase.System.Action.Kind_Ptr; 
         creationOptions : NetFrameworkBase.System.Threading.Tasks.TaskCreationOptions.Kind
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function StartNew
      (
         this : in out TaskFactory.Kind;
         action : NetFrameworkBase.System.Action.Kind_Ptr; 
         cancellationToken : NetFrameworkBase.System.Threading.CancellationToken.Kind_Ptr; 
         creationOptions : NetFrameworkBase.System.Threading.Tasks.TaskCreationOptions.Kind; 
         scheduler : NetFrameworkBase.System.Threading.Tasks.TaskScheduler.Kind_Ptr
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function Constructor return NetFrameworkBase.System.Threading.Tasks.TaskFactory.Kind_Ptr;
      
      function Constructor
      (
         cancellationToken : NetFrameworkBase.System.Threading.CancellationToken.Kind_Ptr
      )
      return NetFrameworkBase.System.Threading.Tasks.TaskFactory.Kind_Ptr;
      
      function Constructor
      (
         scheduler : NetFrameworkBase.System.Threading.Tasks.TaskScheduler.Kind_Ptr
      )
      return NetFrameworkBase.System.Threading.Tasks.TaskFactory.Kind_Ptr;
      
      function Constructor
      (
         creationOptions : NetFrameworkBase.System.Threading.Tasks.TaskCreationOptions.Kind;
         continuationOptions : NetFrameworkBase.System.Threading.Tasks.TaskContinuationOptions.Kind
      )
      return NetFrameworkBase.System.Threading.Tasks.TaskFactory.Kind_Ptr;
      
      function Constructor
      (
         cancellationToken : NetFrameworkBase.System.Threading.CancellationToken.Kind_Ptr;
         creationOptions : NetFrameworkBase.System.Threading.Tasks.TaskCreationOptions.Kind;
         continuationOptions : NetFrameworkBase.System.Threading.Tasks.TaskContinuationOptions.Kind;
         scheduler : NetFrameworkBase.System.Threading.Tasks.TaskScheduler.Kind_Ptr
      )
      return NetFrameworkBase.System.Threading.Tasks.TaskFactory.Kind_Ptr;
      
end;
