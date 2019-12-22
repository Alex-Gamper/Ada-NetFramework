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
with NetFrameworkBase.System.Windows.Forms.CommonDialog;
limited with NetFrameworkBase.System.EventHandler;
limited with NetFrameworkBase.System.Environment.SpecialFolder;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.FolderBrowserDialog is
   
   type Kind is new NetFrameworkBase.System.Windows.Forms.CommonDialog.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      procedure Reset
      (
         this : in out FolderBrowserDialog.Kind
      );
      
      procedure add_HelpRequest
      (
         this : in out FolderBrowserDialog.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_HelpRequest
      (
         this : in out FolderBrowserDialog.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      function ShowNewFolderButton
      (
         this : in out FolderBrowserDialog.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure ShowNewFolderButton
      (
         this : in out FolderBrowserDialog.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function SelectedPath
      (
         this : in out FolderBrowserDialog.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure SelectedPath
      (
         this : in out FolderBrowserDialog.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function RootFolder
      (
         this : in out FolderBrowserDialog.Kind
      )
      return NetFrameworkBase.System.Environment.SpecialFolder.Kind;
      
      procedure RootFolder
      (
         this : in out FolderBrowserDialog.Kind;
         value : NetFrameworkBase.System.Environment.SpecialFolder.Kind
      );
      
      function Description
      (
         this : in out FolderBrowserDialog.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Description
      (
         this : in out FolderBrowserDialog.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Constructor return NetFrameworkBase.System.Windows.Forms.FolderBrowserDialog.Kind_Ptr;
      
end;
