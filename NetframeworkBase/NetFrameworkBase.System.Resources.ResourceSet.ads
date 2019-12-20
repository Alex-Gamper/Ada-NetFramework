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
limited with NetFrameworkBase.System.IO.Stream;
limited with NetFrameworkBase.System.Resources.IResourceReader;
limited with NetFrameworkBase.System.Type_x;
limited with NetFrameworkBase.System.Collections.IDictionaryEnumerator;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Resources.ResourceSet is
   
   type Kind is new NetFrameworkBase.System.Object.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      procedure Close
      (
         this : in out ResourceSet.Kind
      );
      
      procedure Dispose
      (
         this : in out ResourceSet.Kind
      );
      
      function GetDefaultReader
      (
         this : in out ResourceSet.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function GetDefaultWriter
      (
         this : in out ResourceSet.Kind
      )
      return NetFrameworkBase.System.Type_x.Kind_Ptr;
      
      function GetEnumerator
      (
         this : in out ResourceSet.Kind
      )
      return NetFrameworkBase.System.Collections.IDictionaryEnumerator.Kind_Ptr;
      
      function GetString
      (
         this : in out ResourceSet.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function GetString
      (
         this : in out ResourceSet.Kind;
         name : NetFrameworkBase.BSTR; 
         ignoreCase : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.BSTR;
      
      function GetObject
      (
         this : in out ResourceSet.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function GetObject
      (
         this : in out ResourceSet.Kind;
         name : NetFrameworkBase.BSTR; 
         ignoreCase : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      function Constructor
      (
         fileName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.System.Resources.ResourceSet.Kind_Ptr;
      
      function Constructor
      (
         stream : NetFrameworkBase.System.IO.Stream.Kind_Ptr
      )
      return NetFrameworkBase.System.Resources.ResourceSet.Kind_Ptr;
      
      function Constructor
      (
         reader : NetFrameworkBase.System.Resources.IResourceReader.Kind_Ptr
      )
      return NetFrameworkBase.System.Resources.ResourceSet.Kind_Ptr;
      
end;
