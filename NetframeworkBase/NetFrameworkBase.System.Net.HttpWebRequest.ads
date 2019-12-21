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
with NetFrameworkBase.System.Net.WebRequest;
limited with NetFrameworkBase.System.Net.Cache.RequestCachePolicy;
limited with NetFrameworkBase.System.Net.CookieContainer;
limited with NetFrameworkBase.System.IAsyncResult;
limited with NetFrameworkBase.System.Net.ICredentials;
limited with NetFrameworkBase.System.Net.WebHeaderCollection;
limited with NetFrameworkBase.System.Net.IWebProxy;
limited with NetFrameworkBase.System.Net.DecompressionMethods;
limited with NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509CertificateCollection;
limited with NetFrameworkBase.System.AsyncCallback;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Net.TransportContext;
limited with NetFrameworkBase.System.Net.HttpContinueDelegate;
limited with NetFrameworkBase.System.Version;
limited with NetFrameworkBase.System.Net.Security.RemoteCertificateValidationCallback;
limited with NetFrameworkBase.System.Uri;
limited with NetFrameworkBase.System.IO.Stream;
limited with NetFrameworkBase.System.Net.WebResponse;
limited with NetFrameworkBase.System.Net.ServicePoint;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Net.HttpWebRequest is
   
   type Kind is new NetFrameworkBase.System.Net.WebRequest.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function AllowAutoRedirect
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure AllowAutoRedirect
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function AllowWriteStreamBuffering
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure AllowWriteStreamBuffering
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function AllowReadStreamBuffering
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure AllowReadStreamBuffering
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function HaveResponse
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function PreAuthenticate
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure PreAuthenticate
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function DefaultCachePolicy
      return NetFrameworkBase.System.Net.Cache.RequestCachePolicy.Kind_Ptr;
      
      procedure DefaultCachePolicy
      (
         value : NetFrameworkBase.System.Net.Cache.RequestCachePolicy.Kind_Ptr
      )
      ;
      
      function DefaultMaximumResponseHeadersLength
      return NetFrameworkBase.Int32;
      
      procedure DefaultMaximumResponseHeadersLength
      (
         value : NetFrameworkBase.Int32
      )
      ;
      
      function DefaultMaximumErrorResponseLength
      return NetFrameworkBase.Int32;
      
      procedure DefaultMaximumErrorResponseLength
      (
         value : NetFrameworkBase.Int32
      )
      ;
      
      function CookieContainer
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.System.Net.CookieContainer.Kind_Ptr;
      
      procedure CookieContainer
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.System.Net.CookieContainer.Kind_Ptr
      );
      
      function SupportsCookieContainer
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function RequestUri
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.System.Uri.Kind_Ptr;
      
      function ContentLength
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.Int64;
      
      procedure ContentLength
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.Int64
      );
      
      function Timeout
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure Timeout
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function EndGetRequestStream
      (
         this : in out HttpWebRequest.Kind;
         asyncResult : NetFrameworkBase.System.IAsyncResult.Kind_Ptr
      )
      return NetFrameworkBase.System.IO.Stream.Kind_Ptr;
      
      function GetRequestStream
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.System.IO.Stream.Kind_Ptr;
      
      function Method
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Method
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Credentials
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.System.Net.ICredentials.Kind_Ptr;
      
      procedure Credentials
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.System.Net.ICredentials.Kind_Ptr
      );
      
      function UseDefaultCredentials
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure UseDefaultCredentials
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function ConnectionGroupName
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure ConnectionGroupName
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Headers
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.System.Net.WebHeaderCollection.Kind_Ptr;
      
      procedure Headers
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.System.Net.WebHeaderCollection.Kind_Ptr
      );
      
      function Proxy
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.System.Net.IWebProxy.Kind_Ptr;
      
      procedure Proxy
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.System.Net.IWebProxy.Kind_Ptr
      );
      
      procedure Abort_x
      (
         this : in out HttpWebRequest.Kind
      );
      
      function KeepAlive
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure KeepAlive
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function Pipelined
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure Pipelined
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function UnsafeAuthenticatedConnectionSharing
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure UnsafeAuthenticatedConnectionSharing
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function SendChunked
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure SendChunked
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function AutomaticDecompression
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.System.Net.DecompressionMethods.Kind;
      
      procedure AutomaticDecompression
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.System.Net.DecompressionMethods.Kind
      );
      
      function MaximumResponseHeadersLength
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure MaximumResponseHeadersLength
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function ClientCertificates
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509CertificateCollection.Kind_Ptr;
      
      procedure ClientCertificates
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.System.Security.Cryptography.X509Certificates.X509CertificateCollection.Kind_Ptr
      );
      
      function ReadWriteTimeout
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure ReadWriteTimeout
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function ContinueTimeout
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure ContinueTimeout
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function BeginGetRequestStream
      (
         this : in out HttpWebRequest.Kind;
         callback : NetFrameworkBase.System.AsyncCallback.Kind_Ptr; 
         state : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.System.IAsyncResult.Kind_Ptr;
      
      function EndGetRequestStream
      (
         this : in out HttpWebRequest.Kind;
         asyncResult : NetFrameworkBase.System.IAsyncResult.Kind_Ptr; 
         context : out NetFrameworkBase.System.Net.TransportContext.Kind_Ptr
      )
      return NetFrameworkBase.System.IO.Stream.Kind_Ptr;
      
      function GetRequestStream
      (
         this : in out HttpWebRequest.Kind;
         context : out NetFrameworkBase.System.Net.TransportContext.Kind_Ptr
      )
      return NetFrameworkBase.System.IO.Stream.Kind_Ptr;
      
      function BeginGetResponse
      (
         this : in out HttpWebRequest.Kind;
         callback : NetFrameworkBase.System.AsyncCallback.Kind_Ptr; 
         state : NetFrameworkBase.System.Object.Kind_Ptr
      )
      return NetFrameworkBase.System.IAsyncResult.Kind_Ptr;
      
      function EndGetResponse
      (
         this : in out HttpWebRequest.Kind;
         asyncResult : NetFrameworkBase.System.IAsyncResult.Kind_Ptr
      )
      return NetFrameworkBase.System.Net.WebResponse.Kind_Ptr;
      
      function GetResponse
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.System.Net.WebResponse.Kind_Ptr;
      
      function Address
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.System.Uri.Kind_Ptr;
      
      function ContinueDelegate
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.System.Net.HttpContinueDelegate.Kind_Ptr;
      
      procedure ContinueDelegate
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.System.Net.HttpContinueDelegate.Kind_Ptr
      );
      
      function ServicePoint
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.System.Net.ServicePoint.Kind_Ptr;
      
      function Host
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Host
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function MaximumAutomaticRedirections
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.Int32;
      
      procedure MaximumAutomaticRedirections
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.Int32
      );
      
      function ProtocolVersion
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.System.Version.Kind_Ptr;
      
      procedure ProtocolVersion
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.System.Version.Kind_Ptr
      );
      
      function ContentType
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure ContentType
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function MediaType
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure MediaType
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function TransferEncoding
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure TransferEncoding
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Connection
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Connection
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Accept_x
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Accept_x
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Referer
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Referer
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function UserAgent
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure UserAgent
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function Expect
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Expect
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function IfModifiedSince
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.Date;
      
      procedure IfModifiedSince
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.Date
      );
      
      function Date
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.Date;
      
      procedure Date
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.Date
      );
      
      function ServerCertificateValidationCallback
      (
         this : in out HttpWebRequest.Kind
      )
      return NetFrameworkBase.System.Net.Security.RemoteCertificateValidationCallback.Kind_Ptr;
      
      procedure ServerCertificateValidationCallback
      (
         this : in out HttpWebRequest.Kind;
         value : NetFrameworkBase.System.Net.Security.RemoteCertificateValidationCallback.Kind_Ptr
      );
      
      procedure AddRange
      (
         this : in out HttpWebRequest.Kind;
         from : NetFrameworkBase.Int32; 
         to : NetFrameworkBase.Int32
      );
      
      procedure AddRange
      (
         this : in out HttpWebRequest.Kind;
         from : NetFrameworkBase.Int64; 
         to : NetFrameworkBase.Int64
      );
      
      procedure AddRange
      (
         this : in out HttpWebRequest.Kind;
         range_x : NetFrameworkBase.Int32
      );
      
      procedure AddRange
      (
         this : in out HttpWebRequest.Kind;
         range_x : NetFrameworkBase.Int64
      );
      
      procedure AddRange
      (
         this : in out HttpWebRequest.Kind;
         rangeSpecifier : NetFrameworkBase.BSTR; 
         from : NetFrameworkBase.Int32; 
         to : NetFrameworkBase.Int32
      );
      
      procedure AddRange
      (
         this : in out HttpWebRequest.Kind;
         rangeSpecifier : NetFrameworkBase.BSTR; 
         from : NetFrameworkBase.Int64; 
         to : NetFrameworkBase.Int64
      );
      
      procedure AddRange
      (
         this : in out HttpWebRequest.Kind;
         rangeSpecifier : NetFrameworkBase.BSTR; 
         range_x : NetFrameworkBase.Int32
      );
      
      procedure AddRange
      (
         this : in out HttpWebRequest.Kind;
         rangeSpecifier : NetFrameworkBase.BSTR; 
         range_x : NetFrameworkBase.Int64
      );
      
      function Constructor return NetFrameworkBase.System.Net.HttpWebRequest.Kind_Ptr;
      
end;
