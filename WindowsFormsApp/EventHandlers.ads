--------------------------------------------------------------------------------
with NetFramework.System;
--------------------------------------------------------------------------------
package EventHandlers is

    procedure OnLoad (sender : NetFramework.System.Object; e : NetFramework.System.EventArgs);
    procedure OnFileMenuOpen (sender : NetFramework.System.Object; e : NetFramework.System.EventArgs);
    procedure OnFileMenuClose (sender : NetFramework.System.Object; e : NetFramework.System.EventArgs);
    procedure OnFileMenuExit (sender : NetFramework.System.Object; e : NetFramework.System.EventArgs);
    procedure OnButton1 (sender : NetFramework.System.Object; e : NetFramework.System.EventArgs);
    procedure OnButton2 (sender : NetFramework.System.Object; e : NetFramework.System.EventArgs);
    procedure OnButton3 (sender : NetFramework.System.Object; e : NetFramework.System.EventArgs);

end EventHandlers;