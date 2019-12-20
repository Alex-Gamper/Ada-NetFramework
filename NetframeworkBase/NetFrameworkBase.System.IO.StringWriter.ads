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
with NetFrameworkBase.System.IO.TextWriter;
limited with NetFrameworkBase.System.IFormatProvider;
limited with NetFrameworkBase.System.Text.StringBuilder;
limited with NetFrameworkBase.System.Text.Encoding;
limited with NetFrameworkBase.System.Threading.Tasks.Task_x;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.IO.StringWriter is
   
   type Kind is new NetFrameworkBase.System.IO.TextWriter.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      procedure Close
      (
         this : in out StringWriter.Kind
      );
      
      function Encoding
      (
         this : in out StringWriter.Kind
      )
      return NetFrameworkBase.System.Text.Encoding.Kind_Ptr;
      
      function GetStringBuilder
      (
         this : in out StringWriter.Kind
      )
      return NetFrameworkBase.System.Text.StringBuilder.Kind_Ptr;
      
      procedure Write
      (
         this : in out StringWriter.Kind;
         value : NetFrameworkBase.Wide_Char
      );
      
      procedure Write
      (
         this : in out StringWriter.Kind;
         buffer : NetFrameworkBase.Wide_Char_Array; 
         index : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32
      );
      
      procedure Write
      (
         this : in out StringWriter.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function WriteAsync
      (
         this : in out StringWriter.Kind;
         value : NetFrameworkBase.Wide_Char
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteAsync
      (
         this : in out StringWriter.Kind;
         value : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteAsync
      (
         this : in out StringWriter.Kind;
         buffer : NetFrameworkBase.Wide_Char_Array; 
         index : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteLineAsync
      (
         this : in out StringWriter.Kind;
         value : NetFrameworkBase.Wide_Char
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteLineAsync
      (
         this : in out StringWriter.Kind;
         value : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function WriteLineAsync
      (
         this : in out StringWriter.Kind;
         buffer : NetFrameworkBase.Wide_Char_Array; 
         index : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function FlushAsync
      (
         this : in out StringWriter.Kind
      )
      return NetFrameworkBase.System.Threading.Tasks.Task_x.Kind_Ptr;
      
      function ToString
      (
         this : in out StringWriter.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Constructor return NetFrameworkBase.System.IO.StringWriter.Kind_Ptr;
      
      function Constructor
      (
         formatProvider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr
      )
      return NetFrameworkBase.System.IO.StringWriter.Kind_Ptr;
      
      function Constructor
      (
         sb : NetFrameworkBase.System.Text.StringBuilder.Kind_Ptr
      )
      return NetFrameworkBase.System.IO.StringWriter.Kind_Ptr;
      
      function Constructor
      (
         sb : NetFrameworkBase.System.Text.StringBuilder.Kind_Ptr;
         formatProvider : NetFrameworkBase.System.IFormatProvider.Kind_Ptr
      )
      return NetFrameworkBase.System.IO.StringWriter.Kind_Ptr;
      
end;
