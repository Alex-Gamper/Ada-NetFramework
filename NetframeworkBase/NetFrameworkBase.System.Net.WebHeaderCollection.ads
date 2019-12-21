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
with NetFrameworkBase.System.Collections.Specialized.NameValueCollection;
limited with NetFrameworkBase.System.Net.HttpRequestHeader;
limited with NetFrameworkBase.System.Net.HttpResponseHeader;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Runtime.Serialization.SerializationInfo;
limited with NetFrameworkBase.System.Runtime.Serialization.StreamingContext;
limited with NetFrameworkBase.System.Collections.IEnumerator;
limited with NetFrameworkBase.System.Collections.Specialized.NameObjectCollectionBase.KeysCollection;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Net.WebHeaderCollection is
   
   type Kind is new NetFrameworkBase.System.Collections.Specialized.NameValueCollection.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function Item
      (
         this : in out WebHeaderCollection.Kind;
         header : NetFrameworkBase.System.Net.HttpRequestHeader.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Item
      (
         this : in out WebHeaderCollection.Kind;
         header : NetFrameworkBase.System.Net.HttpRequestHeader.Kind; 
         value : NetFrameworkBase.BSTR
      );
      
      function Item
      (
         this : in out WebHeaderCollection.Kind;
         header : NetFrameworkBase.System.Net.HttpResponseHeader.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Add
      (
         this : in out WebHeaderCollection.Kind;
         header : NetFrameworkBase.System.Net.HttpRequestHeader.Kind; 
         value : NetFrameworkBase.BSTR
      );
      
      procedure Set
      (
         this : in out WebHeaderCollection.Kind;
         header : NetFrameworkBase.System.Net.HttpRequestHeader.Kind; 
         value : NetFrameworkBase.BSTR
      );
      
      procedure Remove
      (
         this : in out WebHeaderCollection.Kind;
         header : NetFrameworkBase.System.Net.HttpRequestHeader.Kind
      );
      
      procedure Remove
      (
         this : in out WebHeaderCollection.Kind;
         header : NetFrameworkBase.System.Net.HttpResponseHeader.Kind
      );
      
      procedure Remove
      (
         this : in out WebHeaderCollection.Kind;
         name : NetFrameworkBase.BSTR
      );
      
      function ToString
      (
         this : in out WebHeaderCollection.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function ToByteArray
      (
         this : in out WebHeaderCollection.Kind
      )
      return NetFrameworkBase.Byte_Array;
      
      function IsRestricted
      (
         headerName : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.Boolean;
      
      function IsRestricted
      (
         headerName : NetFrameworkBase.BSTR; 
         response : NetFrameworkBase.Boolean
      )
      return NetFrameworkBase.Boolean;
      
      procedure OnDeserialization
      (
         this : in out WebHeaderCollection.Kind;
         sender : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      function Get
      (
         this : in out WebHeaderCollection.Kind;
         name : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR;
      
      function GetEnumerator
      (
         this : in out WebHeaderCollection.Kind
      )
      return NetFrameworkBase.System.Collections.IEnumerator.Kind_Ptr;
      
      function Count
      (
         this : in out WebHeaderCollection.Kind
      )
      return NetFrameworkBase.Int32;
      
      function Keys
      (
         this : in out WebHeaderCollection.Kind
      )
      return NetFrameworkBase.System.Collections.Specialized.NameObjectCollectionBase.KeysCollection.Kind_Ptr;
      
      function Get
      (
         this : in out WebHeaderCollection.Kind;
         index : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.BSTR;
      
      function GetValues
      (
         this : in out WebHeaderCollection.Kind;
         index : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.BSTR_Array;
      
      function GetKey
      (
         this : in out WebHeaderCollection.Kind;
         index : NetFrameworkBase.Int32
      )
      return NetFrameworkBase.BSTR;
      
      function AllKeys
      (
         this : in out WebHeaderCollection.Kind
      )
      return NetFrameworkBase.BSTR_Array;
      
      procedure Clear
      (
         this : in out WebHeaderCollection.Kind
      );
      
      procedure Item
      (
         this : in out WebHeaderCollection.Kind;
         header : NetFrameworkBase.System.Net.HttpResponseHeader.Kind; 
         value : NetFrameworkBase.BSTR
      );
      
      procedure Add
      (
         this : in out WebHeaderCollection.Kind;
         header : NetFrameworkBase.System.Net.HttpResponseHeader.Kind; 
         value : NetFrameworkBase.BSTR
      );
      
      procedure Set
      (
         this : in out WebHeaderCollection.Kind;
         header : NetFrameworkBase.System.Net.HttpResponseHeader.Kind; 
         value : NetFrameworkBase.BSTR
      );
      
      procedure Add
      (
         this : in out WebHeaderCollection.Kind;
         name : NetFrameworkBase.BSTR; 
         value : NetFrameworkBase.BSTR
      );
      
      procedure Add
      (
         this : in out WebHeaderCollection.Kind;
         header : NetFrameworkBase.BSTR
      );
      
      procedure Set
      (
         this : in out WebHeaderCollection.Kind;
         name : NetFrameworkBase.BSTR; 
         value : NetFrameworkBase.BSTR
      );
      
      function GetValues
      (
         this : in out WebHeaderCollection.Kind;
         header : NetFrameworkBase.BSTR
      )
      return NetFrameworkBase.BSTR_Array;
      
      procedure GetObjectData
      (
         this : in out WebHeaderCollection.Kind;
         serializationInfo : NetFrameworkBase.System.Runtime.Serialization.SerializationInfo.Kind_Ptr; 
         streamingContext : NetFrameworkBase.System.Runtime.Serialization.StreamingContext.Kind_Ptr
      );
      
      function Constructor return NetFrameworkBase.System.Net.WebHeaderCollection.Kind_Ptr;
      
end;