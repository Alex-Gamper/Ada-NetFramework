--------------------------------------------------------------------------------
with System;
--------------------------------------------------------------------------------
package WinMainStartup is

    ----------------------------------------------------------------------------
    function  WinMain (hInstance : System.Address; hPrevInstance : System.Address; lpCmdLine : System.Address; nCmdShow : Integer ) return Integer;

    pragma export(C,WinMain,"WinMain");

end;