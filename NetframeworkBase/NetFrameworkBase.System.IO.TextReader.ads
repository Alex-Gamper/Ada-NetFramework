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
with NetFrameworkBase.System.MarshalByRefObject;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.IO.TextReader is
   
   type Kind is new NetFrameworkBase.System.MarshalByRefObject.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      procedure Close
      (
         this : in out TextReader.Kind
      );
      
      procedure Dispose
      (
         this : in out TextReader.Kind
      );
      
      function Peek
      (
         this : in out TextReader.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Read
      (
         this : in out TextReader.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Read
      (
         this : in out TextReader.Kind;
         buffer : in out NetFrameworkBase.Wide_Char_Array; 
         index : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function ReadToEnd
      (
         this : in out TextReader.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function ReadBlock
      (
         this : in out TextReader.Kind;
         buffer : in out NetFrameworkBase.Wide_Char_Array; 
         index : NetFrameworkBase.Int32; 
         count : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.Int32;
      
      function ReadLine
      (
         this : in out TextReader.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function Synchronized_x
      (
         reader : NetFrameworkBase.System.IO.TextReader.Kind_Ptr
      )
      return NetFrameworkBase.System.IO.TextReader.Kind_Ptr;
      
end;
