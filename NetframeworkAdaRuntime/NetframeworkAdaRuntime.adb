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
with Interfaces.C;
with Interfaces.C.Extensions;
with NetFrameworkWin32;                     use NetFrameworkWin32;
with System.Storage_Elements;               use System.Storage_Elements;
with System;
with Ada.Containers.Doubly_Linked_Lists;
with Ada.Wide_Text_IO;
with Ada.Unchecked_Conversion;
--------------------------------------------------------------------------------
package body NetFrameworkAdaRuntime is

    ----------------------------------------------------------------------------

    function Addr (S : Wide_String) return LPWSTR;
    function Addr (S : Wide_String) return LPCWSTR;
    function Addr (S : Wide_String) return LPOLESTR;
    
    function From_String (Value : Wide_String) return GUID;
    function To_String (Value : GUID) return Wide_String;
    function Convert is new Ada.Unchecked_Conversion(System.Address, LPVOID_Ptr);

    ----------------------------------------------------------------------------

    package Assemblies is new Ada.Containers.Doubly_Linked_Lists (IAssembly_Ptr);
    
    ----------------------------------------------------------------------------

    CLSID_CLRMetaHost       : aliased constant IID := (16#9280188d#, 16#e8e#, 16#4867#, (16#b3#, 16#c#, 16#7f#, 16#a8#, 16#38#, 16#84#, 16#e8#, 16#de#));
    IID_ICLRMetaHost        : aliased constant IID := (16#D332DB9E#, 16#B9B3#, 16#4125#, (16#82#, 16#07#, 16#A1#, 16#48#, 16#84#, 16#F5#, 16#32#, 16#16#));
    IID_ICLRRuntimeInfo     : aliased constant IID := (16#BD39D1D2#, 16#BA2F#, 16#486a#, (16#89#, 16#B0#, 16#B4#, 16#B0#, 16#CB#, 16#46#, 16#68#, 16#91#));
    CLSID_CLRRuntimeHost    : aliased constant IID := (16#90F1A06E#, 16#7712#, 16#4762#, (16#86#, 16#B5#, 16#7A#, 16#5E#, 16#BA#, 16#6B#, 16#DB#, 16#02#));
    IID_ICLRRuntimeHost     : ALIASED CONSTANT iid := (16#90F1A06C#, 16#7712#, 16#4762#, (16#86#, 16#B5#, 16#7A#, 16#5E#, 16#BA#, 16#6B#, 16#DB#, 16#02#));
    CLSID_CorRuntimeHost    : aliased constant IID := (16#cb2f6723#, 16#ab3a#, 16#11d2#, (16#9c#, 16#40#, 16#00#, 16#c0#, 16#4f#, 16#a3#, 16#0a#, 16#3e#));
    IID_ICorRuntimeHost     : aliased constant IID := (16#cb2f6722#, 16#ab3a#, 16#11d2#, (16#9c#, 16#40#, 16#00#, 16#c0#, 16#4f#, 16#a3#, 16#0a#, 16#3e#));

    ----------------------------------------------------------------------------

    type Kind_Interface is tagged record
        m_Object            : aliased VARIANT;
        m_NetObject         : aliased IUnknown_Ptr;
    end record;

    ----------------------------------------------------------------------------

    type RuntimeHost_Interface is tagged record
        m_IClrMetaHost      : aliased ICLRMetaHost_Ptr := NULL;
        m_IClrRuntimeInfo   : aliased IClrRuntimeInfo_Ptr := NULL;
        m_IClrRuntimeHost   : aliased IClrRuntimeHost_Ptr := NULL;
        m_ICorRuntimeHost   : aliased ICorRuntimeHost_Ptr := NULL;
        m_IUnknown          : aliased IUnknown_Ptr := NULL;
        m_IAppDomain        : aliased IAppDomain_Ptr := NULL;
        m_IAdaMarshal       : aliased IAdaMarshal_Ptr := null;
        m_Assemblies        : Assemblies.List;
        m_Initialized       : boolean := false;
    end record;

    ----------------------------------------------------------------------------

    RuntimeHostInstance : aliased RuntimeHost_Interface;
    

    ----------------------------------------------------------------------------
    function Instance return RuntimeHost is
    begin
        return RuntimeHostInstance'Access;
    end;

    ----------------------------------------------------------------------------
    procedure Initialize(this : in out RuntimeHost) is
        Hr                  : HRESULT := 0;
        IID_IAppDomain      : aliased constant IID := From_String("{05f696dc-2b29-3663-ad8b-c4389cf2a713}");
        CLSID_IAdaMarshal   : aliased constant IID := From_String("{F9897B6B-57BD-4009-A12F-E51FC2C3CDE5}");
        IID_IAdaMarshal     : aliased constant IID := From_String("{5FE6867E-DF2C-44A5-A2F6-7644BC1D2D85}");
    begin
        Hr := CoInitializeEx(NULL, 2);
        if Hr = 0 then
            Hr := CLRCreateInstance(CLSID_CLRMetaHost'access, IID_IClrMetaHost'access , Convert(this.m_ICLRMetaHost'Address));
            Hr := this.m_ICLRMetaHost.GetRuntime(Addr("v4.0.30319"), IID_IClrRuntimeInfo'access , Convert(this.m_IClrRuntimeInfo'Address));
            Hr := this.m_IClrRuntimeInfo.GetInterface(CLSID_ClrRuntimeHost'access, IID_IClrRuntimeHost'access , Convert(this.m_IClrRuntimeHost'Address));
            Hr := this.m_IClrRuntimeHost.Start;
            Hr := this.m_IClrRuntimeInfo.GetInterface(CLSID_CorRuntimeHost'access, IID_ICorRuntimeHost'access , Convert(this.m_ICorRuntimeHost'Address));
            Hr := this.m_ICorRuntimeHost.GetDefaultDomain(this.m_IUnknown'access);
            Hr := this.m_IUnknown.QueryInterface(IID_IAppDomain'access, Convert(this.m_IAppDomain'Address));
            Hr := CoCreateInstance(CLSID_IAdaMarshal'access , null , CLSCTX_INPROC_SERVER'Enum_rep , IID_IAdaMarshal'access, Convert(this.m_IAdaMarshal'Address));
            this.m_Initialized := true;
        end if;
    end;

    ----------------------------------------------------------------------------
    procedure Finalize(this : in out RuntimeHost) is
        Hr          : HRESULT := 0;
        RefCount    : ULONG;
    begin
        RefCount := this.m_IUnknown.Release;
        RefCount := this.m_IAdaMarshal.Release;
        RefCount := this.m_IAppDomain.Release;
        RefCount := this.m_ICorRuntimeHost.Release;
        Hr := this.m_IClrRuntimeHost.Stop;
        RefCount := this.m_IClrRuntimeHost.Release;
        RefCount := this.m_IClrRuntimeInfo.Release;
        RefCount := this.m_ICLRMetaHost.Release;
        this.m_Initialized := false;
        CoUninitialize;
    end;

    ----------------------------------------------------------------------------
    function IsAssemblyLoaded (this : in out RuntimeHost; AssemblyName : Wide_String) return boolean is
        Hr              : HRESULT := 0;
        RetVal          : boolean := false;
        InName          : BSTR := To_BSTR(AssemblyName);
        Name            : aliased BSTR;
    begin
        if this.m_Initialized = true then
            for Assembly of this.m_Assemblies loop
                Hr := Assembly.get_FullName(Name'access);
                if Hr = 0 then
                    Hr := VarBstrCmp(Name, InName, 0, 0);
                    if Hr = 1 then
                        RetVal := true;
                    end if;
                end if;
            end loop;
        else
            raise Runtime_Not_Initialized;
        end if;
        return RetVal;
    end;

--    ----------------------------------------------------------------------------
--    procedure LoadAssembly (this : in out RuntimeHost; AssemblyName : Wide_String) is
--        Hr              : HRESULT := 0;
--        Assembly        : aliased IAssembly_Ptr := null;
--    begin
--        if this.m_Initialized = true then
--            if this.m_IAppDomain /= null then
--                if IsAssemblyLoaded(this, AssemblyName) = false then
--                    Hr := this.m_IAppDomain.Load_2(To_BSTR(AssemblyName) , Assembly'access);
--                    if Hr = 0 then
--                        this.m_Assemblies.Append(Assembly);
--                    end if;
--                else
--                    raise Assembly_Already_Loaded;
--                end if;
--            end if;
--        else
--            raise Runtime_Not_Initialized;
--        end if;
--    end;

    ----------------------------------------------------------------------------
    function GetAssembly (this : in out RuntimeHost; AssemblyName : Wide_String) return IAssembly_Ptr is
        Hr              : HRESULT := 0;
        Assembly        : aliased IAssembly_Ptr := null;
        InName          : BSTR := To_BSTR(AssemblyName);
        Name            : aliased BSTR;
    begin
        if this.m_Initialized = true then
            for Item of this.m_Assemblies loop
                Hr := Item.get_FullName(Name'access);
                if Hr = 0 then
                    Hr := VarBstrCmp(Name, InName, 0, 0);
                    if Hr = 1 then
                        return Item;
                    end if;
                end if;
            end loop;
        else
            raise Runtime_Not_Initialized;
        end if;
        return Assembly;
    end;

    ----------------------------------------------------------------------------
    function LoadAssembly (this : in out RuntimeHost; AssemblyName : Wide_String) return IAssembly_Ptr is
        Hr              : HRESULT := 0;
        Assembly        : aliased IAssembly_Ptr := null;
    begin
        if this.m_Initialized = true then
            if this.m_IAppDomain /= null then
                if IsAssemblyLoaded(this, AssemblyName) = false then
                    Hr := this.m_IAppDomain.Load_2(To_BSTR(AssemblyName) , Assembly'access);
                    if Hr = 0 then
                        this.m_Assemblies.Append(Assembly);
                    end if;
                else
                    Assembly := GetAssembly(this, AssemblyName);
                end if;
            end if;
        else
            raise Runtime_Not_Initialized;
        end if;
        return Assembly;
    end;

    ----------------------------------------------------------------------------
    procedure UnloadAssembly (this : in out RuntimeHost; AssemblyName : Wide_String) is
        RefCount    : ULONG := 0;
    begin
        if this.m_Initialized = true then
            if IsAssemblyLoaded(this, AssemblyName) = true then
                null;
            end if;
        else
            raise Runtime_Not_Initialized;
        end if;
    end;

    ----------------------------------------------------------------------------
    procedure CreateInstance (this : in out Kind; AssemblyName : Wide_String; TypeName : Wide_String; Kind : IType_Ptr; Flags : UInt32; Parameters : access SAFEARRAY) is
        Hr          : HRESULT := 0;
        Runtime     : RuntimeHost := Instance;
        Name        : BSTR := To_BSTR(TypeName);
        Assembly    : aliased IAssembly_Ptr := null;
        Binder      : IBinder_Ptr := null;
        Target      : aliased VARIANT;
        NetRetVal   : aliased IUnknown_Ptr := null;
        function Convert is new ada.Unchecked_conversion(UInt32,BindingFlags);
    begin
        if Runtime.m_Initialized = true then
            if this = null then
                this := new Kind_Interface;
                VariantInit (Target'access);
                Hr := Runtime.m_IAdaMarshal.InvokeMethod2 (Kind, null, Convert(Flags) , Binder, Target, Parameters, NetRetval'access);
                SysFreeString (Name);
                if  Hr = 0 then
                    this.m_Object := To_Variant(NetRetval);
                    this.m_NetObject := NetRetVal;
                else
                    raise CreateInstance_Failed;
                end if;
            end if;
        else
            raise Runtime_Not_Initialized;
        end if;
    end;

    ----------------------------------------------------------------------------
    procedure SetObject (this : in out Kind; Object : VARIANT) is
        Hr          : HRESULT := 0;
        Runtime     : RuntimeHost := Instance;
    begin
        if Runtime.m_Initialized = true then
            if this = null then
                this := new Kind_Interface;
            end if;
            this.m_Object := Object;
        else
            raise Runtime_Not_Initialized;
        end if;
    end;

    ----------------------------------------------------------------------------
    procedure SetObject (this : in out Kind; Object : IUnknown_Ptr) is
        Hr          : HRESULT := 0;
        Runtime     : RuntimeHost := Instance;
    begin
        if Runtime.m_Initialized = true then
            if this = null then
                this := new Kind_Interface;
            end if;
            this.m_NetObject := Object;
        else
            raise Runtime_Not_Initialized;
        end if;
    end;

    ----------------------------------------------------------------------------
    function GetObject(this : in Kind) return VARIANT is
        Runtime     : RuntimeHost := Instance;
    begin
        if Runtime.m_Initialized = true then
            if this /= null then
                return this.m_Object;
            else
                raise Type_Not_Initialized;
            end if;
        else
            raise Runtime_Not_Initialized;
        end if;
    end;

    ----------------------------------------------------------------------------
    function GetObject(this : in Kind) return IUnknown_Ptr is
        Runtime     : RuntimeHost := Instance;
    begin
        if Runtime.m_Initialized = true then
            if this /= null then
                return this.m_NetObject;
            else
                raise Type_Not_Initialized;
            end if;
        else
            raise Runtime_Not_Initialized;
        end if;
    end;

    ----------------------------------------------------------------------------
    function CreateDelegate (this : in out Kind; Callback : System.Address; DelegateType : IType_Ptr) return IDelegate_Ptr is
        pragma suppress(all_checks);
        Hr          : HRESULT := 0;
        Runtime     : RuntimeHost := Instance;
        RetVal      : aliased IDelegate_Ptr := null;
        IUnknown    : IUnknown_Ptr := null;
    begin
        if Runtime.m_Initialized = true then
            if this = null then
                this := new Kind_Interface;
                Hr := Runtime.m_IAdaMarshal.GetDelegateForFunctionPointer (Callback, DelegateType, Retval'access);
                if Hr = 0 then
                    Hr := RetVal.QueryInterface (IID_IUnknown'Access, Convert (IUnknown'Address));
                    this.m_Object := To_Variant(IUnknown);
                    this.m_NetObject := IUnknown;
                else
                    raise InvokeMethod_Failed;
                end if;
            end if;
        else
            raise Runtime_Not_Initialized;
        end if;
        return RetVal;
    end;

    ----------------------------------------------------------------------------
    procedure DestroyInstance(this : in out Kind) is
        Hr          : HRESULT := 0;
        Runtime     : RuntimeHost := Instance;
    begin
        if Runtime.m_Initialized = true then
            null;
        else
            raise Runtime_Not_Initialized;
        end if;
    end;

    ----------------------------------------------------------------------------
    function CreateEnum (Kind : IType_Ptr; Value : Integer) return IUnknown_Ptr is
        Hr          : HRESULT := 0;
        Runtime     : RuntimeHost := Instance;
        RetVal      : aliased IUnknown_Ptr;
    begin
        if Runtime.m_Initialized = true then
            if kind /= null then
                Hr := Runtime.m_IAdaMarshal.CreateEnum(Kind, Interfaces.C.Int(Value), Retval'access);
            else
                raise Type_Not_Initialized;
            end if;
        else
            raise Runtime_Not_Initialized;
        end if;
        return RetVal;
    end;

    ----------------------------------------------------------------------------
    function InvokeMethod (kind : IType_ptr; Object : VARIANT; MethodName : BSTR ; Flags : UInt32 ; Parameters : access SAFEARRAY; IsValueType : Boolean) return VARIANT is
        pragma suppress(all_checks);
        Hr          : HRESULT := 0;
        Runtime     : RuntimeHost := Instance;
        p_Flags     : UInt32 := Flags;
        p_Binder    : access IBinder := null;
        RetVal      : aliased VARIANT;
        function Convert is new Ada.Unchecked_Conversion (UINT32 , BindingFlags);
    begin
        if Runtime.m_Initialized = true then
            if kind /= null then
                VariantInit (RetVal'access);
--                p_Flags := p_Flags or FlattenHierarchy'Enum_rep;
                if IsValueType then
                    Hr := Runtime.m_IAdaMarshal.InvokeMethodValue (Kind, MethodName, Convert(p_Flags), p_Binder, Object, Parameters, Retval'access);
                else
                    Hr := Runtime.m_IAdaMarshal.InvokeMethod (Kind, MethodName, Convert(p_Flags), p_Binder, Object, Parameters, Retval'access);
                end if;
                if Hr /= 0 then
                    raise InvokeMethod_Failed;
                end if;
            else
                raise Type_Not_Initialized;
            end if;
        else
            raise Runtime_Not_Initialized;
        end if;
        return RetVal;
    end;

    ----------------------------------------------------------------------------
    function InvokeMethod2 (kind : IType_ptr; Object : VARIANT; MethodName : BSTR ; Flags : UInt32 ; Parameters : access SAFEARRAY; NetRetVal : in out IUnknown_Ptr; IsValueType : Boolean) return VARIANT is
        pragma suppress(all_checks);
        Hr          : HRESULT := 0;
        Runtime     : RuntimeHost := Instance;
        p_NetRetVal : aliased IUnknown_Ptr := null;
        p_Flags     : UInt32 := Flags;
        p_Binder    : access IBinder := null;
        RetVal      : aliased VARIANT;
        function Convert is new Ada.Unchecked_Conversion (UINT32 , BindingFlags);
    begin
        if Runtime.m_Initialized = true then
            if kind /= null then
                VariantInit (RetVal'access);
--                p_Flags := p_Flags or FlattenHierarchy'Enum_rep;
                if IsValueType then
                    Hr := Runtime.m_IAdaMarshal.InvokeMethodValue2 (Kind, MethodName, Convert(p_Flags), p_Binder, Object, Parameters, p_NetRetval'access);
                else
                    Hr := Runtime.m_IAdaMarshal.InvokeMethod2 (Kind, MethodName, Convert(p_Flags), p_Binder, Object, Parameters, p_NetRetval'access);
                    if Hr = 0 then
                        Hr := Runtime.m_IAdaMarshal.GetNativeVariantForObject (p_NetRetVal, RetVal'access);
                    end if;
                end if;
                if Hr = 0 then
                    NetRetVal := p_NetRetVal;
                else
                    raise InvokeMethod_Failed;
                end if;
            else
                raise Type_Not_Initialized;
            end if;
        else
            raise Runtime_Not_Initialized;
        end if;
        return RetVal;
    end;

    ----------------------------------------------------------------------------
    function Addr (S : Wide_String) return LPWSTR is
        function To_LPWSTR is new Ada.Unchecked_Conversion (System.Address, LPWSTR);
    begin
        return To_LPWSTR (S (S'First)'Address);
    end;

    ----------------------------------------------------------------------------
    function Addr (S : Wide_String) return LPCWSTR is
        function To_LPCWSTR is new Ada.Unchecked_Conversion (System.Address, LPCWSTR);
    begin
        return To_LPCWSTR (S (S'First)'Address);
    end;

    ----------------------------------------------------------------------------
    function Addr (S : Wide_String) return LPOLESTR is
        function To_LPOLESTR is new Ada.Unchecked_Conversion (System.Address, LPOLESTR);
    begin
        return To_LPOLESTR (S (S'First)'Address);
    end;

    ----------------------------------------------------------------------------
    function To_BSTR (Value : Wide_String) return BSTR is
        Hr		: HRESULT := 0;
        Buffer  : LPOLESTR := Addr(Value);
        RetVal	: aliased BSTR;
    begin
        RetVal := SysAllocStringLen(Buffer, Value'Length);
        return RetVal;
    end;

    ----------------------------------------------------------------------------
    function To_Ada (Value : BSTR) return Wide_String is
        
        use Interfaces.C;

        function Convert is new Ada.Unchecked_Conversion (BSTR , System.Address);
        function Convert is new Ada.Unchecked_Conversion (System.Address , BSTR);
        
        function Peek(From : System.Address) return Wide_Character is
            Item    : BSTR := Convert(From);
        begin
            return Wide_Character (Item.all);
        end;

    begin
        if Value = null then
            return "";
        end if;

        declare
            Count   : UINT := SysStringLen(Value);
        begin
            if Count > 0 then
                declare
                    RetVal  : Wide_String (1..Integer(Count));
                begin
                    for i in RetVal'Range loop
                        RetVal(i) := Peek(Convert(Value) + System.Storage_Elements.Storage_Offset((i-1)*2));
                    end loop;
                    return RetVal;
                end;
            else
                return "";
            end if;
        end;
    end;

    ----------------------------------------------------------------------------
    function From_String (Value : Wide_String) return GUID is
        Hr		: HRESULT := 0;
        Buffer	: BSTR := To_BSTR(Value);
        RetVal	: aliased GUID;
    begin
        Hr := CLSIDFromString (LPCOLESTR(Buffer), RetVal'unchecked_access);
        SysFreeString(Buffer);
        return RetVal;
    end;

    ----------------------------------------------------------------------------
    function To_String (Value : GUID) return Wide_String is
        Hr		: HRESULT := 0;
        RetVal	: Wide_String := "";
    begin
        return RetVal;
    end;

    ----------------------------------------------------------------------------
    function To_Variant (Value : IUnknown_Ptr; ByRef : Standard.Boolean := False) return VARIANT is
        use Interfaces.C;
        function Convert is new Ada.Unchecked_Conversion (IUnknown_Ptr, LONGLONG);
        Hr          : HRESULT := 0;
        RetVal      : aliased VARIANT;
    begin
        VariantInit(RetVal'access);
        RetVal.field_1.field_1.vt := VT_UNKNOWN'Enum_rep ;
        if ByRef = true then
            RetVal.field_1.field_1.vt := RetVal.field_1.field_1.vt + VT_BYREF'Enum_rep;
        end if;
        RetVal.Field_1.field_1.field_1.llVal := Convert(Value);
        return RetVal;
    end;

    function To_Variant (Value : IDispatch_Ptr; ByRef : Standard.Boolean := False) return VARIANT is
        use Interfaces.C;
        function Convert is new Ada.Unchecked_Conversion (IDispatch_Ptr, LONGLONG);
        Hr          : HRESULT := 0;
        RetVal      : aliased VARIANT;
    begin
        VariantInit(RetVal'access);
        RetVal.field_1.field_1.vt := VT_DISPATCH'Enum_rep ;
        if ByRef = true then
            RetVal.field_1.field_1.vt := RetVal.field_1.field_1.vt + VT_BYREF'Enum_rep;
        end if;
        RetVal.Field_1.field_1.field_1.llVal := Convert(Value);
        return RetVal;
    end;

    function To_Variant (Value : UInt8; ByRef : Standard.Boolean := False) return VARIANT is
        use Interfaces.C;
        function Convert is new Ada.Unchecked_Conversion (UInt8, NetFrameworkWin32.BYTE);
        Hr          : HRESULT := 0;
        RetVal      : aliased VARIANT;
    begin
        VariantInit(RetVal'access);
        RetVal.field_1.field_1.vt := VT_UI1'Enum_rep ;
        if ByRef = true then
            RetVal.field_1.field_1.vt := RetVal.field_1.field_1.vt + VT_BYREF'Enum_rep;
        end if;
        RetVal.Field_1.field_1.field_1.bVal := Convert(Value);
        return RetVal;
    end;

    function To_Variant (Value : UInt16; ByRef : Standard.Boolean := False) return VARIANT is
        use Interfaces.C;
        function Convert is new Ada.Unchecked_Conversion (UInt16, Interfaces.C.unsigned_short);
        Hr          : HRESULT := 0;
        RetVal      : aliased VARIANT;
    begin
        VariantInit(RetVal'access);
        RetVal.field_1.field_1.vt := VT_UI2'Enum_rep ;
        if ByRef = true then
            RetVal.field_1.field_1.vt := RetVal.field_1.field_1.vt + VT_BYREF'Enum_rep;
        end if;
        RetVal.Field_1.field_1.field_1.uiVal := Convert(Value);
        return RetVal;
    end;

    function To_Variant (Value : UInt32; ByRef : Standard.Boolean := False) return VARIANT is
        use Interfaces.C;
        function Convert is new Ada.Unchecked_Conversion (UInt32, Interfaces.C.unsigned_long);
        Hr          : HRESULT := 0;
        RetVal      : aliased VARIANT;
    begin
        VariantInit(RetVal'access);
        RetVal.field_1.field_1.vt := VT_UI4'Enum_rep ;
        if ByRef = true then
            RetVal.field_1.field_1.vt := RetVal.field_1.field_1.vt + VT_BYREF'Enum_rep;
        end if;
        RetVal.Field_1.field_1.field_1.ulVal := Convert(Value);
        return RetVal;
    end;

    function To_Variant (Value : UInt64; ByRef : Standard.Boolean := False) return VARIANT is
        use Interfaces.C;
        function Convert is new Ada.Unchecked_Conversion (UInt64, Interfaces.C.Extensions.unsigned_long_long);
        Hr          : HRESULT := 0;
        RetVal      : aliased VARIANT;
    begin
        VariantInit(RetVal'access);
        RetVal.field_1.field_1.vt := VT_UI8'Enum_rep ;
        if ByRef = true then
            RetVal.field_1.field_1.vt := RetVal.field_1.field_1.vt + VT_BYREF'Enum_rep;
        end if;
        RetVal.Field_1.field_1.field_1.ullVal := Convert(Value);
        return RetVal;
    end;

    function To_Variant (Value : Int8; ByRef : Standard.Boolean := False) return VARIANT is
        use Interfaces.C;
        function Convert is new Ada.Unchecked_Conversion (Int8, NetFrameworkWin32.CHAR);
        Hr          : HRESULT := 0;
        RetVal      : aliased VARIANT;
    begin
        VariantInit(RetVal'access);
        RetVal.field_1.field_1.vt := VT_I1'Enum_rep ;
        if ByRef = true then
            RetVal.field_1.field_1.vt := RetVal.field_1.field_1.vt + VT_BYREF'Enum_rep;
        end if;
        RetVal.Field_1.field_1.field_1.cVal := Convert(Value);
        return RetVal;
    end;

    function To_Variant (Value : Int16; ByRef : Standard.Boolean := False) return VARIANT is
        use Interfaces.C;
        function Convert is new Ada.Unchecked_Conversion (Int16, Interfaces.C.short);
        Hr          : HRESULT := 0;
        RetVal      : aliased VARIANT;
    begin
        VariantInit(RetVal'access);
        RetVal.field_1.field_1.vt := VT_I2'Enum_rep ;
        if ByRef = true then
            RetVal.field_1.field_1.vt := RetVal.field_1.field_1.vt + VT_BYREF'Enum_rep;
        end if;
        RetVal.Field_1.field_1.field_1.iVal := Convert(Value);
        return RetVal;
    end;

    function To_Variant (Value : Int32; ByRef : Standard.Boolean := False) return VARIANT is
        use Interfaces.C;
        function Convert is new Ada.Unchecked_Conversion (Int32, Interfaces.C.long);
        Hr          : HRESULT := 0;
        RetVal      : aliased VARIANT;
    begin
        VariantInit(RetVal'access);
        RetVal.field_1.field_1.vt := VT_I4'Enum_rep ;
        if ByRef = true then
            RetVal.field_1.field_1.vt := RetVal.field_1.field_1.vt + VT_BYREF'Enum_rep;
        end if;
        RetVal.Field_1.field_1.field_1.lVal := Convert(Value);
        return RetVal;
    end;

    function To_Variant (Value : Int64; ByRef : Standard.Boolean := False) return VARIANT is
        use Interfaces.C;
        function Convert is new Ada.Unchecked_Conversion (Int64, Long_Long_Integer);
        Hr          : HRESULT := 0;
        RetVal      : aliased VARIANT;
    begin
        VariantInit(RetVal'access);
        RetVal.field_1.field_1.vt := VT_I8'Enum_rep ;
        if ByRef = true then
            RetVal.field_1.field_1.vt := RetVal.field_1.field_1.vt + VT_BYREF'Enum_rep;
        end if;
        RetVal.Field_1.field_1.field_1.llVal := Convert(Value);
        return RetVal;
    end;

    function To_Variant (Value : Single; ByRef : Standard.Boolean := False) return VARIANT is
        use Interfaces.C;
        function Convert is new Ada.Unchecked_Conversion (Single, Float);
        Hr          : HRESULT := 0;
        RetVal      : aliased VARIANT;
    begin
        VariantInit(RetVal'access);
        RetVal.field_1.field_1.vt := VT_R4'Enum_rep ;
        if ByRef = true then
            RetVal.field_1.field_1.vt := RetVal.field_1.field_1.vt + VT_BYREF'Enum_rep;
        end if;
        RetVal.Field_1.field_1.field_1.fltVal := Float(Value);
        return RetVal;
    end;

    function To_Variant (Value : Double; ByRef : Standard.Boolean := False) return VARIANT is
        use Interfaces.C;
        Hr          : HRESULT := 0;
        RetVal      : aliased VARIANT;
    begin
        VariantInit(RetVal'access);
        RetVal.field_1.field_1.vt := VT_R8'Enum_rep ;
        if ByRef = true then
            RetVal.field_1.field_1.vt := RetVal.field_1.field_1.vt + VT_BYREF'Enum_rep;
        end if;
        RetVal.Field_1.field_1.field_1.dblVal := Value;
        return RetVal;
    end;

    function To_Variant (Value : DATE; ByRef : Standard.Boolean := False) return VARIANT is
        use Interfaces.C;
        Hr          : HRESULT := 0;
        RetVal      : aliased VARIANT;
    begin
        VariantInit(RetVal'access);
        RetVal.field_1.field_1.vt := VT_DATE'Enum_rep ;
        if ByRef = true then
            RetVal.field_1.field_1.vt := RetVal.field_1.field_1.vt + VT_BYREF'Enum_rep;
        end if;
        RetVal.Field_1.field_1.field_1.dblVal := Standard.Long_Float(Value);
        return RetVal;
    end;

    function To_Variant (Value : BSTR; ByRef : Standard.Boolean := False) return VARIANT is
        use Interfaces.C;
        Hr          : HRESULT := 0;
        RetVal      : aliased VARIANT;
    begin
        VariantInit(RetVal'access);
        RetVal.field_1.field_1.vt := VT_BSTR'Enum_rep ;
        if ByRef = true then
            RetVal.field_1.field_1.vt := RetVal.field_1.field_1.vt + VT_BYREF'Enum_rep;
        end if;
        RetVal.Field_1.field_1.field_1.bstrVal := Value;
        return RetVal;
    end;

    function To_Variant (Value : Boolean; ByRef : Standard.Boolean := False) return VARIANT is
        use Interfaces.C;

        Hr          : HRESULT := 0;
        RetVal      : aliased VARIANT;
    begin
        VariantInit(RetVal'access);
        RetVal.field_1.field_1.vt := VT_BOOL'Enum_rep ;
        if ByRef = true then
            RetVal.field_1.field_1.vt := RetVal.field_1.field_1.vt + VT_BYREF'Enum_rep;
        end if;

        if Value = true then
            RetVal.Field_1.field_1.field_1.boolVal := -1;
        else
            RetVal.Field_1.field_1.field_1.boolVal := 0;
        end if;

        return RetVal;
    end;

    function To_Variant (Value : IntPtr; ByRef : Standard.Boolean := False) return VARIANT is
        use Interfaces.C;
        function Convert is new Ada.Unchecked_Conversion (IntPtr, Long_Long_Integer);
        Hr          : HRESULT := 0;
        RetVal      : aliased VARIANT;
    begin
        VariantInit(RetVal'access);
        RetVal.field_1.field_1.vt := VT_INT_PTR'Enum_rep ;
        RetVal.Field_1.field_1.field_1.llVal := Convert(Value);
        return RetVal;
    end;

    function To_Variant (Value : UIntPtr; ByRef : Standard.Boolean := False) return VARIANT is
        use Interfaces.C;
        function Convert is new Ada.Unchecked_Conversion (UIntPtr, Interfaces.C.Extensions.unsigned_long_long);
        Hr          : HRESULT := 0;
        RetVal      : aliased VARIANT;
    begin
        VariantInit(RetVal'access);
        RetVal.field_1.field_1.vt := VT_UINT_PTR'Enum_rep ;
        RetVal.Field_1.field_1.field_1.ullVal := Convert(Value);
        return RetVal;
    end;
   
    function To_Variant (Value : Wide_Char; ByRef : Standard.Boolean := False) return VARIANT is
        use Interfaces.C;
        function Convert is new Ada.Unchecked_Conversion (NetFrameworkWin32.Wide_Char, Interfaces.C.unsigned_short);
        Hr          : HRESULT := 0;
        RetVal      : aliased VARIANT;
    begin
        VariantInit(RetVal'access);
        RetVal.field_1.field_1.vt := VT_UI2'Enum_rep ;
        if ByRef = true then
            RetVal.field_1.field_1.vt := RetVal.field_1.field_1.vt + VT_BYREF'Enum_rep;
        end if;
        RetVal.Field_1.field_1.field_1.uiVal := Convert(Value);
        return RetVal;
    end;

    function To_Variant (Value : LPSAFEARRAY; MemberType : VARENUM) return VARIANT is
        use Interfaces.C;
        Hr          : HRESULT := 0;
        RetVal      : aliased VARIANT;
    begin
        VariantInit(RetVal'access);
        RetVal.field_1.field_1.vt := VT_ARRAY'Enum_rep ;
        RetVal.field_1.field_1.vt := RetVal.field_1.field_1.vt or MemberType'Enum_rep ;
        RetVal.Field_1.field_1.field_1.parray := Value;
        return RetVal;
    end;

    ----------------------------------------------------------------------------
    function From_Variant (Value : VARIANT) return IUnknown_Ptr is
        use Interfaces.C;

        Hr          : HRESULT := 0;
        RetVal      : IUnknown_Ptr := null;
    begin
        if Value.field_1.field_1.vt = 13 or Value.field_1.field_1.vt = 9 then
            Hr := Value.Field_1.field_1.field_1.pUnkVal.QueryInterface(IID_IUnknown'access, Convert(RetVal'Address));
        end if;
        return RetVal;
    end;

    function From_Variant (Value : VARIANT) return IDispatch_Ptr is
        use Interfaces.C;

        Hr          : HRESULT := 0;
        RetVal      : IDispatch_Ptr := null;
    begin
        if Value.field_1.field_1.vt = 13 or Value.field_1.field_1.vt = 9 then
            Hr := Value.Field_1.field_1.field_1.pdispVal.QueryInterface(IID_IDispatch'access, Convert(RetVal'Address));
        end if;
        return RetVal;
    end;

    function From_Variant (Value : VARIANT) return UInt8 is
    begin
        return Value.Field_1.field_1.field_1.bVal;
    end;

    function From_Variant (Value : VARIANT) return UInt16 is
        function Convert is new Ada.Unchecked_Conversion (Interfaces.C.unsigned_short, UInt16);
    begin
        return Convert(Value.Field_1.field_1.field_1.uiVal);
    end;

    function From_Variant (Value : VARIANT) return UInt32 is
        function Convert is new Ada.Unchecked_Conversion (Interfaces.C.unsigned_long, UInt32);
    begin
        return Convert(Value.Field_1.field_1.field_1.ulVal);
    end;

    function From_Variant (Value : VARIANT) return Uint64 is
        function Convert is new Ada.Unchecked_Conversion (Interfaces.C.Extensions.unsigned_long_long, UInt64);
    begin
        return Convert(Value.Field_1.field_1.field_1.ullVal);
    end;

    function From_Variant (Value : VARIANT) return Int8 is
        function Convert is new Ada.Unchecked_Conversion (Standard.Character, Int8);
    begin
        return Convert(Value.Field_1.field_1.field_1.cVal);
    end;

    function From_Variant (Value : VARIANT) return Int16 is
        function Convert is new Ada.Unchecked_Conversion (Interfaces.C.short, Int16);
    begin
        return Convert(Value.Field_1.field_1.field_1.iVal);
    end;

    function From_Variant (Value : VARIANT) return Int32 is
        function Convert is new Ada.Unchecked_Conversion (Interfaces.C.long, Int32);
    begin
        return Convert(Value.Field_1.field_1.field_1.lVal);
    end;

    function From_Variant (Value : VARIANT) return Int64 is
        function Convert is new Ada.Unchecked_Conversion (Standard.long_Long_Integer, Int64);
    begin
        return Convert(Value.Field_1.field_1.field_1.llVal);
    end;

    function From_Variant (Value : VARIANT) return Single is
        function Convert is new Ada.Unchecked_Conversion (Standard.Float, Single);
    begin
        return Convert(Value.Field_1.field_1.field_1.fltVal);
    end;

    function From_Variant (Value : VARIANT) return Double is
    begin
        return Value.Field_1.field_1.field_1.dblVal;
    end;

    function From_Variant (Value : VARIANT) return Date is
    begin
        return Date(Value.Field_1.field_1.field_1.dblVal);
    end;

    function From_Variant (Value : VARIANT) return BSTR is
    begin
        return Value.Field_1.field_1.field_1.bstrVal;
    end;

    function From_Variant (Value : VARIANT) return Boolean is
        use type Interfaces.C.Short;
    begin
        if Value.Field_1.field_1.field_1.boolVal = 0 then
            return false;
        else
            return true;
        end if;
    end;

    function From_Variant (Value : VARIANT) return IntPtr is
        function Convert is new Ada.Unchecked_Conversion (Standard.Long_Long_Integer, IntPtr);
    begin
        return Convert(Value.Field_1.field_1.field_1.llVal);
    end;

    function From_Variant (Value : VARIANT) return UIntPtr is
        function Convert is new Ada.Unchecked_Conversion (Interfaces.C.Extensions.unsigned_long_long, UIntPtr);
    begin
        return Convert(Value.Field_1.field_1.field_1.ullVal);
    end;

    function From_Variant (Value : VARIANT) return Wide_Char is
        function Convert is new Ada.Unchecked_Conversion (Interfaces.C.unsigned_short, Standard.Wide_Character);
    begin
        return Convert(Value.Field_1.field_1.field_1.uiVal);
    end;

    function From_Variant (Value : VARIANT) return LPSAFEARRAY is
    begin
        return Value.Field_1.field_1.field_1.parray;
    end;

    ----------------------------------------------------------------------------
   procedure OutputDebugString(OutputString : Standard.String) is
      
      procedure OutputDebugStringA(OutputString : Interfaces.C.char_array);
      pragma import (stdcall,  OutputDebugStringA, "OutputDebugStringA");

      CRLF : constant Standard.String := ASCII.CR & ASCII.LF;

   begin
      OutputDebugStringA(Interfaces.C.To_C(OutputString & CRLF));
   end;

end NetFrameworkAdaRuntime;