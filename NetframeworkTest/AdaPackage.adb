--------------------------------------------------------------------------------
package body AdaPackage is

    procedure Callback (state : NetFrameworkWin32.IUnknown_Ptr) is
    begin
        NetFrameworkAdaRuntime.OutputDebugString ("OnCallback\n");
    end;

end AdaPackage;