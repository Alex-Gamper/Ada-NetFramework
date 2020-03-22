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
with NetFrameworkBase.System.Windows.Forms.WebBrowserBase;
limited with NetFrameworkBase.System.IO.Stream;
with NetFrameworkBase.System.Object;
limited with NetFrameworkBase.System.Windows.Forms.Padding;
limited with NetFrameworkBase.System.EventHandler;
limited with NetFrameworkBase.System.Uri;
limited with NetFrameworkBase.System.Windows.Forms.WebBrowserRefreshOption;
limited with NetFrameworkBase.System.Windows.Forms.WebBrowserDocumentCompletedEventHandler;
limited with NetFrameworkBase.System.Windows.Forms.WebBrowserNavigatedEventHandler;
limited with NetFrameworkBase.System.Windows.Forms.WebBrowserNavigatingEventHandler;
limited with NetFrameworkBase.System.ComponentModel.CancelEventHandler;
limited with NetFrameworkBase.System.Windows.Forms.WebBrowserProgressChangedEventHandler;
limited with NetFrameworkBase.System.Windows.Forms.HtmlDocument;
limited with NetFrameworkBase.System.Windows.Forms.WebBrowserEncryptionLevel;
limited with NetFrameworkBase.System.Windows.Forms.WebBrowserReadyState;
limited with NetFrameworkBase.System.Version;
--------------------------------------------------------------------------------
package NetFrameworkBase.System.Windows.Forms.WebBrowser is
   
   type Kind is new NetFrameworkBase.System.Windows.Forms.WebBrowserBase.Kind with null record;
   type Kind_Ptr is access all Kind;
   type Kind_Array is array(Natural range<>) of Kind_Ptr;
   type Kind_Array_Ptr is access all Kind_Array;
   
      function StatusText
      (
         this : in out WebBrowser.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure Refresh
      (
         this : in out WebBrowser.Kind
      );
      
      function Focused
      (
         this : in out WebBrowser.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function AllowNavigation
      (
         this : in out WebBrowser.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure AllowNavigation
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function AllowWebBrowserDrop
      (
         this : in out WebBrowser.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure AllowWebBrowserDrop
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function ScriptErrorsSuppressed
      (
         this : in out WebBrowser.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure ScriptErrorsSuppressed
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function WebBrowserShortcutsEnabled
      (
         this : in out WebBrowser.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure WebBrowserShortcutsEnabled
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function CanGoBack
      (
         this : in out WebBrowser.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function CanGoForward
      (
         this : in out WebBrowser.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function Document
      (
         this : in out WebBrowser.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.HtmlDocument.Kind_Ptr;
      
      function DocumentStream
      (
         this : in out WebBrowser.Kind
      )
      return NetFrameworkBase.System.IO.Stream.Kind_Ptr;
      
      procedure DocumentStream
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.System.IO.Stream.Kind_Ptr
      );
      
      function DocumentText
      (
         this : in out WebBrowser.Kind
      )
      return NetFrameworkBase.BSTR;
      
      procedure DocumentText
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.BSTR
      );
      
      function DocumentTitle
      (
         this : in out WebBrowser.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function DocumentType
      (
         this : in out WebBrowser.Kind
      )
      return NetFrameworkBase.BSTR;
      
      function EncryptionLevel
      (
         this : in out WebBrowser.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.WebBrowserEncryptionLevel.Kind;
      
      function IsBusy
      (
         this : in out WebBrowser.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsOffline
      (
         this : in out WebBrowser.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function IsWebBrowserContextMenuEnabled
      (
         this : in out WebBrowser.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure IsWebBrowserContextMenuEnabled
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      function ObjectForScripting
      (
         this : in out WebBrowser.Kind
      )
      return NetFrameworkBase.System.Object.Kind_Ptr;
      
      procedure ObjectForScripting
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.System.Object.Kind_Ptr
      );
      
      function Padding
      (
         this : in out WebBrowser.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.Padding.Kind_Ptr;
      
      procedure Padding
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.System.Windows.Forms.Padding.Kind_Ptr
      );
      
      procedure add_PaddingChanged
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_PaddingChanged
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      function ReadyState
      (
         this : in out WebBrowser.Kind
      )
      return NetFrameworkBase.System.Windows.Forms.WebBrowserReadyState.Kind;
      
      function Url
      (
         this : in out WebBrowser.Kind
      )
      return NetFrameworkBase.System.Uri.Kind_Ptr;
      
      procedure Url
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.System.Uri.Kind_Ptr
      );
      
      function Version
      (
         this : in out WebBrowser.Kind
      )
      return NetFrameworkBase.System.Version.Kind_Ptr;
      
      function GoBack
      (
         this : in out WebBrowser.Kind
      )
      return NetFrameworkBase.Boolean;
      
      function GoForward
      (
         this : in out WebBrowser.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure GoHome
      (
         this : in out WebBrowser.Kind
      );
      
      procedure GoSearch
      (
         this : in out WebBrowser.Kind
      );
      
      procedure Navigate
      (
         this : in out WebBrowser.Kind;
         url : NetFrameworkBase.System.Uri.Kind_Ptr
      );
      
      procedure Navigate
      (
         this : in out WebBrowser.Kind;
         urlString : NetFrameworkBase.BSTR
      );
      
      procedure Navigate
      (
         this : in out WebBrowser.Kind;
         url : NetFrameworkBase.System.Uri.Kind_Ptr; 
         targetFrameName : NetFrameworkBase.BSTR
      );
      
      procedure Navigate
      (
         this : in out WebBrowser.Kind;
         urlString : NetFrameworkBase.BSTR; 
         targetFrameName : NetFrameworkBase.BSTR
      );
      
      procedure Navigate
      (
         this : in out WebBrowser.Kind;
         url : NetFrameworkBase.System.Uri.Kind_Ptr; 
         newWindow : NetFrameworkBase.Boolean
      );
      
      procedure Navigate
      (
         this : in out WebBrowser.Kind;
         urlString : NetFrameworkBase.BSTR; 
         newWindow : NetFrameworkBase.Boolean
      );
      
      procedure Navigate
      (
         this : in out WebBrowser.Kind;
         url : NetFrameworkBase.System.Uri.Kind_Ptr; 
         targetFrameName : NetFrameworkBase.BSTR; 
         postData : NetFrameworkBase.Byte_Array; 
         additionalHeaders : NetFrameworkBase.BSTR
      );
      
      procedure Navigate
      (
         this : in out WebBrowser.Kind;
         urlString : NetFrameworkBase.BSTR; 
         targetFrameName : NetFrameworkBase.BSTR; 
         postData : NetFrameworkBase.Byte_Array; 
         additionalHeaders : NetFrameworkBase.BSTR
      );
      
      procedure Print
      (
         this : in out WebBrowser.Kind
      );
      
      procedure Refresh
      (
         this : in out WebBrowser.Kind;
         opt : NetFrameworkBase.System.Windows.Forms.WebBrowserRefreshOption.Kind
      );
      
      function ScrollBarsEnabled
      (
         this : in out WebBrowser.Kind
      )
      return NetFrameworkBase.Boolean;
      
      procedure ScrollBarsEnabled
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.Boolean
      );
      
      procedure ShowPageSetupDialog
      (
         this : in out WebBrowser.Kind
      );
      
      procedure ShowPrintDialog
      (
         this : in out WebBrowser.Kind
      );
      
      procedure ShowPrintPreviewDialog
      (
         this : in out WebBrowser.Kind
      );
      
      procedure ShowPropertiesDialog
      (
         this : in out WebBrowser.Kind
      );
      
      procedure ShowSaveAsDialog
      (
         this : in out WebBrowser.Kind
      );
      
      procedure Stop
      (
         this : in out WebBrowser.Kind
      );
      
      procedure add_CanGoBackChanged
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_CanGoBackChanged
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_CanGoForwardChanged
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_CanGoForwardChanged
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_DocumentCompleted
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.System.Windows.Forms.WebBrowserDocumentCompletedEventHandler.Kind_Ptr
      );
      
      procedure remove_DocumentCompleted
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.System.Windows.Forms.WebBrowserDocumentCompletedEventHandler.Kind_Ptr
      );
      
      procedure add_DocumentTitleChanged
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_DocumentTitleChanged
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_EncryptionLevelChanged
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_EncryptionLevelChanged
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_FileDownload
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_FileDownload
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure add_Navigated
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.System.Windows.Forms.WebBrowserNavigatedEventHandler.Kind_Ptr
      );
      
      procedure remove_Navigated
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.System.Windows.Forms.WebBrowserNavigatedEventHandler.Kind_Ptr
      );
      
      procedure add_Navigating
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.System.Windows.Forms.WebBrowserNavigatingEventHandler.Kind_Ptr
      );
      
      procedure remove_Navigating
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.System.Windows.Forms.WebBrowserNavigatingEventHandler.Kind_Ptr
      );
      
      procedure add_NewWindow
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.System.ComponentModel.CancelEventHandler.Kind_Ptr
      );
      
      procedure remove_NewWindow
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.System.ComponentModel.CancelEventHandler.Kind_Ptr
      );
      
      procedure add_ProgressChanged
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.System.Windows.Forms.WebBrowserProgressChangedEventHandler.Kind_Ptr
      );
      
      procedure remove_ProgressChanged
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.System.Windows.Forms.WebBrowserProgressChangedEventHandler.Kind_Ptr
      );
      
      procedure add_StatusTextChanged
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      procedure remove_StatusTextChanged
      (
         this : in out WebBrowser.Kind;
         value : NetFrameworkBase.System.EventHandler.Kind_Ptr
      );
      
      function Constructor return NetFrameworkBase.System.Windows.Forms.WebBrowser.Kind_Ptr;
      
end;