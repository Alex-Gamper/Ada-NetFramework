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
with System;
with Interfaces.C;
with Interfaces.C.Extensions;
--------------------------------------------------------------------------------
package NetFrameworkWin32 is

   -----------------------------------------------------------------------------
   -- Base types

   type Int8  is range -(2**(8  - Integer'(1))) .. +(2**(8  - Integer'(1))) -1;
   type Int8_Ptr is access all Int8;
   type Int8_Array is array (Standard.Natural range <>) of aliased Int8;
   type Int8_Array_Ptr is access all Int8_Array;
   
   subtype SByte is Int8;
   subtype SByte_Ptr is Int8_Ptr;
   subtype SByte_Array is Int8_Array;
   subtype SByte_Array_Ptr is Int8_Array_Ptr;
   
   type Int16 is range -(2**(16 - Integer'(1))) .. +(2**(16 - Integer'(1))) -1;
   type Int16_Ptr is access all Int16;
   type Int16_Array is array (Standard.Natural range <>) of aliased Int16;
   type Int16_Array_Ptr is access all Int16_Ptr;
   
   type Int32 is range -(2**(32 - Integer'(1))) .. +(2**(32 - Integer'(1))) -1;
   type Int32_Ptr is access all Int32;
   type Int32_Array is array (Standard.Natural range <>) of aliased Int32;
   type Int32_Array_Ptr is access all Int32_Ptr;
   
   type Int64 is range -(2**(64 - Integer'(1))) .. +(2**(64 - Integer'(1))) -1;
   type Int64_Ptr is access all Int64;
   type Int64_Array is array (Standard.Natural range <>) of aliased Int64;
   type Int64_Array_Ptr is access all Int64_Ptr;
   
   type IntPtr is access Int64;
   type IntPtr_Ptr is access all IntPtr;
   type IntPtr_Array is array (Standard.Natural range <>) of IntPtr;
   type IntPtr_Array_Ptr is access all IntPtr_Array;
   
   type UInt8 is mod 2 ** 8;
   type UInt8_Ptr is access all UInt8;
   type UInt8_Array is array (Standard.Natural range <>) of aliased UInt8;
   type UInt8_Array_Ptr is access UInt8_Array;
   
   subtype Byte is UInt8;
   subtype Byte_Ptr is UInt8_Ptr;
   subtype Byte_Array is UInt8_Array;
   subtype Byte_Array_Ptr is UInt8_Array_Ptr;
   
   type UInt16 is mod 2 ** 16;
   type UInt16_Ptr is access all UInt16;
   type UInt16_Array is array (Standard.Natural range <>) of aliased UInt16;
   type UInt16_Array_Ptr is access all UInt16_Ptr;
   
   type UInt32 is mod 2 ** 32;
   type UInt32_Ptr is access all UInt32;
   type UInt32_Array is array (Standard.Natural range <>) of aliased UInt32;
   type UInt32_Array_Ptr is access all UInt32_Ptr;
   
   type UInt64 is mod 2 ** 64;
   type UInt64_Ptr is access all UInt64;
   type UInt64_Array is array (Standard.Natural range <>) of aliased UInt64;
   type UInt64_Array_Ptr is access all UInt64_Ptr;
   
   type UIntPtr is access UInt64;
   type UIntPtr_Ptr is access all UIntPtr;
   type UIntPtr_Array is array (Standard.Natural range <>) of UIntPtr;
   type UIntPtr_Array_Ptr is access all UIntPtr_Array;
   
   subtype Single is Standard.Float;
   type Single_Ptr is access all Single;
   type Single_Array is array (Standard.Natural range <>) of aliased Single;
   type Single_Array_Ptr is access all Single_Array;
   
   subtype Double is Standard.Long_Float;
   type Double_Ptr is access all Double;
   type Double_Array is array (Standard.Natural range <>) of aliased Double;
   type Double_Array_Ptr is access all Double_Array;
   
   type Date is new Standard.Long_Float;
   type Date_Ptr is access all Date;
   type Date_Array is array (Standard.Natural range <>) of aliased Date;
   type Date_Array_Ptr is access all Date_Array;

   subtype Boolean is Standard.Boolean;
   type Boolean_Ptr is access all Boolean;
   type Boolean_Array is array (Standard.Natural range <>) of aliased Boolean;
   type Boolean_Array_Ptr is access all Boolean_Array;
   
   subtype String is Standard.String;
   type String_Ptr is access all String;
   type String_Array is new System.Address;
   type String_Array_Ptr is access all String_Array;

   subtype Wide_String is Standard.Wide_String;
   type Wide_String_Ptr is access all Wide_String;
   type Wide_String_Array is new System.Address;
   type Wide_String_Array_Ptr is access all Wide_String_Array;
   
   type Void is null record;
   type Void_Ptr is access all Void;
   type Void_Array is array (Standard.Natural range <>) of aliased Void;
   type Void_Array_Ptr is access all Void_Array;
   
   type GUID is record
      Data1  : UInt32;
      Data2  : UInt16;
      Data3  : UInt16;
      Data4  : UInt8_Array(0..7);
   end record;
   
   type GUID_Ptr is access constant GUID;
   type GUID_Array is array (Standard.Natural range <>) of aliased GUID;
   type GUID_Array_Ptr is access all GUID_Array;
   
   subtype IID is GUID;
   subtype CLSID is GUID;
   type LPIID is access all IID;
   type LPCLSID is access all CLSID;

   subtype HResult is UInt32;
   subtype Address is System.Address;

   -----------------------------------------------------------------------------
   -- Win32 Api specific
   -----------------------------------------------------------------------------

   subtype size_t is Interfaces.C.Extensions.unsigned_long_long;

   subtype CHAR is Character;
   type LPSTR is access all CHAR;
   type LPCSTR is access constant CHAR;

   subtype WCHAR is Wide_Character;
   type LPWSTR is access all WCHAR;
   type LPCWSTR is access constant WCHAR;

   subtype OLECHAR is WCHAR;
   type LPOLESTR is access all OLECHAR;
   type LPCOLESTR is access constant OLECHAR;

   type BSTR is access all OLECHAR;
   type BSTR_Ptr is access all BSTR;
   type BSTR_Array is array (Standard.Natural range <>) of aliased BSTR;
   type BSTR_Array_Ptr is access all BSTR_Array;
   
   type LPBSTR is access all BSTR;

   subtype WORD is Interfaces.C.unsigned_short;
   subtype DWORD is Interfaces.C.unsigned_long;
   type PDWORD is access all DWORD;
   type LPDWORD is access all DWORD;

   subtype SHORT is Interfaces.C.Short;
   subtype USHORT is Interfaces.C.unsigned_short;

   subtype LONG is Interfaces.C.long;
   subtype ULONG is Interfaces.C.unsigned_long;

   subtype INT is Interfaces.C.Int;
   subtype UINT is Interfaces.C.unsigned;
   type PINT is access all Interfaces.C.Int;
   type PUINT is access all Interfaces.C.unsigned;

   type LPVOID is access all Void;
   type PVOID is access all Void;
   type LPVOID_Ptr is access all LPVOID;

   subtype LCID is DWORD;
   subtype PLCID is PDWORD;

   subtype DISPID is LONG;
   subtype MEMBERID is DISPID;
   subtype HREFTYPE is DWORD;

   subtype SCODE is LONG;
   type PSCODE is access all SCODE;

   subtype VARIANT_BOOL is Interfaces.C.Short;

   subtype LONG_PTR is Interfaces.C.Extensions.long_long;
   type PLONG_PTR is access all Interfaces.C.Extensions.long_long;
   subtype ULONG_PTR is Interfaces.C.Extensions.unsigned_long_long;
   type PULONG_PTR is access all Interfaces.C.Extensions.unsigned_long_long;

   subtype VARTYPE is Interfaces.C.unsigned_short;

   subtype BOOL is Interfaces.C.Int;

   subtype LONGLONG is Interfaces.C.Extensions.long_long;
   subtype ULONGLONG is Interfaces.C.Extensions.unsigned_long_long;

   type HANDLE is access all Void;
   type PHANDLE is access all HANDLE;

   type HINSTANCE_x is record
      unused : Interfaces.C.Int;
   end record;
   pragma Convention (C_Pass_By_Copy,HINSTANCE_x);
   for HINSTANCE_x use record
      unused at 0 range 0..31;
   end record;
   for HINSTANCE_x'Size use 32;
   for HINSTANCE_x'Alignment use 4;

   type HINSTANCE is access all HINSTANCE_x;
   subtype HMODULE is HINSTANCE;
   type HDOMAINENUM is access all Void;

   -----------------------------------------------------------------------------
   -- Forward Declarations
   -----------------------------------------------------------------------------

   type IUnknown;
   type IUnknown_Ptr is access all IUnknown'Class;
   IID_IUnknown : aliased constant IID;
   pragma import (C,IID_IUnknown,"IID_IUnknown");

   type IDispatch;
   type IDispatch_Ptr is access all IDispatch'Class;

   type IRecordInfo;
   type IRecordInfo_Ptr is access all IRecordInfo'Class;

   type ITypeInfo;
   type ITypeInfo_Ptr is access all ITypeInfo'Class;

   type ITypeComp;
   type ITypeComp_Ptr is access all ITypeComp'Class;

   type ITypeLib;
   type ITypeLib_Ptr is access all ITypeLib'Class;

   -----------------------------------------------------------------------------
   -- Enums
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   type VARENUM is (
      VT_EMPTY,
      VT_NULL,
      VT_I2,
      VT_I4,
      VT_R4,
      VT_R8,
      VT_CY,
      VT_DATE,
      VT_BSTR,
      VT_DISPATCH,
      VT_ERROR,
      VT_BOOL,
      VT_VARIANT,
      VT_UNKNOWN,
      VT_DECIMAL,
      VT_I1,
      VT_UI1,
      VT_UI2,
      VT_UI4,
      VT_I8,
      VT_UI8,
      VT_INT,
      VT_UINT,
      VT_VOID,
      VT_HRESULT,
      VT_PTR,
      VT_SAFEARRAY,
      VT_CARRAY,
      VT_USERDEFINED,
      VT_LPSTR,
      VT_LPWSTR,
      VT_RECORD,
      VT_INT_PTR,
      VT_UINT_PTR,
      VT_FILETIME,
      VT_BLOB,
      VT_STREAM,
      VT_STORAGE,
      VT_STREAMED_OBJECT,
      VT_STORED_OBJECT,
      VT_BLOB_OBJECT,
      VT_CF,
      VT_CLSID,
      VT_VERSIONED_STREAM,
      VT_BSTR_BLOB,
      VT_VECTOR,
      VT_ARRAY,
      VT_BYREF,
      VT_RESERVED,
      VT_ILLEGAL
   );
   for VARENUM use (
      VT_EMPTY => 0,
      VT_NULL => 1,
      VT_I2 => 2,
      VT_I4 => 3,
      VT_R4 => 4,
      VT_R8 => 5,
      VT_CY => 6,
      VT_DATE => 7,
      VT_BSTR => 8,
      VT_DISPATCH => 9,
      VT_ERROR => 10,
      VT_BOOL => 11,
      VT_VARIANT => 12,
      VT_UNKNOWN => 13,
      VT_DECIMAL => 14,
      VT_I1 => 16,
      VT_UI1 => 17,
      VT_UI2 => 18,
      VT_UI4 => 19,
      VT_I8 => 20,
      VT_UI8 => 21,
      VT_INT => 22,
      VT_UINT => 23,
      VT_VOID => 24,
      VT_HRESULT => 25,
      VT_PTR => 26,
      VT_SAFEARRAY => 27,
      VT_CARRAY => 28,
      VT_USERDEFINED => 29,
      VT_LPSTR => 30,
      VT_LPWSTR => 31,
      VT_RECORD => 36,
      VT_INT_PTR => 37,
      VT_UINT_PTR => 38,
      VT_FILETIME => 64,
      VT_BLOB => 65,
      VT_STREAM => 66,
      VT_STORAGE => 67,
      VT_STREAMED_OBJECT => 68,
      VT_STORED_OBJECT => 69,
      VT_BLOB_OBJECT => 70,
      VT_CF => 71,
      VT_CLSID => 72,
      VT_VERSIONED_STREAM => 73,
      VT_BSTR_BLOB => 4095,
      VT_VECTOR => 4096,
      VT_ARRAY => 8192,
      VT_BYREF => 16384,
      VT_RESERVED => 32768,
      VT_ILLEGAL => 65535
   );
   for VARENUM'Size use 32;

   type tagCLSCTX is (
      CLSCTX_PS_DLL,
      CLSCTX_INPROC_SERVER,
      CLSCTX_INPROC_HANDLER,
      CLSCTX_LOCAL_SERVER,
      CLSCTX_INPROC_SERVER16,
      CLSCTX_REMOTE_SERVER,
      CLSCTX_INPROC_HANDLER16,
      CLSCTX_RESERVED1,
      CLSCTX_RESERVED2,
      CLSCTX_RESERVED3,
      CLSCTX_RESERVED4,
      CLSCTX_NO_CODE_DOWNLOAD,
      CLSCTX_RESERVED5,
      CLSCTX_NO_CUSTOM_MARSHAL,
      CLSCTX_ENABLE_CODE_DOWNLOAD,
      CLSCTX_NO_FAILURE_LOG,
      CLSCTX_DISABLE_AAA,
      CLSCTX_ENABLE_AAA,
      CLSCTX_FROM_DEFAULT_CONTEXT,
      CLSCTX_ACTIVATE_X86_SERVER,
      CLSCTX_ACTIVATE_64_BIT_SERVER,
      CLSCTX_ENABLE_CLOAKING,
      CLSCTX_APPCONTAINER,
      CLSCTX_ACTIVATE_AAA_AS_IU,
      CLSCTX_RESERVED6,
      CLSCTX_ACTIVATE_ARM32_SERVER
   );
   for tagCLSCTX use (
      CLSCTX_PS_DLL => -2147483648,
      CLSCTX_INPROC_SERVER => 1,
      CLSCTX_INPROC_HANDLER => 2,
      CLSCTX_LOCAL_SERVER => 4,
      CLSCTX_INPROC_SERVER16 => 8,
      CLSCTX_REMOTE_SERVER => 16,
      CLSCTX_INPROC_HANDLER16 => 32,
      CLSCTX_RESERVED1 => 64,
      CLSCTX_RESERVED2 => 128,
      CLSCTX_RESERVED3 => 256,
      CLSCTX_RESERVED4 => 512,
      CLSCTX_NO_CODE_DOWNLOAD => 1024,
      CLSCTX_RESERVED5 => 2048,
      CLSCTX_NO_CUSTOM_MARSHAL => 4096,
      CLSCTX_ENABLE_CODE_DOWNLOAD => 8192,
      CLSCTX_NO_FAILURE_LOG => 16384,
      CLSCTX_DISABLE_AAA => 32768,
      CLSCTX_ENABLE_AAA => 65536,
      CLSCTX_FROM_DEFAULT_CONTEXT => 131072,
      CLSCTX_ACTIVATE_X86_SERVER => 262144,
      CLSCTX_ACTIVATE_64_BIT_SERVER => 524288,
      CLSCTX_ENABLE_CLOAKING => 1048576,
      CLSCTX_APPCONTAINER => 4194304,
      CLSCTX_ACTIVATE_AAA_AS_IU => 8388608,
      CLSCTX_RESERVED6 => 16777216,
      CLSCTX_ACTIVATE_ARM32_SERVER => 33554432
   );
   for tagCLSCTX'Size use 32;
   subtype CLSCTX is tagCLSCTX;

   -----------------------------------------------------------------------------
   type tagTYPEKIND is (
      TKIND_ENUM,
      TKIND_RECORD,
      TKIND_MODULE,
      TKIND_INTERFACE,
      TKIND_DISPATCH,
      TKIND_COCLASS,
      TKIND_ALIAS,
      TKIND_UNION,
      TKIND_MAX
   );
   for tagTYPEKIND use (
      TKIND_ENUM => 0,
      TKIND_RECORD => 1,
      TKIND_MODULE => 2,
      TKIND_INTERFACE => 3,
      TKIND_DISPATCH => 4,
      TKIND_COCLASS => 5,
      TKIND_ALIAS => 6,
      TKIND_UNION => 7,
      TKIND_MAX => 8
   );
   for tagTYPEKIND'Size use 32;
   subtype TYPEKIND is tagTYPEKIND;

   -----------------------------------------------------------------------------
   type tagCALLCONV is (
      CC_FASTCALL,
      CC_CDECL,
      CC_MSCPASCAL,
      CC_MACPASCAL,
      CC_STDCALL,
      CC_FPFASTCALL,
      CC_SYSCALL,
      CC_MPWCDECL,
      CC_MPWPASCAL,
      CC_MAX
   );
   for tagCALLCONV use (
      CC_FASTCALL => 0,
      CC_CDECL => 1,
      CC_MSCPASCAL => 2,
      CC_MACPASCAL => 3,
      CC_STDCALL => 4,
      CC_FPFASTCALL => 5,
      CC_SYSCALL => 6,
      CC_MPWCDECL => 7,
      CC_MPWPASCAL => 8,
      CC_MAX => 9
   );
   for tagCALLCONV'Size use 32;
   subtype CALLCONV is tagCALLCONV;

   -----------------------------------------------------------------------------
   type tagFUNCKIND is (
      FUNC_VIRTUAL,
      FUNC_PUREVIRTUAL,
      FUNC_NONVIRTUAL,
      FUNC_STATIC,
      FUNC_DISPATCH
   );
   for tagFUNCKIND use (
      FUNC_VIRTUAL => 0,
      FUNC_PUREVIRTUAL => 1,
      FUNC_NONVIRTUAL => 2,
      FUNC_STATIC => 3,
      FUNC_DISPATCH => 4
   );
   for tagFUNCKIND'Size use 32;
   subtype FUNCKIND is tagFUNCKIND;

   -----------------------------------------------------------------------------
   type tagINVOKEKIND is (
      INVOKE_FUNC,
      INVOKE_PROPERTYGET,
      INVOKE_PROPERTYPUT,
      INVOKE_PROPERTYPUTREF
   );
   for tagINVOKEKIND use (
      INVOKE_FUNC => 1,
      INVOKE_PROPERTYGET => 2,
      INVOKE_PROPERTYPUT => 4,
      INVOKE_PROPERTYPUTREF => 8
   );
   for tagINVOKEKIND'Size use 32;
   subtype INVOKEKIND is tagINVOKEKIND;

   -----------------------------------------------------------------------------
   type tagDESCKIND is (
      DESCKIND_NONE,
      DESCKIND_FUNCDESC,
      DESCKIND_VARDESC,
      DESCKIND_TYPECOMP,
      DESCKIND_IMPLICITAPPOBJ,
      DESCKIND_MAX
   );
   for tagDESCKIND use (
      DESCKIND_NONE => 0,
      DESCKIND_FUNCDESC => 1,
      DESCKIND_VARDESC => 2,
      DESCKIND_TYPECOMP => 3,
      DESCKIND_IMPLICITAPPOBJ => 4,
      DESCKIND_MAX => 5
   );
   for tagDESCKIND'Size use 32;
   subtype DESCKIND is tagDESCKIND;

   -----------------------------------------------------------------------------
   type tagVARKIND is (
      VAR_PERINSTANCE,
      VAR_STATIC,
      VAR_CONST,
      VAR_DISPATCH
   );
   for tagVARKIND use (
      VAR_PERINSTANCE => 0,
      VAR_STATIC => 1,
      VAR_CONST => 2,
      VAR_DISPATCH => 3
   );
   for tagVARKIND'Size use 32;
   subtype VARKIND is tagVARKIND;

   -----------------------------------------------------------------------------
   type tagSYSKIND is (
      SYS_WIN16,
      SYS_WIN32,
      SYS_MAC,
      SYS_WIN64
   );
   for tagSYSKIND use (
      SYS_WIN16 => 0,
      SYS_WIN32 => 1,
      SYS_MAC => 2,
      SYS_WIN64 => 3
   );
   for tagSYSKIND'Size use 32;
   subtype SYSKIND is tagSYSKIND;

   -----------------------------------------------------------------------------
   -- Structs
   -----------------------------------------------------------------------------

   type tagARRAYDESC;
   type tagTYPEDESC; -- Auto Generated Dependancy -- Fwd Declaration
   type tagVARIANT;
   type VARIANT;
   type LPVARIANT is access all VARIANT;
   type VARIANTARG;
   type tagPARAMDESCEX;

   type LPPARAMDESCEX is access all tagPARAMDESCEX;

   -----------------------------------------------------------------------------
    type Anonymous_Record_281 (Discriminant : Interfaces.C.unsigned := 0) is record -- Union
        case Discriminant is
            when 0 =>
            lptdesc : access tagTYPEDESC;
            when 1 =>
            lpadesc : access tagARRAYDESC;
            when others => 
            hreftype_x : HREFTYPE;
        end case;
    end record;
    pragma Convention (C_Pass_By_Copy,Anonymous_Record_281);
    pragma Unchecked_Union (Anonymous_Record_281);
    for Anonymous_Record_281'Size use 64;
    for Anonymous_Record_281'Alignment use 8;

   type tagTYPEDESC is record
      field_1 : Anonymous_Record_281;
      vt : VARTYPE;
   end record;
   pragma Convention (C_Pass_By_Copy,tagTYPEDESC);
   for tagTYPEDESC use record
      field_1 at 0 range 0..63;
      vt at 0 range 64..79;
   end record;
   for tagTYPEDESC'Size use 128;
   for tagTYPEDESC'Alignment use 8;
   subtype TYPEDESC is tagTYPEDESC;

   -----------------------------------------------------------------------------
   type tagSAFEARRAYBOUND is record
      cElements : ULONG;
      lLbound : LONG;
   end record;
   pragma Convention (C_Pass_By_Copy,tagSAFEARRAYBOUND);
   for tagSAFEARRAYBOUND use record
      cElements at 0 range 0..31;
      lLbound at 0 range 32..63;
   end record;
   for tagSAFEARRAYBOUND'Size use 64;
   for tagSAFEARRAYBOUND'Alignment use 4;
   subtype SAFEARRAYBOUND is tagSAFEARRAYBOUND;

   -----------------------------------------------------------------------------
   type tagARRAYDESC_rgbounds_Array is array(1..1) of SAFEARRAYBOUND; -- Auto Generated Dependancy

   type tagARRAYDESC is record
      tdescElem : TYPEDESC;
      cDims : USHORT;
      rgbounds : tagARRAYDESC_rgbounds_Array;
   end record;
   pragma Convention (C_Pass_By_Copy,tagARRAYDESC);
   for tagARRAYDESC use record
      tdescElem at 0 range 0..127;
      cDims at 0 range 128..143;
      rgbounds at 0 range 160..223;
   end record;
   for tagARRAYDESC'Size use 256;
   for tagARRAYDESC'Alignment use 8;
   subtype ARRAYDESC is tagARRAYDESC;

   -----------------------------------------------------------------------------
   type tagPARAMDESC is record
      pparamdescex : LPPARAMDESCEX;
      wParamFlags : USHORT;
   end record;
   pragma Convention (C_Pass_By_Copy,tagPARAMDESC);
   for tagPARAMDESC use record
      pparamdescex at 0 range 0..63;
      wParamFlags at 0 range 64..79;
   end record;
   for tagPARAMDESC'Size use 128;
   for tagPARAMDESC'Alignment use 8;
   subtype PARAMDESC is tagPARAMDESC;

   -----------------------------------------------------------------------------
   type tagIDLDESC is record
      dwReserved : ULONG_PTR;
      wIDLFlags : USHORT;
   end record;
   pragma Convention (C_Pass_By_Copy,tagIDLDESC);
   for tagIDLDESC use record
      dwReserved at 0 range 0..63;
      wIDLFlags at 0 range 64..79;
   end record;
   for tagIDLDESC'Size use 128;
   for tagIDLDESC'Alignment use 8;
   subtype IDLDESC is tagIDLDESC;

   -----------------------------------------------------------------------------
    type Anonymous_Record_282 (Discriminant : Interfaces.C.unsigned := 0) is record -- Union
        case Discriminant is
            when 0 =>
            idldesc_x : IDLDESC;
            when others => 
            paramdesc_x : PARAMDESC;
        end case;
    end record;
    pragma Convention (C_Pass_By_Copy,Anonymous_Record_282);
    pragma Unchecked_Union (Anonymous_Record_282);
    for Anonymous_Record_282'Size use 128;
    for Anonymous_Record_282'Alignment use 8;

   type tagELEMDESC is record
      tdesc : TYPEDESC;
      field_1 : Anonymous_Record_282;
   end record;
   pragma Convention (C_Pass_By_Copy,tagELEMDESC);
   for tagELEMDESC use record
      tdesc at 0 range 0..127;
      field_1 at 0 range 128..255;
   end record;
   for tagELEMDESC'Size use 256;
   for tagELEMDESC'Alignment use 8;
   subtype ELEMDESC is tagELEMDESC;

   -----------------------------------------------------------------------------
    type Anonymous_Record_283 (Discriminant : Interfaces.C.unsigned := 0) is record -- Union
        case Discriminant is
            when 0 =>
            oInst : ULONG;
            when others => 
            lpvarValue : access VARIANT;
        end case;
    end record;
    pragma Convention (C_Pass_By_Copy,Anonymous_Record_283);
    pragma Unchecked_Union (Anonymous_Record_283);
    for Anonymous_Record_283'Size use 64;
    for Anonymous_Record_283'Alignment use 8;

   type tagVARDESC is record
      memid : MEMBERID;
      lpstrSchema : LPOLESTR;
      field_1 : Anonymous_Record_283;
      elemdescVar : ELEMDESC;
      wVarFlags : WORD;
      varkind_x : VARKIND;
   end record;
   pragma Convention (C_Pass_By_Copy,tagVARDESC);
   for tagVARDESC use record
      memid at 0 range 0..31;
      lpstrSchema at 0 range 64..127;
      field_1 at 0 range 128..191;
      elemdescVar at 0 range 192..447;
      wVarFlags at 0 range 448..463;
      varkind_x at 0 range 480..511;
   end record;
   for tagVARDESC'Size use 512;
   for tagVARDESC'Alignment use 8;
   subtype VARDESC is tagVARDESC;
   type VARDESC_Ptr is access all VARDESC; -- Auto Generated Dependancy

   -----------------------------------------------------------------------------
   type tagFUNCDESC is record
      memid : MEMBERID;
      lprgscode : access SCODE;
      lprgelemdescParam : access ELEMDESC;
      funckind_x : FUNCKIND;
      invkind : INVOKEKIND;
      callconv_x : CALLCONV;
      cParams : SHORT;
      cParamsOpt : SHORT;
      oVft : SHORT;
      cScodes : SHORT;
      elemdescFunc : ELEMDESC;
      wFuncFlags : WORD;
   end record;
   pragma Convention (C_Pass_By_Copy,tagFUNCDESC);
   for tagFUNCDESC use record
      memid at 0 range 0..31;
      lprgscode at 0 range 64..127;
      lprgelemdescParam at 0 range 128..191;
      funckind_x at 0 range 192..223;
      invkind at 0 range 224..255;
      callconv_x at 0 range 256..287;
      cParams at 0 range 288..303;
      cParamsOpt at 0 range 304..319;
      oVft at 0 range 320..335;
      cScodes at 0 range 336..351;
      elemdescFunc at 0 range 384..639;
      wFuncFlags at 0 range 640..655;
   end record;
   for tagFUNCDESC'Size use 704;
   for tagFUNCDESC'Alignment use 8;
   subtype FUNCDESC is tagFUNCDESC;
   type FUNCDESC_Ptr is access all FUNCDESC; -- Auto Generated Dependancy

   -----------------------------------------------------------------------------
   type tagDISPPARAMS is record
      rgvarg : access VARIANTARG;
      rgdispidNamedArgs : access DISPID;
      cArgs : UINT;
      cNamedArgs : UINT;
   end record;
   pragma Convention (C_Pass_By_Copy,tagDISPPARAMS);
   for tagDISPPARAMS use record
      rgvarg at 0 range 0..63;
      rgdispidNamedArgs at 0 range 64..127;
      cArgs at 0 range 128..159;
      cNamedArgs at 0 range 160..191;
   end record;
   for tagDISPPARAMS'Size use 192;
   for tagDISPPARAMS'Alignment use 8;
   subtype DISPPARAMS is tagDISPPARAMS;

   -----------------------------------------------------------------------------
   type tagTYPEATTR is record
      guid_x : GUID;
      lcid_x : LCID;
      dwReserved : DWORD;
      memidConstructor : MEMBERID;
      memidDestructor : MEMBERID;
      lpstrSchema : LPOLESTR;
      cbSizeInstance : ULONG;
      typekind_x : TYPEKIND;
      cFuncs : WORD;
      cVars : WORD;
      cImplTypes : WORD;
      cbSizeVft : WORD;
      cbAlignment : WORD;
      wTypeFlags : WORD;
      wMajorVerNum : WORD;
      wMinorVerNum : WORD;
      tdescAlias : TYPEDESC;
      idldescType : IDLDESC;
   end record;
   pragma Convention (C_Pass_By_Copy,tagTYPEATTR);
   for tagTYPEATTR use record
      guid_x at 0 range 0..127;
      lcid_x at 0 range 128..159;
      dwReserved at 0 range 160..191;
      memidConstructor at 0 range 192..223;
      memidDestructor at 0 range 224..255;
      lpstrSchema at 0 range 256..319;
      cbSizeInstance at 0 range 320..351;
      typekind_x at 0 range 352..383;
      cFuncs at 0 range 384..399;
      cVars at 0 range 400..415;
      cImplTypes at 0 range 416..431;
      cbSizeVft at 0 range 432..447;
      cbAlignment at 0 range 448..463;
      wTypeFlags at 0 range 464..479;
      wMajorVerNum at 0 range 480..495;
      wMinorVerNum at 0 range 496..511;
      tdescAlias at 0 range 512..639;
      idldescType at 0 range 640..767;
   end record;
   for tagTYPEATTR'Size use 768;
   for tagTYPEATTR'Alignment use 8;
   subtype TYPEATTR is tagTYPEATTR;
   type TYPEATTR_Ptr is access all TYPEATTR; -- Auto Generated Dependancy

   -----------------------------------------------------------------------------
   type tagEXCEPINFO is record
      wCode : WORD;
      wReserved : WORD;
      bstrSource : BSTR;
      bstrDescription : BSTR;
      bstrHelpFile : BSTR;
      dwHelpContext : DWORD;
      pvReserved : PVOID;
      pfnDeferredFillIn : access System.Address;
      scode_x : SCODE;
   end record;
   pragma Convention (C_Pass_By_Copy,tagEXCEPINFO);
   for tagEXCEPINFO use record
      wCode at 0 range 0..15;
      wReserved at 0 range 16..31;
      bstrSource at 0 range 64..127;
      bstrDescription at 0 range 128..191;
      bstrHelpFile at 0 range 192..255;
      dwHelpContext at 0 range 256..287;
      pvReserved at 0 range 320..383;
      pfnDeferredFillIn at 0 range 384..447;
      scode_x at 0 range 448..479;
   end record;
   for tagEXCEPINFO'Size use 512;
   for tagEXCEPINFO'Alignment use 8;
   subtype EXCEPINFO is tagEXCEPINFO;

   -----------------------------------------------------------------------------
   type tagBINDPTR (Discriminant : Interfaces.C.unsigned := 0) is record -- Union
      case Discriminant is
         when 0 =>
            lpfuncdesc_x : access FUNCDESC;
         when 1 =>
            lpvardesc_x : access VARDESC;
         when others => 
            lptcomp : access ITypeComp'Class;
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy,tagBINDPTR);
   pragma Unchecked_Union (tagBINDPTR);
   for tagBINDPTR'Size use 64;
   for tagBINDPTR'Alignment use 8;
   subtype BINDPTR is tagBINDPTR;

   -----------------------------------------------------------------------------
   type tagTLIBATTR is record
      guid_x : GUID;
      lcid_x : LCID;
      syskind_x : SYSKIND;
      wMajorVerNum : WORD;
      wMinorVerNum : WORD;
      wLibFlags : WORD;
   end record;
   pragma Convention (C_Pass_By_Copy,tagTLIBATTR);
   for tagTLIBATTR use record
      guid_x at 0 range 0..127;
      lcid_x at 0 range 128..159;
      syskind_x at 0 range 160..191;
      wMajorVerNum at 0 range 192..207;
      wMinorVerNum at 0 range 208..223;
      wLibFlags at 0 range 224..239;
   end record;
   for tagTLIBATTR'Size use 256;
   for tagTLIBATTR'Alignment use 4;
   subtype TLIBATTR is tagTLIBATTR;
   type TLIBATTR_Ptr is access all TLIBATTR; -- Auto Generated Dependancy

   -----------------------------------------------------------------------------
   type tagSAFEARRAY_rgsabound_Array is array(1..1) of SAFEARRAYBOUND; -- Auto Generated Dependancy

   type tagSAFEARRAY is record
      cDims : USHORT;
      fFeatures : USHORT;
      cbElements : ULONG;
      cLocks : ULONG;
      pvData : PVOID;
      rgsabound : tagSAFEARRAY_rgsabound_Array;
   end record;
   pragma Convention (C_Pass_By_Copy,tagSAFEARRAY);
   for tagSAFEARRAY use record
      cDims at 0 range 0..15;
      fFeatures at 0 range 16..31;
      cbElements at 0 range 32..63;
      cLocks at 0 range 64..95;
      pvData at 0 range 128..191;
      rgsabound at 0 range 192..255;
   end record;
   for tagSAFEARRAY'Size use 256;
   for tagSAFEARRAY'Alignment use 8;
   subtype SAFEARRAY is tagSAFEARRAY;
   type LPSAFEARRAY is access all SAFEARRAY;

   -----------------------------------------------------------------------------
   type Anonymous_Record_270 is record
      scale : BYTE;
      sign : BYTE;
   end record;
   pragma Convention (C_Pass_By_Copy,Anonymous_Record_270);
   for Anonymous_Record_270 use record
      scale at 0 range 0..7;
      sign at 0 range 8..15;
   end record;
   for Anonymous_Record_270'Size use 16;
   for Anonymous_Record_270'Alignment use 1;
   type Anonymous_Record_269 (Discriminant : Interfaces.C.unsigned := 0) is record -- Union
      case Discriminant is
         when 0 =>
            field_1 : Anonymous_Record_270;
         when others => 
            signscale : USHORT;
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy,Anonymous_Record_269);
   pragma Unchecked_Union (Anonymous_Record_269);
   for Anonymous_Record_269'Size use 16;
   for Anonymous_Record_269'Alignment use 2;
   type Anonymous_Record_272 is record
      Lo32 : ULONG;
      Mid32 : ULONG;
   end record;
   pragma Convention (C_Pass_By_Copy,Anonymous_Record_272);
   for Anonymous_Record_272 use record
      Lo32 at 0 range 0..31;
      Mid32 at 0 range 32..63;
   end record;
   for Anonymous_Record_272'Size use 64;
   for Anonymous_Record_272'Alignment use 4;
   type Anonymous_Record_271 (Discriminant : Interfaces.C.unsigned := 0) is record -- Union
      case Discriminant is
         when 0 =>
            field_1 : Anonymous_Record_272;
         when others => 
            Lo64 : ULONGLONG;
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy,Anonymous_Record_271);
   pragma Unchecked_Union (Anonymous_Record_271);
   for Anonymous_Record_271'Size use 64;
   for Anonymous_Record_271'Alignment use 8;
   type tagDEC is record
      wReserved : USHORT;
      field_1 : Anonymous_Record_269;
      Hi32 : ULONG;
      field_2 : Anonymous_Record_271;
   end record;
   pragma Convention (C_Pass_By_Copy,tagDEC);
   for tagDEC use record
      wReserved at 0 range 0..15;
      field_1 at 0 range 16..31;
      Hi32 at 0 range 32..63;
      field_2 at 0 range 64..127;
   end record;
   for tagDEC'Size use 128;
   for tagDEC'Alignment use 8;
   subtype DECIMAL is tagDEC;

   -----------------------------------------------------------------------------
   type Anonymous_Record_268 is record
      Lo : ULONG;
      Hi : LONG;
   end record;
   pragma Convention (C_Pass_By_Copy,Anonymous_Record_268);
   for Anonymous_Record_268 use record
      Lo at 0 range 0..31;
      Hi at 0 range 32..63;
   end record;
   for Anonymous_Record_268'Size use 64;
   for Anonymous_Record_268'Alignment use 4;
   type tagCY (Discriminant : Interfaces.C.unsigned := 0) is record -- Union
      case Discriminant is
         when 0 =>
            field_1 : Anonymous_Record_268;
         when others => 
            int64_x : LONGLONG;
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy,tagCY);
   pragma Unchecked_Union (tagCY);
   for tagCY'Size use 64;
   for tagCY'Alignment use 8;
   subtype CY is tagCY;

   -----------------------------------------------------------------------------
   type Anonymous_Record_279 is record
      pvRecord : PVOID;
      pRecInfo : access IRecordInfo'Class;
   end record;
   pragma Convention (C_Pass_By_Copy,Anonymous_Record_279);
   for Anonymous_Record_279 use record
      pvRecord at 0 range 0..63;
      pRecInfo at 0 range 64..127;
   end record;
   for Anonymous_Record_279'Size use 128;
   for Anonymous_Record_279'Alignment use 8;
   type Anonymous_Record_278 (Discriminant : Interfaces.C.unsigned := 0) is record -- Union
      case Discriminant is
         when 0 =>
            llVal : LONGLONG;
         when 1 =>
            lVal : LONG;
         when 2 =>
            bVal : BYTE;
         when 3 =>
            iVal : SHORT;
         when 4 =>
            fltVal : FLOAT;
         when 5 =>
            dblVal : DOUBLE;
         when 6 =>
            boolVal : VARIANT_BOOL;
         when 7 =>
            scode_x : SCODE;
         when 8 =>
            cyVal : CY;
         when 9 =>
            date_x : DATE;
         when 10 =>
            bstrVal : BSTR;
         when 11 =>
            punkVal : access IUnknown'Class;
         when 12 =>
            pdispVal : access IDispatch'Class;
         when 13 =>
            parray : access SAFEARRAY;
         when 14 =>
            pbVal : access BYTE;
         when 15 =>
            piVal : access SHORT;
         when 16 =>
            plVal : access LONG;
         when 17 =>
            pllVal : access LONGLONG;
         when 18 =>
            pfltVal : access FLOAT;
         when 19 =>
            pdblVal : access DOUBLE;
         when 20 =>
            pboolVal : access VARIANT_BOOL;
         when 21 =>
            pscode_x : access SCODE;
         when 22 =>
            pcyVal : access CY;
         when 23 =>
            pdate : access DATE;
         when 24 =>
            pbstrVal : access BSTR;
         when 25 =>
            ppunkVal : access IUnknown_Ptr;
         when 26 =>
            ppdispVal : access IDispatch_Ptr;
         when 27 =>
            pparray : access LPSAFEARRAY;
         when 28 =>
            pvarVal : access VARIANT;
         when 29 =>
            byref : PVOID;
         when 30 =>
            cVal : CHAR;
         when 31 =>
            uiVal : USHORT;
         when 32 =>
            ulVal : ULONG;
         when 33 =>
            ullVal : ULONGLONG;
         when 34 =>
            intVal : INT;
         when 35 =>
            uintVal : UINT;
         when 36 =>
            pdecVal : access DECIMAL;
         when 37 =>
            pcVal : access CHAR;
         when 38 =>
            puiVal : access USHORT;
         when 39 =>
            pulVal : access ULONG;
         when 40 =>
            pullVal : access ULONGLONG;
         when 41 =>
            pintVal : access INT;
         when 42 =>
            puintVal : access UINT;
         when others => 
            field_1 : Anonymous_Record_279;
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy,Anonymous_Record_278);
   pragma Unchecked_Union (Anonymous_Record_278);
   for Anonymous_Record_278'Size use 128;
   for Anonymous_Record_278'Alignment use 8;
   type Anonymous_Record_277 is record
      vt : VARTYPE;
      wReserved1 : WORD;
      wReserved2 : WORD;
      wReserved3 : WORD;
      field_1 : Anonymous_Record_278;
   end record;
   pragma Convention (C_Pass_By_Copy,Anonymous_Record_277);
   for Anonymous_Record_277 use record
      vt at 0 range 0..15;
      wReserved1 at 0 range 16..31;
      wReserved2 at 0 range 32..47;
      wReserved3 at 0 range 48..63;
      field_1 at 0 range 64..191;
   end record;
   for Anonymous_Record_277'Size use 192;
   for Anonymous_Record_277'Alignment use 8;
   type Anonymous_Record_276 (Discriminant : Interfaces.C.unsigned := 0) is record -- Union
      case Discriminant is
         when 0 =>
            field_1 : Anonymous_Record_277;
         when others => 
            decVal : DECIMAL;
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy,Anonymous_Record_276);
   pragma Unchecked_Union (Anonymous_Record_276);
   for Anonymous_Record_276'Size use 192;
   for Anonymous_Record_276'Alignment use 8;
   type tagVARIANT is record
      field_1 : Anonymous_Record_276;
   end record;
   pragma Convention (C_Pass_By_Copy,tagVARIANT);
   for tagVARIANT use record
      field_1 at 0 range 0..191;
   end record;
   for tagVARIANT'Size use 192;
   for tagVARIANT'Alignment use 8;

   -----------------------------------------------------------------------------
   -- Check This

   type VARIANT is new tagVARIANT;
   type VARIANTARG is new tagVARIANT;

   -----------------------------------------------------------------------------
   type tagPARAMDESCEX is record
      cBytes : ULONG;
      varDefaultValue : VARIANTARG;
   end record;
   pragma Convention (C_Pass_By_Copy,tagPARAMDESCEX);
   for tagPARAMDESCEX use record
      cBytes at 0 range 0..31;
      varDefaultValue at 0 range 64..255;
   end record;
   for tagPARAMDESCEX'Size use 256;
   for tagPARAMDESCEX'Alignment use 8;
   subtype PARAMDESCEX is tagPARAMDESCEX;

   -----------------------------------------------------------------------------
   -- Interfaces
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   type IUnknown is limited interface;

      function QueryInterface(
         This : access IUnknown;
         riid : access constant IID;
         ppvObject : access LPVOID
      ) return HRESULT is abstract;
      function AddRef(This : access IUnknown) return ULONG is abstract;
      function Release(This : access IUnknown) return ULONG is abstract;

   type LPUNKNOWN is access all IUnknown;

   -----------------------------------------------------------------------------
   type IDispatch is limited interface and IUnknown;

      function GetTypeInfoCount(
         This : access IDispatch;
         pctinfo : access UINT
      ) return HRESULT is abstract;
      function GetTypeInfo(
         This : access IDispatch;
         iTInfo : UINT;
         lcid_x : LCID;
         ppTInfo : access ITypeInfo_Ptr
      ) return HRESULT is abstract;
      function GetIDsOfNames(
         This : access IDispatch;
         riid : access constant IID;
         rgszNames : access LPOLESTR;
         cNames : UINT;
         lcid_x : LCID;
         rgDispId : access DISPID
      ) return HRESULT is abstract;
      function Invoke(
         This : access IDispatch;
         dispIdMember : DISPID;
         riid : access constant IID;
         lcid_x : LCID;
         wFlags : WORD;
         pDispParams : access DISPPARAMS;
         pVarResult : access VARIANT;
         pExcepInfo : access EXCEPINFO;
         puArgErr : access UINT
      ) return HRESULT is abstract;

   -----------------------------------------------------------------------------
   type ITypeInfo is limited interface and IUnknown;
      function GetTypeAttr(
         This : access ITypeInfo;
         ppTypeAttr : access TYPEATTR_Ptr
      ) return HRESULT is abstract;
      function GetTypeComp(
         This : access ITypeInfo;
         ppTComp : access ITypeComp_Ptr
      ) return HRESULT is abstract;
      function GetFuncDesc(
         This : access ITypeInfo;
         index : UINT;
         ppFuncDesc : access FUNCDESC_Ptr
      ) return HRESULT is abstract;
      function GetVarDesc(
         This : access ITypeInfo;
         index : UINT;
         ppVarDesc : access VARDESC_Ptr
      ) return HRESULT is abstract;
      function GetNames(
         This : access ITypeInfo;
         memid : MEMBERID;
         rgBstrNames : access BSTR;
         cMaxNames : UINT;
         pcNames : access UINT
      ) return HRESULT is abstract;
      function GetRefTypeOfImplType(
         This : access ITypeInfo;
         index : UINT;
         pRefType : access HREFTYPE
      ) return HRESULT is abstract;
      function GetImplTypeFlags(
         This : access ITypeInfo;
         index : UINT;
         pImplTypeFlags : access INT
      ) return HRESULT is abstract;
      function GetIDsOfNames(
         This : access ITypeInfo;
         rgszNames : access LPOLESTR;
         cNames : UINT;
         pMemId : access MEMBERID
      ) return HRESULT is abstract;
      function Invoke(
         This : access ITypeInfo;
         pvInstance : PVOID;
         memid : MEMBERID;
         wFlags : WORD;
         pDispParams : access DISPPARAMS;
         pVarResult : access VARIANT;
         pExcepInfo : access EXCEPINFO;
         puArgErr : access UINT
      ) return HRESULT is abstract;
      function GetDocumentation(
         This : access ITypeInfo;
         memid : MEMBERID;
         pBstrName : access BSTR;
         pBstrDocString : access BSTR;
         pdwHelpContext : access DWORD;
         pBstrHelpFile : access BSTR
      ) return HRESULT is abstract;
      function GetDllEntry(
         This : access ITypeInfo;
         memid : MEMBERID;
         invKind : INVOKEKIND;
         pBstrDllName : access BSTR;
         pBstrName : access BSTR;
         pwOrdinal : access WORD
      ) return HRESULT is abstract;
      function GetRefTypeInfo(
         This : access ITypeInfo;
         hRefType_x : HREFTYPE;
         ppTInfo : access ITypeInfo_Ptr
      ) return HRESULT is abstract;
      function AddressOfMember(
         This : access ITypeInfo;
         memid : MEMBERID;
         invKind : INVOKEKIND;
         ppv : access PVOID
      ) return HRESULT is abstract;
      function CreateInstance(
         This : access ITypeInfo;
         pUnkOuter : access IUnknown'Class;
         riid : access constant IID;
         ppvObj : access PVOID
      ) return HRESULT is abstract;
      function GetMops(
         This : access ITypeInfo;
         memid : MEMBERID;
         pBstrMops : access BSTR
      ) return HRESULT is abstract;
      function GetContainingTypeLib(
         This : access ITypeInfo;
         ppTLib : access ITypeLib_Ptr;
         pIndex : access UINT
      ) return HRESULT is abstract;
      procedure ReleaseTypeAttr(
         This : access ITypeInfo;
         pTypeAttr : access TYPEATTR
      ) is abstract;
      procedure ReleaseFuncDesc(
         This : access ITypeInfo;
         pFuncDesc : access FUNCDESC
      ) is abstract;
      procedure ReleaseVarDesc(
         This : access ITypeInfo;
         pVarDesc : access VARDESC
      ) is abstract;

   -----------------------------------------------------------------------------
   type ITypeComp is limited interface and IUnknown;
      function Bind_x(
         This : access ITypeComp;
         szName : LPOLESTR;
         lHashVal : ULONG;
         wFlags : WORD;
         ppTInfo : access ITypeInfo_Ptr;
         pDescKind : access DESCKIND;
         pBindPtr : access BINDPTR
      ) return HRESULT is abstract;
      function BindType(
         This : access ITypeComp;
         szName : LPOLESTR;
         lHashVal : ULONG;
         ppTInfo : access ITypeInfo_Ptr;
         ppTComp : access ITypeComp_Ptr
      ) return HRESULT is abstract;

   -----------------------------------------------------------------------------
   type ITypeLib is limited interface and IUnknown;
      function GetTypeInfoCount(This : access ITypeLib) return UINT is abstract;
      function GetTypeInfo(
         This : access ITypeLib;
         index : UINT;
         ppTInfo : access ITypeInfo_Ptr
      ) return HRESULT is abstract;
      function GetTypeInfoType(
         This : access ITypeLib;
         index : UINT;
         pTKind : access TYPEKIND
      ) return HRESULT is abstract;
      function GetTypeInfoOfGuid(
         This : access ITypeLib;
         guid_x : access constant GUID;
         ppTinfo : access ITypeInfo_Ptr
      ) return HRESULT is abstract;
      function GetLibAttr(
         This : access ITypeLib;
         ppTLibAttr : access TLIBATTR_Ptr
      ) return HRESULT is abstract;
      function GetTypeComp(
         This : access ITypeLib;
         ppTComp : access ITypeComp_Ptr
      ) return HRESULT is abstract;
      function GetDocumentation(
         This : access ITypeLib;
         index : INT;
         pBstrName : access BSTR;
         pBstrDocString : access BSTR;
         pdwHelpContext : access DWORD;
         pBstrHelpFile : access BSTR
      ) return HRESULT is abstract;
      function IsName(
         This : access ITypeLib;
         szNameBuf : LPOLESTR;
         lHashVal : ULONG;
         pfName : access BOOL
      ) return HRESULT is abstract;
      function FindName(
         This : access ITypeLib;
         szNameBuf : LPOLESTR;
         lHashVal : ULONG;
         ppTInfo : access ITypeInfo_Ptr;
         rgMemId : access MEMBERID;
         pcFound : access USHORT
      ) return HRESULT is abstract;
      procedure ReleaseTLibAttr(
         This : access ITypeLib;
         pTLibAttr : access TLIBATTR
      ) is abstract;

   -----------------------------------------------------------------------------
   type IRecordInfo is limited interface and IUnknown;
      function RecordInit(
         This : access IRecordInfo;
         pvNew : PVOID
      ) return HRESULT is abstract;
      function RecordClear(
         This : access IRecordInfo;
         pvExisting : PVOID
      ) return HRESULT is abstract;
      function RecordCopy(
         This : access IRecordInfo;
         pvExisting : PVOID;
         pvNew : PVOID
      ) return HRESULT is abstract;
      function GetGuid(
         This : access IRecordInfo;
         pguid : access GUID
      ) return HRESULT is abstract;
      function GetName(
         This : access IRecordInfo;
         pbstrName : access BSTR
      ) return HRESULT is abstract;
      function GetSize(
         This : access IRecordInfo;
         pcbSize : access ULONG
      ) return HRESULT is abstract;
      function GetTypeInfo(
         This : access IRecordInfo;
         ppTypeInfo : access ITypeInfo_Ptr
      ) return HRESULT is abstract;
      function GetField(
         This : access IRecordInfo;
         pvData : PVOID;
         szFieldName : LPCOLESTR;
         pvarField : access VARIANT
      ) return HRESULT is abstract;
      function GetFieldNoCopy(
         This : access IRecordInfo;
         pvData : PVOID;
         szFieldName : LPCOLESTR;
         pvarField : access VARIANT;
         ppvDataCArray : access PVOID
      ) return HRESULT is abstract;
      function PutField(
         This : access IRecordInfo;
         wFlags : ULONG;
         pvData : PVOID;
         szFieldName : LPCOLESTR;
         pvarField : access VARIANT
      ) return HRESULT is abstract;
      function PutFieldNoCopy(
         This : access IRecordInfo;
         wFlags : ULONG;
         pvData : PVOID;
         szFieldName : LPCOLESTR;
         pvarField : access VARIANT
      ) return HRESULT is abstract;
      function GetFieldNames(
         This : access IRecordInfo;
         pcNames : access ULONG;
         rgBstrNames : access BSTR
      ) return HRESULT is abstract;
      function IsMatchingType(
         This : access IRecordInfo;
         pRecordInfo : access IRecordInfo'Class
      ) return BOOL is abstract;
      procedure RecordCreate(This : access IRecordInfo) is abstract;
      function RecordCreateCopy(
         This : access IRecordInfo;
         pvSource : PVOID;
         ppvDest : access PVOID
      ) return HRESULT is abstract;
      function RecordDestroy(
         This : access IRecordInfo;
         pvRecord : PVOID
      ) return HRESULT is abstract;
   
   -----------------------------------------------------------------------------
   type ICLRRuntimeInfo is limited interface and IUnknown;
      function GetVersionString(
         This : access ICLRRuntimeInfo;
         pwzBuffer : LPWSTR;
         pcchBuffer : access DWORD
      ) return HRESULT is abstract;
      function GetRuntimeDirectory(
         This : access ICLRRuntimeInfo;
         pwzBuffer : LPWSTR;
         pcchBuffer : access DWORD
      ) return HRESULT is abstract;
      function IsLoaded(
         This : access ICLRRuntimeInfo;
         hndProcess : HANDLE;
         pbLoaded : access BOOL
      ) return HRESULT is abstract;
      function LoadErrorString(
         This : access ICLRRuntimeInfo;
         iResourceID : UINT;
         pwzBuffer : LPWSTR;
         pcchBuffer : access DWORD;
         iLocaleID : LONG
      ) return HRESULT is abstract;
      function LoadLibraryA_x(
         This : access ICLRRuntimeInfo;
         pwzDllName : LPCWSTR;
         phndModule : access HMODULE
      ) return HRESULT is abstract;
      function GetProcAddress_x(
         This : access ICLRRuntimeInfo;
         pszProcName : LPCSTR;
         ppProc : access LPVOID
      ) return HRESULT is abstract;
      function GetInterface(
         This : access ICLRRuntimeInfo;
         rclsid : access constant IID;
         riid : access constant IID;
         ppUnk : access LPVOID
      ) return HRESULT is abstract;
      function IsLoadable(
         This : access ICLRRuntimeInfo;
         pbLoadable : access BOOL
      ) return HRESULT is abstract;
      function SetDefaultStartupFlags(
         This : access ICLRRuntimeInfo;
         dwStartupFlags : DWORD;
         pwzHostConfigFile : LPCWSTR
      ) return HRESULT is abstract;
      function GetDefaultStartupFlags(
         This : access ICLRRuntimeInfo;
         pdwStartupFlags : access DWORD;
         pwzHostConfigFile : LPWSTR;
         pcchHostConfigFile : access DWORD
      ) return HRESULT is abstract;
      function BindAsLegacyV2Runtime(This : access ICLRRuntimeInfo) return HRESULT is abstract;
      function IsStarted(
         This : access ICLRRuntimeInfo;
         pbStarted : access BOOL;
         pdwStartupFlags : access DWORD
      ) return HRESULT is abstract;

   type ICLRRuntimeInfo_Ptr is access all ICLRRuntimeInfo'Class;

   -----------------------------------------------------------------------------
   type IEnumUnknown;
   type IEnumUnknown_Ptr is access all IEnumUnknown; -- Auto Generated Dependancy
   type IEnumUnknown is limited interface and IUnknown;
      function Next(
         This : access IEnumUnknown;
         celt : ULONG;
         rgelt : access IUnknown_Ptr;
         pceltFetched : access ULONG
      ) return HRESULT is abstract;
      function Skip(
         This : access IEnumUnknown;
         celt : ULONG
      ) return HRESULT is abstract;
      function Reset(This : access IEnumUnknown) return HRESULT is abstract;
      function Clone(
         This : access IEnumUnknown;
         ppenum : access IEnumUnknown_Ptr
      ) return HRESULT is abstract;

   -----------------------------------------------------------------------------
   type CallbackThreadSetFnPtr is access function  return HRESULT; -- HRESULT ()
   pragma Convention(C,CallbackThreadSetFnPtr);

   type CallbackThreadUnsetFnPtr is access function  return HRESULT; -- HRESULT ()
   pragma Convention(C,CallbackThreadUnsetFnPtr);

   type RuntimeLoadedCallbackFnPtr is access procedure (p1 : access ICLRRuntimeInfo ; p2 : CallbackThreadSetFnPtr ; p3 : CallbackThreadUnsetFnPtr); -- void (ICLRRuntimeInfo *, CallbackThreadSetFnPtr, CallbackThreadUnsetFnPtr)
   pragma Convention(C,RuntimeLoadedCallbackFnPtr);

   type ICLRMetaHost is limited interface and IUnknown;
      function GetRuntime(
         This : access ICLRMetaHost;
         pwzVersion : LPCWSTR;
         riid : access constant IID;
         ppRuntime : access LPVOID
      ) return HRESULT is abstract;
      function GetVersionFromFile(
         This : access ICLRMetaHost;
         pwzFilePath : LPCWSTR;
         pwzBuffer : LPWSTR;
         pcchBuffer : access DWORD
      ) return HRESULT is abstract;
      function EnumerateInstalledRuntimes(
         This : access ICLRMetaHost;
         ppEnumerator : access IEnumUnknown_Ptr
      ) return HRESULT is abstract;
      function EnumerateLoadedRuntimes(
         This : access ICLRMetaHost;
         hndProcess : HANDLE;
         ppEnumerator : access IEnumUnknown_Ptr
      ) return HRESULT is abstract;
      function RequestRuntimeLoadedNotification(
         This : access ICLRMetaHost;
         pCallbackFunction : RuntimeLoadedCallbackFnPtr
      ) return HRESULT is abstract;
      function QueryLegacyV2RuntimeBinding(
         This : access ICLRMetaHost;
         riid : access constant IID;
         ppUnk : access LPVOID
      ) return HRESULT is abstract;
      function ExitProcess_x(
         This : access ICLRMetaHost;
         iExitCode : INT32
      ) return HRESULT is abstract;

   type ICLRMetaHost_Ptr is access all ICLRMetaHost'Class;

   -----------------------------------------------------------------------------
   type IHostControl is limited interface and IUnknown;
      function GetHostManager(
         This : access IHostControl;
         riid : access constant IID;
         ppObject : access LPVOID
      ) return HRESULT is abstract;
      function SetAppDomainManager(
         This : access IHostControl;
         dwAppDomainID : DWORD;
         pUnkAppDomainManager : access IUnknown'Class
      ) return HRESULT is abstract;

   type IHostControl_Ptr is access all IHostControl'Class;

   -----------------------------------------------------------------------------
   type ICLRControl is limited interface and IUnknown;
      function GetCLRManager(
         This : access ICLRControl;
         riid : access constant IID;
         ppObject : access LPVOID
      ) return HRESULT is abstract;
      function SetAppDomainManagerType(
         This : access ICLRControl;
         pwzAppDomainManagerAssembly : LPCWSTR;
         pwzAppDomainManagerType : LPCWSTR
      ) return HRESULT is abstract;

   type ICLRControl_Ptr is access all ICLRControl'Class;

   -----------------------------------------------------------------------------
   type FExecuteInAppDomainCallback is access function (p1 : access void) return HRESULT; -- HRESULT (void *)

   type ICLRRuntimeHost is limited interface and IUnknown;
      function Start(This : access ICLRRuntimeHost) return HRESULT is abstract;
      function Stop(This : access ICLRRuntimeHost) return HRESULT is abstract;
      function SetHostControl(
         This : access ICLRRuntimeHost;
         pHostControl : access IHostControl'Class
      ) return HRESULT is abstract;
      function GetCLRControl(
         This : access ICLRRuntimeHost;
         pCLRControl : access ICLRControl_Ptr
      ) return HRESULT is abstract;
      function UnloadAppDomain(
         This : access ICLRRuntimeHost;
         dwAppDomainId : DWORD;
         fWaitUntilDone : BOOL
      ) return HRESULT is abstract;
      function ExecuteInAppDomain(
         This : access ICLRRuntimeHost;
         dwAppDomainId : DWORD;
         pCallback : FExecuteInAppDomainCallback;
         cookie : access Void
      ) return HRESULT is abstract;
      function GetCurrentAppDomainId(
         This : access ICLRRuntimeHost;
         pdwAppDomainId : access DWORD
      ) return HRESULT is abstract;
      function ExecuteApplication(
         This : access ICLRRuntimeHost;
         pwzAppFullName : LPCWSTR;
         dwManifestPaths : DWORD;
         ppwzManifestPaths : access LPCWSTR;
         dwActivationData : DWORD;
         ppwzActivationData : access LPCWSTR;
         pReturnValue : access Interfaces.C.Int
      ) return HRESULT is abstract;
      function ExecuteInDefaultAppDomain(
         This : access ICLRRuntimeHost;
         pwzAssemblyPath : LPCWSTR;
         pwzTypeName : LPCWSTR;
         pwzMethodName : LPCWSTR;
         pwzArgument : LPCWSTR;
         pReturnValue : access DWORD
      ) return HRESULT is abstract;

   type ICLRRuntimeHost_Ptr is access all ICLRRuntimeHost'Class;

   -----------------------------------------------------------------------------
   type IGCThreadControl is limited interface and IUnknown;
      function ThreadIsBlockingForSuspension(This : access IGCThreadControl) return HRESULT is abstract;
      function SuspensionStarting(This : access IGCThreadControl) return HRESULT is abstract;
      function SuspensionEnding(
         This : access IGCThreadControl;
         Generation : DWORD
      ) return HRESULT is abstract;

   type IGCThreadControl_Ptr is access all IGCThreadControl'Class;

   -----------------------------------------------------------------------------
   type IGCHostControl is limited interface and IUnknown;
      function RequestVirtualMemLimit(
         This : access IGCHostControl;
         sztMaxVirtualMemMB : SIZE_T;
         psztNewMaxVirtualMemMB : access SIZE_T
      ) return HRESULT is abstract;

   type IGCHostControl_Ptr is access all IGCHostControl'Class;

   -----------------------------------------------------------------------------
   type IDebuggerThreadControl is limited interface and IUnknown;
      function ThreadIsBlockingForDebugger(This : access IDebuggerThreadControl) return HRESULT is abstract;
      function ReleaseAllRuntimeThreads(This : access IDebuggerThreadControl) return HRESULT is abstract;
      function StartBlockingForDebugger(
         This : access IDebuggerThreadControl;
         dwUnused : DWORD
      ) return HRESULT is abstract;
   type IDebuggerThreadControl_Ptr is access all IDebuggerThreadControl'Class;

   -----------------------------------------------------------------------------
   type ICorConfiguration is limited interface and IUnknown;
      function SetGCThreadControl(
         This : access ICorConfiguration;
         pGCThreadControl : access IGCThreadControl'Class
      ) return HRESULT is abstract;
      function SetGCHostControl(
         This : access ICorConfiguration;
         pGCHostControl : access IGCHostControl'Class
      ) return HRESULT is abstract;
      function SetDebuggerThreadControl(
         This : access ICorConfiguration;
         pDebuggerThreadControl : access IDebuggerThreadControl'Class
      ) return HRESULT is abstract;
      function AddDebuggerSpecialThread(
         This : access ICorConfiguration;
         dwSpecialThreadId : DWORD
      ) return HRESULT is abstract;

   type ICorConfiguration_Ptr is access all ICorConfiguration'Class;

   -----------------------------------------------------------------------------
   type ICorRuntimeHost is limited interface and IUnknown;
      function CreateLogicalThreadState(This : access ICorRuntimeHost) return HRESULT is abstract;
      function DeleteLogicalThreadState(This : access ICorRuntimeHost) return HRESULT is abstract;
      function SwitchInLogicalThreadState(
         This : access ICorRuntimeHost;
         pFiberCookie : access DWORD
      ) return HRESULT is abstract;
      function SwitchOutLogicalThreadState(
         This : access ICorRuntimeHost;
         pFiberCookie : access PDWORD
      ) return HRESULT is abstract;
      function LocksHeldByLogicalThread(
         This : access ICorRuntimeHost;
         pCount : access DWORD
      ) return HRESULT is abstract;
      function MapFile(
         This : access ICorRuntimeHost;
         hFile_x : HANDLE;
         hMapAddress : access HMODULE
      ) return HRESULT is abstract;
      function GetConfiguration(
         This : access ICorRuntimeHost;
         pConfiguration : access ICorConfiguration_Ptr
      ) return HRESULT is abstract;
      function Start(This : access ICorRuntimeHost) return HRESULT is abstract;
      function Stop(This : access ICorRuntimeHost) return HRESULT is abstract;
      function CreateDomain(
         This : access ICorRuntimeHost;
         pwzFriendlyName : LPCWSTR;
         pIdentityArray : access IUnknown'Class;
         pAppDomain : access IUnknown_Ptr
      ) return HRESULT is abstract;
      function GetDefaultDomain(
         This : access ICorRuntimeHost;
         pAppDomain : access IUnknown_Ptr
      ) return HRESULT is abstract;
      function EnumDomains(
         This : access ICorRuntimeHost;
         hEnum : access HDOMAINENUM
      ) return HRESULT is abstract;
      function NextDomain(
         This : access ICorRuntimeHost;
         hEnum : HDOMAINENUM;
         pAppDomain : access IUnknown_Ptr
      ) return HRESULT is abstract;
      function CloseEnum(
         This : access ICorRuntimeHost;
         hEnum : HDOMAINENUM
      ) return HRESULT is abstract;
      function CreateDomainEx(
         This : access ICorRuntimeHost;
         pwzFriendlyName : LPCWSTR;
         pSetup : access IUnknown'Class;
         pEvidence : access IUnknown'Class;
         pAppDomain : access IUnknown_Ptr
      ) return HRESULT is abstract;
      function CreateDomainSetup(
         This : access ICorRuntimeHost;
         pAppDomainSetup : access IUnknown_Ptr
      ) return HRESULT is abstract;
      function CreateEvidence(
         This : access ICorRuntimeHost;
         pEvidence : access IUnknown_Ptr
      ) return HRESULT is abstract;
      function UnloadDomain(
         This : access ICorRuntimeHost;
         pAppDomain : access IUnknown'Class
      ) return HRESULT is abstract;
      function CurrentDomain(
         This : access ICorRuntimeHost;
         pAppDomain : access IUnknown_Ptr
      ) return HRESULT is abstract;

   type ICorRuntimeHost_Ptr is access all ICorRuntimeHost'Class;

