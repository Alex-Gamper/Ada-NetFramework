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
with NetFrameworkWin32;                     use NetFrameworkWin32;
--------------------------------------------------------------------------------
package NetFrameworkAdaRuntime is

    ----------------------------------------------------------------------------

    type RuntimeHost(<>) is limited private;

        function Instance return RuntimeHost;
        procedure Initialize(this : in out RuntimeHost);
        procedure Finalize(this : in out RuntimeHost);
        function LoadAssembly (this : in out RuntimeHost; AssemblyName : Wide_String) return IAssembly_Ptr;
        function GetAssembly (this : in out RuntimeHost; AssemblyName : Wide_String) return IAssembly_Ptr;
        function IsAssemblyLoaded (this : in out RuntimeHost; AssemblyName : Wide_String) return boolean;
        procedure UnloadAssembly (this : in out RuntimeHost; AssemblyName : Wide_String);

    ----------------------------------------------------------------------------

    type Kind is private;

        procedure CreateInstance (this : in out Kind; AssemblyName : Wide_String; TypeName : Wide_String ; Flags : UInt32 ; Parameters : access SAFEARRAY);
        procedure SetObject (this : in out Kind; Object : VARIANT);
        function GetObject (this : in Kind) return VARIANT;
        procedure DestroyInstance (this : in out Kind);

    ----------------------------------------------------------------------------

    Runtime_Not_Initialized     : exception;
    Runtime_Already_Initialized : exception;
    Assembly_Not_Loaded         : exception;
    Assembly_Already_Loaded     : exception;
    Type_Not_Initialized        : exception;
    Type_Already_Initialized    : exception;

    CallMethod_Failed           : exception;

    ----------------------------------------------------------------------------

    function To_Variant (Value : IUnknown_Ptr; ByRef : Standard.Boolean := False) return VARIANT;
    function To_Variant (Value : UInt8; ByRef : Standard.Boolean := False) return VARIANT;
    function To_Variant (Value : UInt16; ByRef : Standard.Boolean := False) return VARIANT;
    function To_Variant (Value : UInt32; ByRef : Standard.Boolean := False) return VARIANT;
    function To_Variant (Value : UInt64; ByRef : Standard.Boolean := False) return VARIANT;
    function To_Variant (Value : Int8; ByRef : Standard.Boolean := False) return VARIANT;
    function To_Variant (Value : Int16; ByRef : Standard.Boolean := False) return VARIANT;
    function To_Variant (Value : Int32; ByRef : Standard.Boolean := False) return VARIANT;
    function To_Variant (Value : Int64; ByRef : Standard.Boolean := False) return VARIANT;
    function To_Variant (Value : Single; ByRef : Standard.Boolean := False) return VARIANT;
    function To_Variant (Value : Double; ByRef : Standard.Boolean := False) return VARIANT;
    function To_Variant (Value : DATE; ByRef : Standard.Boolean := False) return VARIANT;
    function To_Variant (Value : BSTR; ByRef : Standard.Boolean := False) return VARIANT;
    function To_Variant (Value : Boolean; ByRef : Standard.Boolean := False) return VARIANT;
    function To_Variant (Value : IntPtr; ByRef : Standard.Boolean := False) return VARIANT;
    function To_Variant (Value : UIntPtr; ByRef : Standard.Boolean := False) return VARIANT;
    function To_Variant (Value : Wide_Char; ByRef : Standard.Boolean := False) return VARIANT;

    ----------------------------------------------------------------------------

    function From_Variant (Value : VARIANT) return IUnknown_Ptr;
    function From_Variant (Value : VARIANT) return UInt8;
    function From_Variant (Value : VARIANT) return UInt16;
    function From_Variant (Value : VARIANT) return UInt32;
    function From_Variant (Value : VARIANT) return Uint64;
    function From_Variant (Value : VARIANT) return Int8;
    function From_Variant (Value : VARIANT) return Int16;
    function From_Variant (Value : VARIANT) return Int32;
    function From_Variant (Value : VARIANT) return Int64;
    function From_Variant (Value : VARIANT) return Single;
    function From_Variant (Value : VARIANT) return Double;
    function From_Variant (Value : VARIANT) return Date;
    function From_Variant (Value : VARIANT) return BSTR;
    function From_Variant (Value : VARIANT) return Boolean;
    function From_Variant (Value : VARIANT) return IntPtr;
    function From_Variant (Value : VARIANT) return UIntPtr;
    function From_Variant (Value : VARIANT) return Wide_Char;


	function To_Ada (Value : BSTR) return Wide_String;
	function To_BSTR (Value : Wide_String) return BSTR;
    
    ----------------------------------------------------------------------------

    function CallMethod(kind : IType_ptr; Object : VARIANT ; MethodName : BSTR ; Flags : UInt32 ; Parameters : access SAFEARRAY) return VARIANT;
    procedure OutputDebugString(OutputString : Standard.String);

--------------------------------------------------------------------------------
private

    type Kind_Interface;
    type Kind is access all Kind_Interface;

    type RuntimeHost_Interface;
    type RuntimeHost is access all RuntimeHost_Interface;
    
end NetFrameworkAdaRuntime;