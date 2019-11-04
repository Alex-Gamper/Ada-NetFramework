--------------------------------------------------------------------------------
package body AdaPackage is

    procedure Callback (state : NetFrameworkWin32.IUnknown_Ptr) is
    begin
        NetFrameworkAdaRuntime.OutputDebugString ("OnCallback");
    end;

end AdaPackage;