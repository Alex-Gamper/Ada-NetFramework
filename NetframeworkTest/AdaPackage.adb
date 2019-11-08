--------------------------------------------------------------------------------
package body AdaPackage is

    procedure Callback (state : NetFrameworkBase.System.Object.Kind_Ptr) is
    begin
        NetFrameworkAdaRuntime.OutputDebugString ("OnCallback");
    end;

end AdaPackage;