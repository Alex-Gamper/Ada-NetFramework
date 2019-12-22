--------------------------------------------------------------------------------
package body WinMainStartup is

    ----------------------------------------------------------------------------
    function  WinMain (hInstance : System.Address; hPrevInstance : System.Address; lpCmdLine : System.Address; nCmdShow : Integer ) return Integer is
        procedure main;
        pragma import(C,main,"main");
    begin
        main;
        return 0;
    end;

end;