-----------------------------------------------------------------------------
   -- Imports
   -----------------------------------------------------------------------------

   -----------------------------------------------------------------------------
   procedure VariantInit(
      pvarg : access VARIANT
   );
   pragma import (Cpp,VariantInit,"VariantInit");

   -----------------------------------------------------------------------------
   function CoCreateInstance(
      rclsid : access constant IID;
      pUnkOuter : LPUNKNOWN;
      dwClsContext : DWORD;
      riid : access constant IID;
      ppv : access LPVOID
   ) return HRESULT;
   pragma import (Cpp,CoCreateInstance,"CoCreateInstance");

   function CLRCreateInstance(
      clsid_x : access constant IID;
      riid : access constant IID;
      ppInterface : access LPVOID
   ) return HRESULT;
   pragma import (Cpp,CLRCreateInstance,"CLRCreateInstance");

   function CoInitializeEx(
      pvReserved : LPVOID;
      dwCoInit : DWORD
   ) return HRESULT;
   pragma import (Cpp,CoInitializeEx,"CoInitializeEx");

   procedure CoUninitialize;
   pragma import (Cpp,CoUninitialize,"CoUninitialize");

   function SysAllocString(
      psz_x : access constant OLECHAR
   ) return BSTR;
   pragma import (Cpp,SysAllocString,"SysAllocString");

   function SysReAllocString(
      pbstr : access BSTR;
      psz_x : access constant OLECHAR
   ) return INT;
   pragma import (Cpp,SysReAllocString,"SysReAllocString");

   function SysAllocStringLen(
      strIn : access constant OLECHAR;
      ui : UINT
   ) return BSTR;
   pragma import (Cpp,SysAllocStringLen,"SysAllocStringLen");

   function SysReAllocStringLen(
      pbstr : access BSTR;
      psz_x : access constant OLECHAR;
      len : Interfaces.C.unsigned
   ) return INT;
   pragma import (Cpp,SysReAllocStringLen,"SysReAllocStringLen");

   function SysAddRefString(
      bstrString : BSTR
   ) return HRESULT;
   pragma import (Cpp,SysAddRefString,"SysAddRefString");

   procedure SysReleaseString(
      bstrString : BSTR
   );
   pragma import (Cpp,SysReleaseString,"SysReleaseString");

   procedure SysFreeString(
      bstrString : BSTR
   );
   pragma import (Cpp,SysFreeString,"SysFreeString");

   function SysStringLen(
      pbstr : BSTR
   ) return UINT;
   pragma import (Cpp,SysStringLen,"SysStringLen");

   function StringFromCLSID(
      rclsid : access constant IID;
      lplpsz : access LPOLESTR
   ) return HRESULT;
   pragma import (Cpp,StringFromCLSID,"StringFromCLSID");

   function CLSIDFromString(
      lpsz : LPCOLESTR;
      pclsid : LPCLSID
   ) return HRESULT;
   pragma import (Cpp,CLSIDFromString,"CLSIDFromString");

   function StringFromIID(
      rclsid : access constant IID;
      lplpsz : access LPOLESTR
   ) return HRESULT;
   pragma import (Cpp,StringFromIID,"StringFromIID");

   function IIDFromString(
      lpsz : LPCOLESTR;
      lpiid_x : LPIID
   ) return HRESULT;
   pragma import (Cpp,IIDFromString,"IIDFromString");

   function ProgIDFromCLSID(
      clsid_x : access constant IID;
      lplpszProgID : access LPOLESTR
   ) return HRESULT;
   pragma import (Cpp,ProgIDFromCLSID,"ProgIDFromCLSID");

   function CLSIDFromProgID(
      lpszProgID : LPCOLESTR;
      lpclsid_x : LPCLSID
   ) return HRESULT;
   pragma import (Cpp,CLSIDFromProgID,"CLSIDFromProgID");

   function VarBstrCat(
      bstrLeft : BSTR;
      bstrRight : BSTR;
      pbstrResult : LPBSTR
   ) return HRESULT;
   pragma import (Cpp,VarBstrCat,"VarBstrCat");

   function VarBstrCmp(
      bstrLeft : BSTR;
      bstrRight : BSTR;
      lcid_x : LCID;
      dwFlags : ULONG
   ) return HRESULT;
   pragma import (Cpp,VarBstrCmp,"VarBstrCmp");

   function SafeArrayAllocDescriptor(
      cDims : UINT;
      ppsaOut : access LPSAFEARRAY
   ) return HRESULT;
   pragma import (Cpp,SafeArrayAllocDescriptor,"SafeArrayAllocDescriptor");

   function SafeArrayAllocDescriptorEx(
      vt : VARTYPE;
      cDims : UINT;
      ppsaOut : access LPSAFEARRAY
   ) return HRESULT;
   pragma import (Cpp,SafeArrayAllocDescriptorEx,"SafeArrayAllocDescriptorEx");

   function SafeArrayAllocData(
      psa : access SAFEARRAY
   ) return HRESULT;
   pragma import (Cpp,SafeArrayAllocData,"SafeArrayAllocData");

   function SafeArrayCreate(
      vt : VARTYPE;
      cDims : UINT;
      rgsabound : access SAFEARRAYBOUND
   ) return access SAFEARRAY;
   pragma import (Cpp,SafeArrayCreate,"SafeArrayCreate");

   function SafeArrayCreateEx(
      vt : VARTYPE;
      cDims : UINT;
      rgsabound : access SAFEARRAYBOUND;
      pvExtra : PVOID
   ) return access SAFEARRAY;
   pragma import (Cpp,SafeArrayCreateEx,"SafeArrayCreateEx");

   function SafeArrayCopyData(
      psaSource : access SAFEARRAY;
      psaTarget : access SAFEARRAY
   ) return HRESULT;
   pragma import (Cpp,SafeArrayCopyData,"SafeArrayCopyData");

   procedure SafeArrayReleaseDescriptor(
      psa : access SAFEARRAY
   );
   pragma import (Cpp,SafeArrayReleaseDescriptor,"SafeArrayReleaseDescriptor");

   function SafeArrayDestroyDescriptor(
      psa : access SAFEARRAY
   ) return HRESULT;
   pragma import (Cpp,SafeArrayDestroyDescriptor,"SafeArrayDestroyDescriptor");

   procedure SafeArrayReleaseData(
      pData : PVOID
   );
   pragma import (Cpp,SafeArrayReleaseData,"SafeArrayReleaseData");

   function SafeArrayDestroyData(
      psa : access SAFEARRAY
   ) return HRESULT;
   pragma import (Cpp,SafeArrayDestroyData,"SafeArrayDestroyData");

   function SafeArrayAddRef(
      psa : access SAFEARRAY;
      ppDataToRelease : access PVOID
   ) return HRESULT;
   pragma import (Cpp,SafeArrayAddRef,"SafeArrayAddRef");

   function SafeArrayDestroy(
      psa : access SAFEARRAY
   ) return HRESULT;
   pragma import (Cpp,SafeArrayDestroy,"SafeArrayDestroy");

   function SafeArrayRedim(
      psa : access SAFEARRAY;
      psaboundNew : access SAFEARRAYBOUND
   ) return HRESULT;
   pragma import (Cpp,SafeArrayRedim,"SafeArrayRedim");

   function SafeArrayGetDim(
      psa : access SAFEARRAY
   ) return UINT;
   pragma import (Cpp,SafeArrayGetDim,"SafeArrayGetDim");

   function SafeArrayGetElemsize(
      psa : access SAFEARRAY
   ) return UINT;
   pragma import (Cpp,SafeArrayGetElemsize,"SafeArrayGetElemsize");

   function SafeArrayGetUBound(
      psa : access SAFEARRAY;
      nDim : UINT;
      plUbound : access LONG
   ) return HRESULT;
   pragma import (Cpp,SafeArrayGetUBound,"SafeArrayGetUBound");

   function SafeArrayGetLBound(
      psa : access SAFEARRAY;
      nDim : UINT;
      plLbound : access LONG
   ) return HRESULT;
   pragma import (Cpp,SafeArrayGetLBound,"SafeArrayGetLBound");

   function SafeArrayLock(
      psa : access SAFEARRAY
   ) return HRESULT;
   pragma import (Cpp,SafeArrayLock,"SafeArrayLock");

   function SafeArrayUnlock(
      psa : access SAFEARRAY
   ) return HRESULT;
   pragma import (Cpp,SafeArrayUnlock,"SafeArrayUnlock");

   function SafeArrayAccessData(
      psa : access SAFEARRAY;
      ppvData : access LPVOID
   ) return HRESULT;
   pragma import (Cpp,SafeArrayAccessData,"SafeArrayAccessData");

   function SafeArrayUnaccessData(
      psa : access SAFEARRAY
   ) return HRESULT;
   pragma import (Cpp,SafeArrayUnaccessData,"SafeArrayUnaccessData");

   function SafeArrayGetElement(
      psa : access SAFEARRAY;
      rgIndices : access LONG;
      pv : access Void
   ) return HRESULT;
   pragma import (Cpp,SafeArrayGetElement,"SafeArrayGetElement");

   function SafeArrayPutElement(
      psa : access SAFEARRAY;
      rgIndices : access LONG;
      pv : access Void
   ) return HRESULT;
   pragma import (Cpp,SafeArrayPutElement,"SafeArrayPutElement");

   function SafeArrayCopy(
      psa : access SAFEARRAY;
      ppsaOut : access LPSAFEARRAY
   ) return HRESULT;
   pragma import (Cpp,SafeArrayCopy,"SafeArrayCopy");

   function SafeArrayPtrOfIndex(
      psa : access SAFEARRAY;
      rgIndices : access LONG;
      ppvData : access LPVOID
   ) return HRESULT;
   pragma import (Cpp,SafeArrayPtrOfIndex,"SafeArrayPtrOfIndex");

   function SafeArraySetRecordInfo(
      psa : access SAFEARRAY;
      prinfo : access IRecordInfo'Class
   ) return HRESULT;
   pragma import (Cpp,SafeArraySetRecordInfo,"SafeArraySetRecordInfo");

   function SafeArrayGetRecordInfo(
      psa : access SAFEARRAY;
      prinfo : access IRecordInfo_Ptr
   ) return HRESULT;
   pragma import (Cpp,SafeArrayGetRecordInfo,"SafeArrayGetRecordInfo");

   function SafeArraySetIID(
      psa : access SAFEARRAY;
      guid_x : access constant GUID
   ) return HRESULT;
   pragma import (Cpp,SafeArraySetIID,"SafeArraySetIID");

   function SafeArrayGetIID(
      psa : access SAFEARRAY;
      pguid : access GUID
   ) return HRESULT;
   pragma import (Cpp,SafeArrayGetIID,"SafeArrayGetIID");

   function SafeArrayGetVartype(
      psa : access SAFEARRAY;
      pvt : access VARTYPE
   ) return HRESULT;
   pragma import (Cpp,SafeArrayGetVartype,"SafeArrayGetVartype");

   function SafeArrayCreateVector(
      vt : VARTYPE;
      lLbound : LONG;
      cElements : ULONG
   ) return access SAFEARRAY;
   pragma import (Cpp,SafeArrayCreateVector,"SafeArrayCreateVector");

   function SafeArrayCreateVectorEx(
      vt : VARTYPE;
      lLbound : LONG;
      cElements : ULONG;
      pvExtra : PVOID
   ) return access SAFEARRAY;
   pragma import (Cpp,SafeArrayCreateVectorEx,"SafeArrayCreateVectorEx");

   -----------------------------------------------------------------------------
   type TypeAttributes is (
      NotPublic,
      Public,
      NestedPublic,
      NestedPrivate,
      NestedFamily,
      NestedAssembly,
      NestedFamANDAssem,
      NestedFamORAssem,
      SequentialLayout,
      ExplicitLayout,
      LayoutMask,
      ClassSemanticsMask,
      Abstract_x,
      Sealed,
      SpecialName,
      RTSpecialName,
      Import,
      Serializable,
      WindowsRuntime,
      UnicodeClass,
      AutoClass,
      StringFormatMask,
      HasSecurity,
      ReservedMask,
      BeforeFieldInit,
      CustomFormatMask
   );
   
   for TypeAttributes use (
      NotPublic => 0,
      Public => 1,
      NestedPublic => 2,
      NestedPrivate => 3,
      NestedFamily => 4,
      NestedAssembly => 5,
      NestedFamANDAssem => 6,
      NestedFamORAssem => 7,
      SequentialLayout => 8,
      ExplicitLayout => 16,
      LayoutMask => 24,
      ClassSemanticsMask => 32,
      Abstract_x => 128,
      Sealed => 256,
      SpecialName => 1024,
      RTSpecialName => 2048,
      Import => 4096,
      Serializable => 8192,
      WindowsRuntime => 16384,
      UnicodeClass => 65536,
      AutoClass => 131072,
      StringFormatMask => 196608,
      HasSecurity => 262144,
      ReservedMask => 264192,
      BeforeFieldInit => 1048576,
      CustomFormatMask => 12582912
   );
   
   for TypeAttributes'Size use 32;
   type TypeAttributes_Ptr is access TypeAttributes;

   -----------------------------------------------------------------------------
   type CallingConventions is (
      Standard_x,
      VarArgs,
      Any,
      HasThis,
      ExplicitThis
   );
   
   for CallingConventions use (
      Standard_x => 1,
      VarArgs => 2,
      Any => 3,
      HasThis => 32,
      ExplicitThis => 64
   );
   
   for CallingConventions'Size use 32;
   type CallingConventions_Ptr is access CallingConventions;
   
   -----------------------------------------------------------------------------
   type BindingFlags is (
      Default,
      IgnoreCase,
      DeclaredOnly,
      Instance,
      Static,
      Public,
      NonPublic,
      FlattenHierarchy,
      InvokeMethod,
      CreateInstance,
      GetField,
      SetField,
      GetProperty,
      SetProperty,
      PutDispProperty,
      PutRefDispProperty,
      ExactBinding,
      SuppressChangeType,
      OptionalParamBinding,
      IgnoreReturn
   );
   
   for BindingFlags use (
      Default => 0,
      IgnoreCase => 1,
      DeclaredOnly => 2,
      Instance => 4,
      Static => 8,
      Public => 16,
      NonPublic => 32,
      FlattenHierarchy => 64,
      InvokeMethod => 256,
      CreateInstance => 512,
      GetField => 1024,
      SetField => 2048,
      GetProperty => 4096,
      SetProperty => 8192,
      PutDispProperty => 16384,
      PutRefDispProperty => 32768,
      ExactBinding => 65536,
      SuppressChangeType => 131072,
      OptionalParamBinding => 262144,
      IgnoreReturn => 16777216
   );
   
   for BindingFlags'Size use 32;
   type BindingFlags_Ptr is access BindingFlags;

   -----------------------------------------------------------------------------
   type AssemblyBuilderAccess is (
      Run,
      Save,
      RunAndSave,
      ReflectionOnly,
      RunAndCollect
   );
   
   for AssemblyBuilderAccess use (
      Run => 1,
      Save => 2,
      RunAndSave => 3,
      ReflectionOnly => 6,
      RunAndCollect => 9
   );
   
   for AssemblyBuilderAccess'Size use 32;   
   type AssemblyBuilderAccess_Ptr is access AssemblyBuilderAccess;

   -----------------------------------------------------------------------------
   type MemberTypes is (
      Constructor,
      Event,
      Field,
      Method,
      Property,
      TypeInfo,
      Custom,
      NestedType,
      All_x
   );
   
   for MemberTypes use (
      Constructor => 1,
      Event => 2,
      Field => 4,
      Method => 8,
      Property => 16,
      TypeInfo => 32,
      Custom => 64,
      NestedType => 128,
      All_x => 191
   );
   
   for MemberTypes'Size use 32;
   type MemberTypes_Ptr is access MemberTypes;

   -----------------------------------------------------------------------------
   type PrincipalPolicy is (
      UnauthenticatedPrincipal,
      NoPrincipal,
      WindowsPrincipal
   );
   
   for PrincipalPolicy use (
      UnauthenticatedPrincipal => 0,
      NoPrincipal => 1,
      WindowsPrincipal => 2
   );
   
   for PrincipalPolicy'Size use 32;
   type PrincipalPolicy_Ptr is access PrincipalPolicy;
   
   -----------------------------------------------------------------------------
   type MethodAttributes is (
      ReuseSlot,
      Private_x,
      FamANDAssem,
      Assembly,
      Family,
      FamORAssem,
      Public,
      MemberAccessMask,
      UnmanagedExport,
      Static,
      Final,
      Virtual,
      HideBySig,
      NewSlot,
      CheckAccessOnOverride,
      Abstract_x,
      SpecialName,
      RTSpecialName,
      PinvokeImpl,
      HasSecurity,
      RequireSecObject,
      ReservedMask
   );
   
   for MethodAttributes use (
      ReuseSlot => 0,
      Private_x => 1,
      FamANDAssem => 2,
      Assembly => 3,
      Family => 4,
      FamORAssem => 5,
      Public => 6,
      MemberAccessMask => 7,
      UnmanagedExport => 8,
      Static => 16,
      Final => 32,
      Virtual => 64,
      HideBySig => 128,
      NewSlot => 256,
      CheckAccessOnOverride => 512,
      Abstract_x => 1024,
      SpecialName => 2048,
      RTSpecialName => 4096,
      PinvokeImpl => 8192,
      HasSecurity => 16384,
      RequireSecObject => 32768,
      ReservedMask => 53248
   );
   
   for MethodAttributes'Size use 32;
   type MethodAttributes_Ptr is access MethodAttributes;

   -----------------------------------------------------------------------------
   type MethodImplAttributes is (
      Managed,
      Native,
      OPTIL,
      Runtime_x,
      Unmanaged,
      NoInlining,
      ForwardRef,
      Synchronized_x,
      NoOptimization,
      PreserveSig,
      AggressiveInlining,
      InternalCall,
      MaxMethodImplVal
   );
   
   for MethodImplAttributes use (
      Managed => 0,
      Native => 1,
      OPTIL => 2,
      Runtime_x => 3,
      Unmanaged => 4,
      NoInlining => 8,
      ForwardRef => 16,
      Synchronized_x => 32,
      NoOptimization => 64,
      PreserveSig => 128,
      AggressiveInlining => 256,
      InternalCall => 4096,
      MaxMethodImplVal => 65535
   );
   
   for MethodImplAttributes'Size use 32;   
   type MethodImplAttributes_Ptr is access MethodImplAttributes;

   -----------------------------------------------------------------------------
   type FieldAttributes is (
      PrivateScope,
      Private_x,
      FamANDAssem,
      Assembly,
      Family,
      FamORAssem,
      Public,
      FieldAccessMask,
      Static,
      InitOnly,
      Literal,
      NotSerialized,
      HasFieldRVA,
      SpecialName,
      RTSpecialName,
      HasFieldMarshal,
      PinvokeImpl,
      HasDefault,
      ReservedMask
   );
   
   for FieldAttributes use (
      PrivateScope => 0,
      Private_x => 1,
      FamANDAssem => 2,
      Assembly => 3,
      Family => 4,
      FamORAssem => 5,
      Public => 6,
      FieldAccessMask => 7,
      Static => 16,
      InitOnly => 32,
      Literal => 64,
      NotSerialized => 128,
      HasFieldRVA => 256,
      SpecialName => 512,
      RTSpecialName => 1024,
      HasFieldMarshal => 4096,
      PinvokeImpl => 8192,
      HasDefault => 32768,
      ReservedMask => 38144
   );
   
   for FieldAttributes'Size use 32;
   type FieldAttributes_Ptr is access FieldAttributes;
   
   -----------------------------------------------------------------------------
   type PropertyAttributes is (
      None,
      SpecialName,
      RTSpecialName,
      HasDefault,
      Reserved2,
      Reserved3,
      Reserved4,
      ReservedMask
   );
   
   for PropertyAttributes use (
      None => 0,
      SpecialName => 512,
      RTSpecialName => 1024,
      HasDefault => 4096,
      Reserved2 => 8192,
      Reserved3 => 16384,
      Reserved4 => 32768,
      ReservedMask => 62464
   );
   
   for PropertyAttributes'Size use 32;   
   type PropertyAttributes_Ptr is access PropertyAttributes;

   -----------------------------------------------------------------------------
   type EventAttributes is (
      None,
      SpecialName,
      ReservedMask
   );
   
   for EventAttributes use (
      None => 0,
      SpecialName => 512,
      ReservedMask => 1024
   );
   
   for EventAttributes'Size use 32;   
   type EventAttributes_Ptr is access EventAttributes;
   
   -----------------------------------------------------------------------------
    -- ValueTypes (check)

    type RuntimeTypeHandle is null record;
    type RuntimeMethodHandle is null record;
    type RuntimeFieldHandle is null record;
    type InterfaceMapping is null record;
    type StreamingContext is null record;

   -----------------------------------------------------------------------------
   -- Forward delarations

    type IType;
    type IType_Ptr is access all IType'Class;

    type IBinder;
    type IBinder_Ptr is access all IBinder'Class;
    
    type IMethodBase;
    type IMethodBase_Ptr is access all IMethodBase'Class;

    type IMethodInfo;
    type IMethodInfo_Ptr is access all IMethodInfo'Class;

    type IAssembly;
    type IAssembly_Ptr is access all IAssembly'Class;

    type IModule; 
    type IModule_Ptr is access all IModule'Class;

   -----------------------------------------------------------------------------
    type IEventHandler is interface and IDispatch;
    type IEventHandler_Ptr is access all IEventHandler'Class;

   -----------------------------------------------------------------------------
    type IEvidence is interface and IDispatch;
    type IEvidence_Ptr is access all IEvidence'Class;

   -----------------------------------------------------------------------------
    type IAssemblyLoadEventHandler is interface and IDispatch;
    type IAssemblyLoadEventHandler_Ptr is access all IAssemblyLoadEventHandler'Class;

   -----------------------------------------------------------------------------
    type IResolveEventHandler is interface and IDispatch;
    type IResolveEventHandler_Ptr is access all IResolveEventHandler'Class;

   -----------------------------------------------------------------------------
    type IUnhandledExceptionEventHandler is interface and IDispatch;
    type IUnhandledExceptionEventHandler_Ptr is access all IUnhandledExceptionEventHandler'Class;

   -----------------------------------------------------------------------------
    type IAssemblyName is interface and IDispatch;
    type IAssemblyName_Ptr is access all IAssemblyName'Class;

   -----------------------------------------------------------------------------
    type IAssemblyBuilder is interface and IDispatch;
    type IAssemblyBuilder_Ptr is access all IAssemblyBuilder'Class;

   -----------------------------------------------------------------------------
    type IPermissionSet is interface and IDispatch;
    type IPermissionSet_Ptr is access all IPermissionSet'Class;

   -----------------------------------------------------------------------------
    type IObjRef is interface and IDispatch;
    type IObjRef_Ptr is access all IObjRef'Class;

   -----------------------------------------------------------------------------
    type IPolicyLevel is interface and IDispatch;
    type IPolicyLevel_Ptr is access all IPolicyLevel'Class;

   -----------------------------------------------------------------------------
    type ICultureInfo is interface and IDispatch;
    type ICultureInfo_Ptr is access all ICultureInfo'Class;

   -----------------------------------------------------------------------------
    type IMemberFilter is interface and IDispatch;
    type IMemberFilter_Ptr is access all IMemberFilter'Class;

   -----------------------------------------------------------------------------
    type ITypeFilter is interface and IDispatch;
    type ITypeFilter_Ptr is access all ITypeFilter'Class;

   -----------------------------------------------------------------------------
    type ICrossAppDomainDelegate is interface and IDispatch;
    type ICrossAppDomainDelegate_Ptr is access all ICrossAppDomainDelegate'Class;

   -----------------------------------------------------------------------------
    type ISerializationInfo is interface and IDispatch;
    type ISerializationInfo_Ptr is access all ISerializationInfo'Class;

   -----------------------------------------------------------------------------
    type IVersion is interface and IDispatch;
    type IVersion_Ptr is access all IVersion'Class;

   -----------------------------------------------------------------------------
    type IModuleResolveEventHandler is interface and IDispatch;
    type IModuleResolveEventHandler_Ptr is access all IModuleResolveEventHandler'Class;

   -----------------------------------------------------------------------------
    type IManifestResourceInfo is interface and IDispatch;
    type IManifestResourceInfo_Ptr is access all IManifestResourceInfo'Class;

   -----------------------------------------------------------------------------
    type IStream is interface and IDispatch;
    type IStream_Ptr is access all IStream'Class;

   -----------------------------------------------------------------------------
    type IFileStream is interface and IDispatch;
    type IFileStream_Ptr is access all IFileStream'Class;

   -----------------------------------------------------------------------------
   type IAssembly is interface and IDispatch;

      function get_ToString(
         This : access IAssembly;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function Equals(
         This : access IAssembly;
         other : VARIANT;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetHashCode(
         This : access IAssembly;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetType(
         This : access IAssembly;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_CodeBase(
         This : access IAssembly;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_EscapedCodeBase(
         This : access IAssembly;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function GetName(
         This : access IAssembly;
         pRetVal : access IAssemblyName_Ptr
      ) return HRESULT is abstract;
      function GetName_2(
         This : access IAssembly;
         copiedName : VARIANT_BOOL;
         pRetVal : access IAssemblyName_Ptr
      ) return HRESULT is abstract;
      function get_FullName(
         This : access IAssembly;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_EntryPoint(
         This : access IAssembly;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function GetType_2(
         This : access IAssembly;
         name : BSTR;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetType_3(
         This : access IAssembly;
         name : BSTR;
         throwOnError : VARIANT_BOOL;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetExportedTypes(
         This : access IAssembly;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetTypes(
         This : access IAssembly;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetManifestResourceStream(
         This : access IAssembly;
         type_x : access IType'Class;
         name : BSTR;
         pRetVal : access IStream_Ptr
      ) return HRESULT is abstract;
      function GetManifestResourceStream_2(
         This : access IAssembly;
         name : BSTR;
         pRetVal : access IStream_Ptr
      ) return HRESULT is abstract;
      function GetFile(
         This : access IAssembly;
         name : BSTR;
         pRetVal : access IFileStream_Ptr
      ) return HRESULT is abstract;
      function GetFiles(
         This : access IAssembly;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetFiles_2(
         This : access IAssembly;
         getResourceModules : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetManifestResourceNames(
         This : access IAssembly;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetManifestResourceInfo(
         This : access IAssembly;
         resourceName : BSTR;
         pRetVal : access IManifestResourceInfo_Ptr
      ) return HRESULT is abstract;
      function get_Location(
         This : access IAssembly;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_Evidence(
         This : access IAssembly;
         pRetVal : access IEvidence_Ptr
      ) return HRESULT is abstract;
      function GetCustomAttributes(
         This : access IAssembly;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetCustomAttributes_2(
         This : access IAssembly;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function IsDefined(
         This : access IAssembly;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetObjectData(
         This : access IAssembly;
         info : access ISerializationInfo'Class;
         Context_x : StreamingContext
      ) return HRESULT is abstract;
      function add_ModuleResolve(
         This : access IAssembly;
         value : access IModuleResolveEventHandler'Class
      ) return HRESULT is abstract;
      function remove_ModuleResolve(
         This : access IAssembly;
         value : access IModuleResolveEventHandler'Class
      ) return HRESULT is abstract;
      function GetType_4(
         This : access IAssembly;
         name : BSTR;
         throwOnError : VARIANT_BOOL;
         ignoreCase : VARIANT_BOOL;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetSatelliteAssembly(
         This : access IAssembly;
         culture : access ICultureInfo'Class;
         pRetVal : access IAssembly_Ptr
      ) return HRESULT is abstract;
      function GetSatelliteAssembly_2(
         This : access IAssembly;
         culture : access ICultureInfo'Class;
         Version : access IVersion'Class;
         pRetVal : access IAssembly_Ptr
      ) return HRESULT is abstract;
      function LoadModule_x(
         This : access IAssembly;
         moduleName : BSTR;
         rawModule : access SAFEARRAY;
         pRetVal : access IModule_Ptr
      ) return HRESULT is abstract;
      function LoadModule_2(
         This : access IAssembly;
         moduleName : BSTR;
         rawModule : access SAFEARRAY;
         rawSymbolStore : access SAFEARRAY;
         pRetVal : access IModule_Ptr
      ) return HRESULT is abstract;
      function CreateInstance(
         This : access IAssembly;
         typeName : BSTR;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function CreateInstance_2(
         This : access IAssembly;
         typeName : BSTR;
         ignoreCase : VARIANT_BOOL;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function CreateInstance_3(
         This : access IAssembly;
         typeName : BSTR;
         ignoreCase : VARIANT_BOOL;
         bindingAttr : BindingFlags;
         Binder : access IBinder'Class;
         args : access SAFEARRAY;
         culture : access ICultureInfo'Class;
         activationAttributes : access SAFEARRAY;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function GetLoadedModules(
         This : access IAssembly;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetLoadedModules_2(
         This : access IAssembly;
         getResourceModules : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetModules(
         This : access IAssembly;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetModules_2(
         This : access IAssembly;
         getResourceModules : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetModule(
         This : access IAssembly;
         name : BSTR;
         pRetVal : access IModule_Ptr
      ) return HRESULT is abstract;
      function GetReferencedAssemblies(
         This : access IAssembly;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function get_GlobalAssemblyCache(
         This : access IAssembly;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;

   -----------------------------------------------------------------------------
   type IModule is interface and IUnknown;

      function GetTypeInfoCount(
         This : access IModule;
         pcTInfo : access Interfaces.C.unsigned_long
      ) return HRESULT is abstract;
      function GetTypeInfo(
         This : access IModule;
         iTInfo : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         ppTInfo : Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetIDsOfNames(
         This : access IModule;
         riid : access GUID;
         rgszNames : Interfaces.C.Long;
         cNames : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         rgDispId : Interfaces.C.Long
      ) return HRESULT is abstract;
      function Invoke(
         This : access IModule;
         dispIdMember : Interfaces.C.unsigned_long;
         riid : access GUID;
         lcid_x : Interfaces.C.unsigned_long;
         wFlags : Interfaces.C.Short;
         pDispParams : Interfaces.C.Long;
         pVarResult : Interfaces.C.Long;
         pExcepInfo : Interfaces.C.Long;
         puArgErr : Interfaces.C.Long
      ) return HRESULT is abstract;

   -----------------------------------------------------------------------------
   type IConstructorInfo is interface and IUnknown;

      function GetTypeInfoCount(
         This : access IConstructorInfo;
         pcTInfo : access Interfaces.C.unsigned_long
      ) return HRESULT is abstract;
      function GetTypeInfo(
         This : access IConstructorInfo;
         iTInfo : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         ppTInfo : Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetIDsOfNames(
         This : access IConstructorInfo;
         riid : access GUID;
         rgszNames : Interfaces.C.Long;
         cNames : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         rgDispId : Interfaces.C.Long
      ) return HRESULT is abstract;
      function Invoke(
         This : access IConstructorInfo;
         dispIdMember : Interfaces.C.unsigned_long;
         riid : access GUID;
         lcid_x : Interfaces.C.unsigned_long;
         wFlags : Interfaces.C.Short;
         pDispParams : Interfaces.C.Long;
         pVarResult : Interfaces.C.Long;
         pExcepInfo : Interfaces.C.Long;
         puArgErr : Interfaces.C.Long
      ) return HRESULT is abstract;
      function get_ToString(
         This : access IConstructorInfo;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function Equals(
         This : access IConstructorInfo;
         other : VARIANT;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetHashCode(
         This : access IConstructorInfo;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetType(
         This : access IConstructorInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_MemberType(
         This : access IConstructorInfo;
         pRetVal : access MemberTypes
      ) return HRESULT is abstract;
      function get_name(
         This : access IConstructorInfo;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_DeclaringType(
         This : access IConstructorInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_ReflectedType(
         This : access IConstructorInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetCustomAttributes(
         This : access IConstructorInfo;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetCustomAttributes_2(
         This : access IConstructorInfo;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function IsDefined(
         This : access IConstructorInfo;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetParameters(
         This : access IConstructorInfo;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetMethodImplementationFlags(
         This : access IConstructorInfo;
         pRetVal : access MethodImplAttributes
      ) return HRESULT is abstract;
      function get_MethodHandle(
         This : access IConstructorInfo;
         pRetVal : access RuntimeMethodHandle
      ) return HRESULT is abstract;
      function get_Attributes(
         This : access IConstructorInfo;
         pRetVal : access MethodAttributes
      ) return HRESULT is abstract;
      function get_CallingConvention(
         This : access IConstructorInfo;
         pRetVal : access CallingConventions
      ) return HRESULT is abstract;
      function Invoke_2(
         This : access IConstructorInfo;
         obj : VARIANT;
         invokeAttr : BindingFlags;
         Binder : access IBinder'Class;
         parameters : access SAFEARRAY;
         culture : access ICultureInfo'Class;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function get_IsPublic(
         This : access IConstructorInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsPrivate(
         This : access IConstructorInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsFamily(
         This : access IConstructorInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsAssembly(
         This : access IConstructorInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsFamilyAndAssembly(
         This : access IConstructorInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsFamilyOrAssembly(
         This : access IConstructorInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsStatic(
         This : access IConstructorInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsFinal(
         This : access IConstructorInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsVirtual(
         This : access IConstructorInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsHideBySig(
         This : access IConstructorInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsAbstract(
         This : access IConstructorInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsSpecialName(
         This : access IConstructorInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsConstructor(
         This : access IConstructorInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function Invoke_3(
         This : access IConstructorInfo;
         obj : VARIANT;
         parameters : access SAFEARRAY;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function Invoke_4(
         This : access IConstructorInfo;
         invokeAttr : BindingFlags;
         Binder : access IBinder'Class;
         parameters : access SAFEARRAY;
         culture : access ICultureInfo'Class;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function Invoke_5(
         This : access IConstructorInfo;
         parameters : access SAFEARRAY;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;

   type IConstructorInfo_Ptr is access all IConstructorInfo'Class;

   -----------------------------------------------------------------------------
   type IDelegate is interface and IDispatch;
      function get_ToString(
         This : access IDelegate;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function Equals(
         This : access IDelegate;
         obj : VARIANT;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetHashCode(
         This : access IDelegate;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetType(
         This : access IDelegate;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetInvocationList(
         This : access IDelegate;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function Clone(
         This : access IDelegate;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function GetObjectData(
         This : access IDelegate;
         info : access ISerializationInfo'Class;
         Context_x : StreamingContext
      ) return HRESULT is abstract;
      function DynamicInvoke(
         This : access IDelegate;
         args : access SAFEARRAY;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function get_Method(
         This : access IDelegate;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function get_Target(
         This : access IDelegate;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;

   type IDelegate_Ptr is access all IDelegate'Class;

   -----------------------------------------------------------------------------
   type IEventInfo is interface and IUnknown;

      function GetTypeInfoCount(
         This : access IEventInfo;
         pcTInfo : access Interfaces.C.unsigned_long
      ) return HRESULT is abstract;
      function GetTypeInfo(
         This : access IEventInfo;
         iTInfo : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         ppTInfo : Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetIDsOfNames(
         This : access IEventInfo;
         riid : access GUID;
         rgszNames : Interfaces.C.Long;
         cNames : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         rgDispId : Interfaces.C.Long
      ) return HRESULT is abstract;
      function Invoke(
         This : access IEventInfo;
         dispIdMember : Interfaces.C.unsigned_long;
         riid : access GUID;
         lcid_x : Interfaces.C.unsigned_long;
         wFlags : Interfaces.C.Short;
         pDispParams : Interfaces.C.Long;
         pVarResult : Interfaces.C.Long;
         pExcepInfo : Interfaces.C.Long;
         puArgErr : Interfaces.C.Long
      ) return HRESULT is abstract;
      function get_ToString(
         This : access IEventInfo;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function Equals(
         This : access IEventInfo;
         other : VARIANT;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetHashCode(
         This : access IEventInfo;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetType(
         This : access IEventInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_MemberType(
         This : access IEventInfo;
         pRetVal : access MemberTypes
      ) return HRESULT is abstract;
      function get_name(
         This : access IEventInfo;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_DeclaringType(
         This : access IEventInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_ReflectedType(
         This : access IEventInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetCustomAttributes(
         This : access IEventInfo;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetCustomAttributes_2(
         This : access IEventInfo;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function IsDefined(
         This : access IEventInfo;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetAddMethod(
         This : access IEventInfo;
         nonPublic : VARIANT_BOOL;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function GetRemoveMethod(
         This : access IEventInfo;
         nonPublic : VARIANT_BOOL;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function GetRaiseMethod(
         This : access IEventInfo;
         nonPublic : VARIANT_BOOL;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function get_Attributes(
         This : access IEventInfo;
         pRetVal : access EventAttributes
      ) return HRESULT is abstract;
      function GetAddMethod_2(
         This : access IEventInfo;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function GetRemoveMethod_2(
         This : access IEventInfo;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function GetRaiseMethod_2(
         This : access IEventInfo;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function AddEventHandler(
         This : access IEventInfo;
         Target : VARIANT;
         handler : access IDelegate'Class
      ) return HRESULT is abstract;
      function RemoveEventHandler(
         This : access IEventInfo;
         Target : VARIANT;
         handler : access IDelegate'Class
      ) return HRESULT is abstract;
      function get_EventHandlerType(
         This : access IEventInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_IsSpecialName(
         This : access IEventInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsMulticast(
         This : access IEventInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;

    type IEventInfo_Ptr is access all IEventInfo'Class;

   -----------------------------------------------------------------------------
   type ICustomAttributeProvider is interface and IDispatch;

      function GetCustomAttributes(
         This : access ICustomAttributeProvider;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetCustomAttributes_2(
         This : access ICustomAttributeProvider;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function IsDefined(
         This : access ICustomAttributeProvider;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;

   type ICustomAttributeProvider_Ptr is access all ICustomAttributeProvider'Class;

   -----------------------------------------------------------------------------
   type IMethodInfo is interface and IUnknown;

      function GetTypeInfoCount(
         This : access IMethodInfo;
         pcTInfo : access Interfaces.C.unsigned_long
      ) return HRESULT is abstract;
      function GetTypeInfo(
         This : access IMethodInfo;
         iTInfo : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         ppTInfo : Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetIDsOfNames(
         This : access IMethodInfo;
         riid : access GUID;
         rgszNames : Interfaces.C.Long;
         cNames : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         rgDispId : Interfaces.C.Long
      ) return HRESULT is abstract;
      function Invoke(
         This : access IMethodInfo;
         dispIdMember : Interfaces.C.unsigned_long;
         riid : access GUID;
         lcid_x : Interfaces.C.unsigned_long;
         wFlags : Interfaces.C.Short;
         pDispParams : Interfaces.C.Long;
         pVarResult : Interfaces.C.Long;
         pExcepInfo : Interfaces.C.Long;
         puArgErr : Interfaces.C.Long
      ) return HRESULT is abstract;
      function get_ToString(
         This : access IMethodInfo;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function Equals(
         This : access IMethodInfo;
         other : VARIANT;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetHashCode(
         This : access IMethodInfo;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetType(
         This : access IMethodInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_MemberType(
         This : access IMethodInfo;
         pRetVal : access MemberTypes
      ) return HRESULT is abstract;
      function get_name(
         This : access IMethodInfo;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_DeclaringType(
         This : access IMethodInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_ReflectedType(
         This : access IMethodInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetCustomAttributes(
         This : access IMethodInfo;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetCustomAttributes_2(
         This : access IMethodInfo;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function IsDefined(
         This : access IMethodInfo;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetParameters(
         This : access IMethodInfo;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetMethodImplementationFlags(
         This : access IMethodInfo;
         pRetVal : access MethodImplAttributes
      ) return HRESULT is abstract;
      function get_MethodHandle(
         This : access IMethodInfo;
         pRetVal : access RuntimeMethodHandle
      ) return HRESULT is abstract;
      function get_Attributes(
         This : access IMethodInfo;
         pRetVal : access MethodAttributes
      ) return HRESULT is abstract;
      function get_CallingConvention(
         This : access IMethodInfo;
         pRetVal : access CallingConventions
      ) return HRESULT is abstract;
      function Invoke_2(
         This : access IMethodInfo;
         obj : VARIANT;
         invokeAttr : BindingFlags;
         Binder : access IBinder'Class;
         parameters : access SAFEARRAY;
         culture : access ICultureInfo'Class;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function get_IsPublic(
         This : access IMethodInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsPrivate(
         This : access IMethodInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsFamily(
         This : access IMethodInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsAssembly(
         This : access IMethodInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsFamilyAndAssembly(
         This : access IMethodInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsFamilyOrAssembly(
         This : access IMethodInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsStatic(
         This : access IMethodInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsFinal(
         This : access IMethodInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsVirtual(
         This : access IMethodInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsHideBySig(
         This : access IMethodInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsAbstract(
         This : access IMethodInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsSpecialName(
         This : access IMethodInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsConstructor(
         This : access IMethodInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function Invoke_3(
         This : access IMethodInfo;
         obj : VARIANT;
         parameters : access SAFEARRAY;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function get_returnType(
         This : access IMethodInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_ReturnTypeCustomAttributes(
         This : access IMethodInfo;
         pRetVal : access ICustomAttributeProvider_Ptr
      ) return HRESULT is abstract;
      function GetBaseDefinition(
         This : access IMethodInfo;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;

   -----------------------------------------------------------------------------
   type IPropertyInfo is interface and IUnknown;

      function GetTypeInfoCount(
         This : access IPropertyInfo;
         pcTInfo : access Interfaces.C.unsigned_long
      ) return HRESULT is abstract;
      function GetTypeInfo(
         This : access IPropertyInfo;
         iTInfo : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         ppTInfo : Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetIDsOfNames(
         This : access IPropertyInfo;
         riid : access GUID;
         rgszNames : Interfaces.C.Long;
         cNames : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         rgDispId : Interfaces.C.Long
      ) return HRESULT is abstract;
      function Invoke(
         This : access IPropertyInfo;
         dispIdMember : Interfaces.C.unsigned_long;
         riid : access GUID;
         lcid_x : Interfaces.C.unsigned_long;
         wFlags : Interfaces.C.Short;
         pDispParams : Interfaces.C.Long;
         pVarResult : Interfaces.C.Long;
         pExcepInfo : Interfaces.C.Long;
         puArgErr : Interfaces.C.Long
      ) return HRESULT is abstract;
      function get_ToString(
         This : access IPropertyInfo;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function Equals(
         This : access IPropertyInfo;
         other : VARIANT;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetHashCode(
         This : access IPropertyInfo;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetType(
         This : access IPropertyInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_MemberType(
         This : access IPropertyInfo;
         pRetVal : access MemberTypes
      ) return HRESULT is abstract;
      function get_name(
         This : access IPropertyInfo;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_DeclaringType(
         This : access IPropertyInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_ReflectedType(
         This : access IPropertyInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetCustomAttributes(
         This : access IPropertyInfo;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetCustomAttributes_2(
         This : access IPropertyInfo;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function IsDefined(
         This : access IPropertyInfo;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_PropertyType(
         This : access IPropertyInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetValue(
         This : access IPropertyInfo;
         obj : VARIANT;
         index : access SAFEARRAY;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function GetValue_2(
         This : access IPropertyInfo;
         obj : VARIANT;
         invokeAttr : BindingFlags;
         Binder : access IBinder'Class;
         index : access SAFEARRAY;
         culture : access ICultureInfo'Class;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function SetValue(
         This : access IPropertyInfo;
         obj : VARIANT;
         value : VARIANT;
         index : access SAFEARRAY
      ) return HRESULT is abstract;
      function SetValue_2(
         This : access IPropertyInfo;
         obj : VARIANT;
         value : VARIANT;
         invokeAttr : BindingFlags;
         Binder : access IBinder'Class;
         index : access SAFEARRAY;
         culture : access ICultureInfo'Class
      ) return HRESULT is abstract;
      function GetAccessors(
         This : access IPropertyInfo;
         nonPublic : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetGetMethod(
         This : access IPropertyInfo;
         nonPublic : VARIANT_BOOL;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function GetSetMethod(
         This : access IPropertyInfo;
         nonPublic : VARIANT_BOOL;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function GetIndexParameters(
         This : access IPropertyInfo;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function get_Attributes(
         This : access IPropertyInfo;
         pRetVal : access PropertyAttributes
      ) return HRESULT is abstract;
      function get_CanRead(
         This : access IPropertyInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_CanWrite(
         This : access IPropertyInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetAccessors_2(
         This : access IPropertyInfo;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetGetMethod_2(
         This : access IPropertyInfo;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function GetSetMethod_2(
         This : access IPropertyInfo;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function get_IsSpecialName(
         This : access IPropertyInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;

   type IPropertyInfo_Ptr is access all IPropertyInfo'Class;

   -----------------------------------------------------------------------------
   type IFieldInfo is interface and IUnknown;

      function GetTypeInfoCount(
         This : access IFieldInfo;
         pcTInfo : access Interfaces.C.unsigned_long
      ) return HRESULT is abstract;
      function GetTypeInfo(
         This : access IFieldInfo;
         iTInfo : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         ppTInfo : Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetIDsOfNames(
         This : access IFieldInfo;
         riid : access GUID;
         rgszNames : Interfaces.C.Long;
         cNames : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         rgDispId : Interfaces.C.Long
      ) return HRESULT is abstract;
      function Invoke(
         This : access IFieldInfo;
         dispIdMember : Interfaces.C.unsigned_long;
         riid : access GUID;
         lcid_x : Interfaces.C.unsigned_long;
         wFlags : Interfaces.C.Short;
         pDispParams : Interfaces.C.Long;
         pVarResult : Interfaces.C.Long;
         pExcepInfo : Interfaces.C.Long;
         puArgErr : Interfaces.C.Long
      ) return HRESULT is abstract;
      function get_ToString(
         This : access IFieldInfo;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function Equals(
         This : access IFieldInfo;
         other : VARIANT;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetHashCode(
         This : access IFieldInfo;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetType(
         This : access IFieldInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_MemberType(
         This : access IFieldInfo;
         pRetVal : access MemberTypes
      ) return HRESULT is abstract;
      function get_name(
         This : access IFieldInfo;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_DeclaringType(
         This : access IFieldInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_ReflectedType(
         This : access IFieldInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetCustomAttributes(
         This : access IFieldInfo;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetCustomAttributes_2(
         This : access IFieldInfo;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function IsDefined(
         This : access IFieldInfo;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_FieldType(
         This : access IFieldInfo;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetValue(
         This : access IFieldInfo;
         obj : VARIANT;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function GetValueDirect(
         This : access IFieldInfo;
         obj : VARIANT;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function SetValue(
         This : access IFieldInfo;
         obj : VARIANT;
         value : VARIANT;
         invokeAttr : BindingFlags;
         Binder : access IBinder'Class;
         culture : access ICultureInfo'Class
      ) return HRESULT is abstract;
      function SetValueDirect(
         This : access IFieldInfo;
         obj : VARIANT;
         value : VARIANT
      ) return HRESULT is abstract;
      function get_FieldHandle(
         This : access IFieldInfo;
         pRetVal : access RuntimeFieldHandle
      ) return HRESULT is abstract;
      function get_Attributes(
         This : access IFieldInfo;
         pRetVal : access FieldAttributes
      ) return HRESULT is abstract;
      function SetValue_2(
         This : access IFieldInfo;
         obj : VARIANT;
         value : VARIANT
      ) return HRESULT is abstract;
      function get_IsPublic(
         This : access IFieldInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsPrivate(
         This : access IFieldInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsFamily(
         This : access IFieldInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsAssembly(
         This : access IFieldInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsFamilyAndAssembly(
         This : access IFieldInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsFamilyOrAssembly(
         This : access IFieldInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsStatic(
         This : access IFieldInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsInitOnly(
         This : access IFieldInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsLiteral(
         This : access IFieldInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsNotSerialized(
         This : access IFieldInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsSpecialName(
         This : access IFieldInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsPinvokeImpl(
         This : access IFieldInfo;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;

   type IFieldInfo_Ptr is access all IFieldInfo'Class;

   -----------------------------------------------------------------------------
   type IMethodBase is interface and IUnknown;

      function GetTypeInfoCount(
         This : access IMethodBase;
         pcTInfo : access Interfaces.C.unsigned_long
      ) return HRESULT is abstract;
      function GetTypeInfo(
         This : access IMethodBase;
         iTInfo : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         ppTInfo : Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetIDsOfNames(
         This : access IMethodBase;
         riid : access GUID;
         rgszNames : Interfaces.C.Long;
         cNames : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         rgDispId : Interfaces.C.Long
      ) return HRESULT is abstract;
      function Invoke(
         This : access IMethodBase;
         dispIdMember : Interfaces.C.unsigned_long;
         riid : access GUID;
         lcid_x : Interfaces.C.unsigned_long;
         wFlags : Interfaces.C.Short;
         pDispParams : Interfaces.C.Long;
         pVarResult : Interfaces.C.Long;
         pExcepInfo : Interfaces.C.Long;
         puArgErr : Interfaces.C.Long
      ) return HRESULT is abstract;
      function get_ToString(
         This : access IMethodBase;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function Equals(
         This : access IMethodBase;
         other : VARIANT;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetHashCode(
         This : access IMethodBase;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetType(
         This : access IMethodBase;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_MemberType(
         This : access IMethodBase;
         pRetVal : access MemberTypes
      ) return HRESULT is abstract;
      function get_name(
         This : access IMethodBase;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_DeclaringType(
         This : access IMethodBase;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_ReflectedType(
         This : access IMethodBase;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetCustomAttributes(
         This : access IMethodBase;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetCustomAttributes_2(
         This : access IMethodBase;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function IsDefined(
         This : access IMethodBase;
         attributeType : access IType'Class;
         inherit : VARIANT_BOOL;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetParameters(
         This : access IMethodBase;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetMethodImplementationFlags(
         This : access IMethodBase;
         pRetVal : access MethodImplAttributes
      ) return HRESULT is abstract;
      function get_MethodHandle(
         This : access IMethodBase;
         pRetVal : access RuntimeMethodHandle
      ) return HRESULT is abstract;
      function get_Attributes(
         This : access IMethodBase;
         pRetVal : access MethodAttributes
      ) return HRESULT is abstract;
      function get_CallingConvention(
         This : access IMethodBase;
         pRetVal : access CallingConventions
      ) return HRESULT is abstract;
      function Invoke_2(
         This : access IMethodBase;
         obj : VARIANT;
         invokeAttr : BindingFlags;
         Binder : access IBinder'Class;
         parameters : access SAFEARRAY;
         culture : access ICultureInfo'Class;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function get_IsPublic(
         This : access IMethodBase;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsPrivate(
         This : access IMethodBase;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsFamily(
         This : access IMethodBase;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsAssembly(
         This : access IMethodBase;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsFamilyAndAssembly(
         This : access IMethodBase;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsFamilyOrAssembly(
         This : access IMethodBase;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsStatic(
         This : access IMethodBase;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsFinal(
         This : access IMethodBase;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsVirtual(
         This : access IMethodBase;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsHideBySig(
         This : access IMethodBase;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsAbstract(
         This : access IMethodBase;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsSpecialName(
         This : access IMethodBase;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsConstructor(
         This : access IMethodBase;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function Invoke_3(
         This : access IMethodBase;
         obj : VARIANT;
         parameters : access SAFEARRAY;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;

   -----------------------------------------------------------------------------
   type IIdentity is interface and IDispatch;

      function get_name(
         This : in out IIdentity;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_AuthenticationType(
         This : in out IIdentity;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_IsAuthenticated(
         This : in out IIdentity;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;

   type IIdentity_Ptr is access all IIdentity'Class;

   -----------------------------------------------------------------------------
   type IPrincipal is interface and IDispatch;

      function get_Identity(
         This : in out IPrincipal;
         pRetVal : access IIdentity_Ptr
      ) return HRESULT is abstract;
      function IsInRole(
         This : in out IPrincipal;
         role : BSTR;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;

   type IPrincipal_Ptr is access all IPrincipal'Class;

   -----------------------------------------------------------------------------
    type IObjectHandle is interface and IDispatch;

      function get_ToString(
         This : in out IObjectHandle;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function Equals(
         This : in out IObjectHandle;
         obj : VARIANT;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetHashCode(
         This : in out IObjectHandle;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetType(
         This : in out IObjectHandle;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetLifetimeService(
         This : in out IObjectHandle;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function InitializeLifetimeService(
         This : in out IObjectHandle;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function CreateObjRef(
         This : in out IObjectHandle;
         requestedType : access IType'Class;
         pRetVal : access IObjRef_Ptr
      ) return HRESULT is abstract;
      function Unwrap(
         This : in out IObjectHandle;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;

   type IObjectHandle_Ptr is access all IObjectHandle'Class;

   -----------------------------------------------------------------------------
   type IBinder is interface and IDispatch;

      function get_ToString(
         This : access IBinder;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function Equals(
         This : access IBinder;
         obj : VARIANT;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetHashCode(
         This : access IBinder;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetType(
         This : access IBinder;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function BindToMethod(
         This : access IBinder;
         bindingAttr : BindingFlags;
         match : access SAFEARRAY;
         args : access LPSAFEARRAY;
         modifiers : access SAFEARRAY;
         culture : access ICultureInfo'Class;
         names : access SAFEARRAY;
         state : access VARIANT;
         pRetVal : access IMethodBase_Ptr
      ) return HRESULT is abstract;
      function BindToField(
         This : access IBinder;
         bindingAttr : BindingFlags;
         match : access SAFEARRAY;
         value : VARIANT;
         culture : access ICultureInfo'Class;
         pRetVal : access IFieldInfo_Ptr
      ) return HRESULT is abstract;
      function SelectMethod(
         This : access IBinder;
         bindingAttr : BindingFlags;
         match : access SAFEARRAY;
         types : access SAFEARRAY;
         modifiers : access SAFEARRAY;
         pRetVal : access IMethodBase_Ptr
      ) return HRESULT is abstract;
      function SelectProperty(
         This : access IBinder;
         bindingAttr : BindingFlags;
         match : access SAFEARRAY;
         returnType : access IType'Class;
         indexes : access SAFEARRAY;
         modifiers : access SAFEARRAY;
         pRetVal : access IPropertyInfo_Ptr
      ) return HRESULT is abstract;
      function ChangeType(
         This : access IBinder;
         value : VARIANT;
         type_x : access IType'Class;
         culture : access ICultureInfo'Class;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function ReorderArgumentArray(
         This : access IBinder;
         args : access LPSAFEARRAY;
         state : VARIANT
      ) return HRESULT is abstract;

   -----------------------------------------------------------------------------
   type IAppDomain is interface and IUnknown;

      function GetTypeInfoCount(
         This : access IAppDomain;
         pcTInfo : access Interfaces.C.unsigned_long
      ) return HRESULT is abstract;
      function GetTypeInfo(
         This : access IAppDomain;
         iTInfo : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         ppTInfo : Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetIDsOfNames(
         This : access IAppDomain;
         riid : access GUID;
         rgszNames : Interfaces.C.Long;
         cNames : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         rgDispId : Interfaces.C.Long
      ) return HRESULT is abstract;
      function Invoke(
         This : access IAppDomain;
         dispIdMember : Interfaces.C.unsigned_long;
         riid : access GUID;
         lcid_x : Interfaces.C.unsigned_long;
         wFlags : Interfaces.C.Short;
         pDispParams : Interfaces.C.Long;
         pVarResult : Interfaces.C.Long;
         pExcepInfo : Interfaces.C.Long;
         puArgErr : Interfaces.C.Long
      ) return HRESULT is abstract;
      function get_ToString(
         This : access IAppDomain;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function Equals(
         This : access IAppDomain;
         other : VARIANT;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetHashCode(
         This : access IAppDomain;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetType(
         This : access IAppDomain;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function InitializeLifetimeService(
         This : access IAppDomain;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function GetLifetimeService(
         This : access IAppDomain;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function get_Evidence(
         This : access IAppDomain;
         pRetVal : access IEvidence_Ptr
      ) return HRESULT is abstract;
      function add_DomainUnload(
         This : access IAppDomain;
         value : access IEventHandler'Class
      ) return HRESULT is abstract;
      function remove_DomainUnload(
         This : access IAppDomain;
         value : access IEventHandler'Class
      ) return HRESULT is abstract;
      function add_AssemblyLoad(
         This : access IAppDomain;
         value : access IAssemblyLoadEventHandler'Class
      ) return HRESULT is abstract;
      function remove_AssemblyLoad(
         This : access IAppDomain;
         value : access IAssemblyLoadEventHandler'Class
      ) return HRESULT is abstract;
      function add_ProcessExit(
         This : access IAppDomain;
         value : access IEventHandler'Class
      ) return HRESULT is abstract;
      function remove_ProcessExit(
         This : access IAppDomain;
         value : access IEventHandler'Class
      ) return HRESULT is abstract;
      function add_TypeResolve(
         This : access IAppDomain;
         value : access IResolveEventHandler'Class
      ) return HRESULT is abstract;
      function remove_TypeResolve(
         This : access IAppDomain;
         value : access IResolveEventHandler'Class
      ) return HRESULT is abstract;
      function add_ResourceResolve(
         This : access IAppDomain;
         value : access IResolveEventHandler'Class
      ) return HRESULT is abstract;
      function remove_ResourceResolve(
         This : access IAppDomain;
         value : access IResolveEventHandler'Class
      ) return HRESULT is abstract;
      function add_AssemblyResolve(
         This : access IAppDomain;
         value : access IResolveEventHandler'Class
      ) return HRESULT is abstract;
      function remove_AssemblyResolve(
         This : access IAppDomain;
         value : access IResolveEventHandler'Class
      ) return HRESULT is abstract;
      function add_UnhandledException(
         This : access IAppDomain;
         value : access IUnhandledExceptionEventHandler'Class
      ) return HRESULT is abstract;
      function remove_UnhandledException(
         This : access IAppDomain;
         value : access IUnhandledExceptionEventHandler'Class
      ) return HRESULT is abstract;
      function DefineDynamicAssembly(
         This : access IAppDomain;
         name : access IAssemblyName'Class;
         access_x : AssemblyBuilderAccess;
         pRetVal : access IAssemblyBuilder_Ptr
      ) return HRESULT is abstract;
      function DefineDynamicAssembly_2(
         This : access IAppDomain;
         name : access IAssemblyName'Class;
         access_x : AssemblyBuilderAccess;
         dir : BSTR;
         pRetVal : access IAssemblyBuilder_Ptr
      ) return HRESULT is abstract;
      function DefineDynamicAssembly_3(
         This : access IAppDomain;
         name : access IAssemblyName'Class;
         access_x : AssemblyBuilderAccess;
         Evidence : access IEvidence'Class;
         pRetVal : access IAssemblyBuilder_Ptr
      ) return HRESULT is abstract;
      function DefineDynamicAssembly_4(
         This : access IAppDomain;
         name : access IAssemblyName'Class;
         access_x : AssemblyBuilderAccess;
         requiredPermissions : access IPermissionSet'Class;
         optionalPermissions : access IPermissionSet'Class;
         refusedPermissions : access IPermissionSet'Class;
         pRetVal : access IAssemblyBuilder_Ptr
      ) return HRESULT is abstract;
      function DefineDynamicAssembly_5(
         This : access IAppDomain;
         name : access IAssemblyName'Class;
         access_x : AssemblyBuilderAccess;
         dir : BSTR;
         Evidence : access IEvidence'Class;
         pRetVal : access IAssemblyBuilder_Ptr
      ) return HRESULT is abstract;
      function DefineDynamicAssembly_6(
         This : access IAppDomain;
         name : access IAssemblyName'Class;
         access_x : AssemblyBuilderAccess;
         dir : BSTR;
         requiredPermissions : access IPermissionSet'Class;
         optionalPermissions : access IPermissionSet'Class;
         refusedPermissions : access IPermissionSet'Class;
         pRetVal : access IAssemblyBuilder_Ptr
      ) return HRESULT is abstract;
      function DefineDynamicAssembly_7(
         This : access IAppDomain;
         name : access IAssemblyName'Class;
         access_x : AssemblyBuilderAccess;
         Evidence : access IEvidence'Class;
         requiredPermissions : access IPermissionSet'Class;
         optionalPermissions : access IPermissionSet'Class;
         refusedPermissions : access IPermissionSet'Class;
         pRetVal : access IAssemblyBuilder_Ptr
      ) return HRESULT is abstract;
      function DefineDynamicAssembly_8(
         This : access IAppDomain;
         name : access IAssemblyName'Class;
         access_x : AssemblyBuilderAccess;
         dir : BSTR;
         Evidence : access IEvidence'Class;
         requiredPermissions : access IPermissionSet'Class;
         optionalPermissions : access IPermissionSet'Class;
         refusedPermissions : access IPermissionSet'Class;
         pRetVal : access IAssemblyBuilder_Ptr
      ) return HRESULT is abstract;
      function DefineDynamicAssembly_9(
         This : access IAppDomain;
         name : access IAssemblyName'Class;
         access_x : AssemblyBuilderAccess;
         dir : BSTR;
         Evidence : access IEvidence'Class;
         requiredPermissions : access IPermissionSet'Class;
         optionalPermissions : access IPermissionSet'Class;
         refusedPermissions : access IPermissionSet'Class;
         IsSynchronized : VARIANT_BOOL;
         pRetVal : access IAssemblyBuilder_Ptr
      ) return HRESULT is abstract;
      function CreateInstance(
         This : access IAppDomain;
         AssemblyName : BSTR;
         typeName : BSTR;
         pRetVal : access IObjectHandle_Ptr
      ) return HRESULT is abstract;
      function CreateInstanceFrom(
         This : access IAppDomain;
         assemblyFile : BSTR;
         typeName : BSTR;
         pRetVal : access IObjectHandle_Ptr
      ) return HRESULT is abstract;
      function CreateInstance_2(
         This : access IAppDomain;
         AssemblyName : BSTR;
         typeName : BSTR;
         activationAttributes : access SAFEARRAY;
         pRetVal : access IObjectHandle_Ptr
      ) return HRESULT is abstract;
      function CreateInstanceFrom_2(
         This : access IAppDomain;
         assemblyFile : BSTR;
         typeName : BSTR;
         activationAttributes : access SAFEARRAY;
         pRetVal : access IObjectHandle_Ptr
      ) return HRESULT is abstract;
      function CreateInstance_3(
         This : access IAppDomain;
         AssemblyName : BSTR;
         typeName : BSTR;
         ignoreCase : VARIANT_BOOL;
         bindingAttr : BindingFlags;
         Binder : access IBinder'Class;
         args : access SAFEARRAY;
         culture : access ICultureInfo'Class;
         activationAttributes : access SAFEARRAY;
         securityAttributes : access IEvidence'Class;
         pRetVal : access IObjectHandle_Ptr
      ) return HRESULT is abstract;
      function CreateInstanceFrom_3(
         This : access IAppDomain;
         assemblyFile : BSTR;
         typeName : BSTR;
         ignoreCase : VARIANT_BOOL;
         bindingAttr : BindingFlags;
         Binder : access IBinder'Class;
         args : access SAFEARRAY;
         culture : access ICultureInfo'Class;
         activationAttributes : access SAFEARRAY;
         securityAttributes : access IEvidence'Class;
         pRetVal : access IObjectHandle_Ptr
      ) return HRESULT is abstract;
      function Load(
         This : access IAppDomain;
         assemblyRef : access IAssemblyName'Class;
         pRetVal : access IAssembly_Ptr
      ) return HRESULT is abstract;
      function Load_2(
         This : access IAppDomain;
         assemblyString : BSTR;
         pRetVal : access IAssembly_Ptr
      ) return HRESULT is abstract;
      function Load_3(
         This : access IAppDomain;
         rawAssembly : access SAFEARRAY;
         pRetVal : access IAssembly_Ptr
      ) return HRESULT is abstract;
      function Load_4(
         This : access IAppDomain;
         rawAssembly : access SAFEARRAY;
         rawSymbolStore : access SAFEARRAY;
         pRetVal : access IAssembly_Ptr
      ) return HRESULT is abstract;
      function Load_5(
         This : access IAppDomain;
         rawAssembly : access SAFEARRAY;
         rawSymbolStore : access SAFEARRAY;
         securityEvidence : access IEvidence'Class;
         pRetVal : access IAssembly_Ptr
      ) return HRESULT is abstract;
      function Load_6(
         This : access IAppDomain;
         assemblyRef : access IAssemblyName'Class;
         assemblySecurity : access IEvidence'Class;
         pRetVal : access IAssembly_Ptr
      ) return HRESULT is abstract;
      function Load_7(
         This : access IAppDomain;
         assemblyString : BSTR;
         assemblySecurity : access IEvidence'Class;
         pRetVal : access IAssembly_Ptr
      ) return HRESULT is abstract;
      function ExecuteAssembly(
         This : access IAppDomain;
         assemblyFile : BSTR;
         assemblySecurity : access IEvidence'Class;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function ExecuteAssembly_2(
         This : access IAppDomain;
         assemblyFile : BSTR;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function ExecuteAssembly_3(
         This : access IAppDomain;
         assemblyFile : BSTR;
         assemblySecurity : access IEvidence'Class;
         args : access SAFEARRAY;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function get_FriendlyName(
         This : access IAppDomain;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_BaseDirectory(
         This : access IAppDomain;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_RelativeSearchPath(
         This : access IAppDomain;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_ShadowCopyFiles(
         This : access IAppDomain;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetAssemblies(
         This : access IAppDomain;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function AppendPrivatePath(
         This : access IAppDomain;
         Path : BSTR
      ) return HRESULT is abstract;
      function ClearPrivatePath(This : access IAppDomain) return HRESULT is abstract;
      function SetShadowCopyPath(
         This : access IAppDomain;
         s : BSTR
      ) return HRESULT is abstract;
      function ClearShadowCopyPath(This : access IAppDomain) return HRESULT is abstract;
      function SetCachePath(
         This : access IAppDomain;
         s : BSTR
      ) return HRESULT is abstract;
      function SetData(
         This : access IAppDomain;
         name : BSTR;
         data : VARIANT
      ) return HRESULT is abstract;
      function GetData(
         This : access IAppDomain;
         name : BSTR;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function SetAppDomainPolicy(
         This : access IAppDomain;
         domainPolicy : access IPolicyLevel'Class
      ) return HRESULT is abstract;
      function SetThreadPrincipal(
         This : access IAppDomain;
         principal : access IPrincipal'Class
      ) return HRESULT is abstract;
      function SetPrincipalPolicy(
         This : access IAppDomain;
         policy : PrincipalPolicy
      ) return HRESULT is abstract;
      function DoCallBack(
         This : access IAppDomain;
         theDelegate : access ICrossAppDomainDelegate'Class
      ) return HRESULT is abstract;
      function get_DynamicDirectory(
         This : access IAppDomain;
         pRetVal : access BSTR
      ) return HRESULT is abstract;

   type IAppDomain_Ptr is access all IAppDomain'Class;

   -----------------------------------------------------------------------------
   type IType is interface and IUnknown;

      function GetTypeInfoCount(
         This : access IType;
         pcTInfo : access Interfaces.C.unsigned_long
      ) return HRESULT is abstract;
      function GetTypeInfo(
         This : access IType;
         iTInfo : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         ppTInfo : Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetIDsOfNames(
         This : access IType;
         riid : access GUID;
         rgszNames : Interfaces.C.Long;
         cNames : Interfaces.C.unsigned_long;
         lcid_x : Interfaces.C.unsigned_long;
         rgDispId : Interfaces.C.Long
      ) return HRESULT is abstract;
      function Invoke(
         This : access IType;
         dispIdMember : Interfaces.C.unsigned_long;
         riid : access GUID;
         lcid_x : Interfaces.C.unsigned_long;
         wFlags : Interfaces.C.Short;
         pDispParams : Interfaces.C.Long;
         pVarResult : Interfaces.C.Long;
         pExcepInfo : Interfaces.C.Long;
         puArgErr : Interfaces.C.Long
      ) return HRESULT is abstract;
      function get_ToString(
         This : access IType;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function Equals(
         This : access IType;
         other : VARIANT;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetHashCode(
         This : access IType;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function GetType(
         This : access IType;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_MemberType(
         This : access IType;
         pRetVal : access MemberTypes
      ) return HRESULT is abstract;
      function get_name(
         This : access IType;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_DeclaringType(
         This : access IType;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function get_ReflectedType(
         This : access IType;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetCustomAttributes(
         This : access IType;
         attributeType : access IType;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetCustomAttributes_2(
         This : access IType;
         inherit : VARIANT_BOOL;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function IsDefined(
         This : access IType;
         attributeType : access IType;
         inherit : VARIANT_BOOL;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_Guid(
         This : access IType;
         pRetVal : access GUID
      ) return HRESULT is abstract;
      function get_Module(
         This : access IType;
         pRetVal : access IModule_Ptr
      ) return HRESULT is abstract;
      function get_Assembly(
         This : access IType;
         pRetVal : access IAssembly_Ptr
      ) return HRESULT is abstract;
      function get_TypeHandle(
         This : access IType;
         pRetVal : access RuntimeTypeHandle
      ) return HRESULT is abstract;
      function get_FullName(
         This : access IType;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_Namespace(
         This : access IType;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function get_AssemblyQualifiedName(
         This : access IType;
         pRetVal : access BSTR
      ) return HRESULT is abstract;
      function GetArrayRank(
         This : access IType;
         pRetVal : access Interfaces.C.Long
      ) return HRESULT is abstract;
      function get_BaseType(
         This : access IType;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetConstructors(
         This : access IType;
         bindingAttr : BindingFlags;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetInterface(
         This : access IType;
         name : BSTR;
         ignoreCase : VARIANT_BOOL;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetInterfaces(
         This : access IType;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function FindInterfaces(
         This : access IType;
         filter : access ITypeFilter'Class;
         filterCriteria : VARIANT;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetEvent(
         This : access IType;
         name : BSTR;
         bindingAttr : BindingFlags;
         pRetVal : access IEventInfo_Ptr
      ) return HRESULT is abstract;
      function GetEvents(
         This : access IType;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetEvents_2(
         This : access IType;
         bindingAttr : BindingFlags;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetNestedTypes(
         This : access IType;
         bindingAttr : BindingFlags;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetNestedType(
         This : access IType;
         name : BSTR;
         bindingAttr : BindingFlags;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetMember(
         This : access IType;
         name : BSTR;
         type_x : MemberTypes;
         bindingAttr : BindingFlags;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetDefaultMembers(
         This : access IType;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function FindMembers(
         This : access IType;
         MemberType : MemberTypes;
         bindingAttr : BindingFlags;
         filter : access IMemberFilter'Class;
         filterCriteria : VARIANT;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetElementType(
         This : access IType;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function IsSubclassOf(
         This : access IType;
         c : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function IsInstanceOfType(
         This : access IType;
         o : VARIANT;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function IsAssignableFrom(
         This : access IType;
         c : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function GetInterfaceMap(
         This : access IType;
         interfaceType : access IType;
         pRetVal : access InterfaceMapping
      ) return HRESULT is abstract;
      function GetMethod(
         This : access IType;
         name : BSTR;
         bindingAttr : BindingFlags;
         Binder : access IBinder'Class;
         types : access SAFEARRAY;
         modifiers : access SAFEARRAY;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function GetMethod_2(
         This : access IType;
         name : BSTR;
         bindingAttr : BindingFlags;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function GetMethods(
         This : access IType;
         bindingAttr : BindingFlags;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetField(
         This : access IType;
         name : BSTR;
         bindingAttr : BindingFlags;
         pRetVal : access IFieldInfo_Ptr
      ) return HRESULT is abstract;
      function GetFields(
         This : access IType;
         bindingAttr : BindingFlags;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetProperty(
         This : access IType;
         name : BSTR;
         bindingAttr : BindingFlags;
         pRetVal : access IPropertyInfo_Ptr
      ) return HRESULT is abstract;
      function GetProperty_2(
         This : access IType;
         name : BSTR;
         bindingAttr : BindingFlags;
         Binder : access IBinder'Class;
         returnType : access IType'Class;
         types : access SAFEARRAY;
         modifiers : access SAFEARRAY;
         pRetVal : access IPropertyInfo_Ptr
      ) return HRESULT is abstract;
      function GetProperties(
         This : access IType;
         bindingAttr : BindingFlags;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetMember_2(
         This : access IType;
         name : BSTR;
         bindingAttr : BindingFlags;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetMembers(
         This : access IType;
         bindingAttr : BindingFlags;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function InvokeMember(
         This : access IType;
         name : BSTR;
         invokeAttr : BindingFlags;
         Binder : access IBinder'Class;
         Target : VARIANT;
         args : access SAFEARRAY;
         modifiers : access SAFEARRAY;
         culture : access ICultureInfo'Class;
         namedParameters : access SAFEARRAY;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function get_UnderlyingSystemType(
         This : access IType;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function InvokeMember_2(
         This : access IType;
         name : BSTR;
         invokeAttr : BindingFlags;
         Binder : access IBinder'Class;
         Target : VARIANT;
         args : access SAFEARRAY;
         culture : access ICultureInfo'Class;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function InvokeMember_3(
         This : access IType;
         name : BSTR;
         invokeAttr : BindingFlags;
         Binder : access IBinder'Class;
         Target : VARIANT;
         args : access SAFEARRAY;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function GetConstructor(
         This : access IType;
         bindingAttr : BindingFlags;
         Binder : access IBinder'Class;
         callConvention : CallingConventions;
         types : access SAFEARRAY;
         modifiers : access SAFEARRAY;
         pRetVal : access IConstructorInfo_Ptr
      ) return HRESULT is abstract;
      function GetConstructor_2(
         This : access IType;
         bindingAttr : BindingFlags;
         Binder : access IBinder'Class;
         types : access SAFEARRAY;
         modifiers : access SAFEARRAY;
         pRetVal : access IConstructorInfo_Ptr
      ) return HRESULT is abstract;
      function GetConstructor_3(
         This : access IType;
         types : access SAFEARRAY;
         pRetVal : access IConstructorInfo_Ptr
      ) return HRESULT is abstract;
      function GetConstructors_2(
         This : access IType;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function get_TypeInitializer(
         This : access IType;
         pRetVal : access IConstructorInfo_Ptr
      ) return HRESULT is abstract;
      function GetMethod_3(
         This : access IType;
         name : BSTR;
         bindingAttr : BindingFlags;
         Binder : access IBinder'Class;
         callConvention : CallingConventions;
         types : access SAFEARRAY;
         modifiers : access SAFEARRAY;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function GetMethod_4(
         This : access IType;
         name : BSTR;
         types : access SAFEARRAY;
         modifiers : access SAFEARRAY;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function GetMethod_5(
         This : access IType;
         name : BSTR;
         types : access SAFEARRAY;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function GetMethod_6(
         This : access IType;
         name : BSTR;
         pRetVal : access IMethodInfo_Ptr
      ) return HRESULT is abstract;
      function GetMethods_2(
         This : access IType;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetField_2(
         This : access IType;
         name : BSTR;
         pRetVal : access IFieldInfo_Ptr
      ) return HRESULT is abstract;
      function GetFields_2(
         This : access IType;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetInterface_2(
         This : access IType;
         name : BSTR;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetEvent_2(
         This : access IType;
         name : BSTR;
         pRetVal : access IEventInfo_Ptr
      ) return HRESULT is abstract;
      function GetProperty_3(
         This : access IType;
         name : BSTR;
         returnType : access IType;
         types : access SAFEARRAY;
         modifiers : access SAFEARRAY;
         pRetVal : access IPropertyInfo_Ptr
      ) return HRESULT is abstract;
      function GetProperty_4(
         This : access IType;
         name : BSTR;
         returnType : access IType;
         types : access SAFEARRAY;
         pRetVal : access IPropertyInfo_Ptr
      ) return HRESULT is abstract;
      function GetProperty_5(
         This : access IType;
         name : BSTR;
         types : access SAFEARRAY;
         pRetVal : access IPropertyInfo_Ptr
      ) return HRESULT is abstract;
      function GetProperty_6(
         This : access IType;
         name : BSTR;
         returnType : access IType;
         pRetVal : access IPropertyInfo_Ptr
      ) return HRESULT is abstract;
      function GetProperty_7(
         This : access IType;
         name : BSTR;
         pRetVal : access IPropertyInfo_Ptr
      ) return HRESULT is abstract;
      function GetProperties_2(
         This : access IType;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetNestedTypes_2(
         This : access IType;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetNestedType_2(
         This : access IType;
         name : BSTR;
         pRetVal : access IType_Ptr
      ) return HRESULT is abstract;
      function GetMember_3(
         This : access IType;
         name : BSTR;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function GetMembers_2(
         This : access IType;
         pRetVal : access LPSAFEARRAY
      ) return HRESULT is abstract;
      function get_Attributes(
         This : access IType;
         pRetVal : access TypeAttributes
      ) return HRESULT is abstract;
      function get_IsNotPublic(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsPublic(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsNestedPublic(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsNestedPrivate(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsNestedFamily(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsNestedAssembly(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsNestedFamANDAssem(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsNestedFamORAssem(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsAutoLayout(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsLayoutSequential(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsExplicitLayout(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsClass(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsInterface(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsValueType(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsAbstract(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsSealed(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsEnum(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsSpecialName(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsImport(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsSerializable(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsAnsiClass(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsUnicodeClass(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsAutoClass(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsArray(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsByRef(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsPointer(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsPrimitive(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsCOMObject(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_HasElementType(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsContextful(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function get_IsMarshalByRef(
         This : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;
      function Equals_2(
         This : access IType;
         o : access IType;
         pRetVal : access VARIANT_BOOL
      ) return HRESULT is abstract;

   -----------------------------------------------------------------------------
   type IAdaMarshal is limited interface and IDispatch;

      function GetDelegateForFunctionPointer(
         This : access IAdaMarshal;
         pUnmanagedFunction : Interfaces.C.Extensions.long_long;
         type_x : access Interfaces.C.Int;
         pRetVal : access PINT
      ) return HRESULT is abstract;
      function AllocCoTaskMem(
         This : access IAdaMarshal;
         cb : Interfaces.C.Long;
         pRetVal : access Interfaces.C.Extensions.long_long
      ) return HRESULT is abstract;
      function FreeCoTaskMem(
         This : access IAdaMarshal;
         ptr : Interfaces.C.Extensions.long_long
      ) return HRESULT is abstract;
      function InvokeMethod(
         This : access IAdaMarshal;
         type_x : access IType'Class;
         name : BSTR;
         invokeAtts : BindingFlags;
         binder : access IBinder'Class;
         target : VARIANT;
         args : access SAFEARRAY;
         pRetVal : access VARIANT
      ) return HRESULT is abstract;
      function GetObjectForNativeVariant(
         This : access IAdaMarshal;
         pSrcNativeVariant : Interfaces.C.Extensions.long_long;
         pRetVal : access IUnknown_Ptr
      ) return HRESULT is abstract;
      function GetNativeVariantForObject(
         This : access IAdaMarshal;
         obj : VARIANT;
         pDstNativeVariant : Interfaces.C.Extensions.long_long
      ) return HRESULT is abstract;

   type IAdaMarshal_Ptr is access all IAdaMarshal'Class;

end NetFrameworkWin32;