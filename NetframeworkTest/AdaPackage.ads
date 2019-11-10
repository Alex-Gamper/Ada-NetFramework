--------------------------------------------------------------------------------
with NetFrameworkWin32;
with NetFrameworkAdaRuntime;
with NetFrameworkBase.System.Object;
with NetFramework;
--------------------------------------------------------------------------------
package AdaPackage is

    ----------------------------------------------------------------------------
    procedure Callback (state : NetFrameworkBase.System.Object.Kind_Ptr);

    m_Char      : aliased NetFramework.Wide_Char := 'A';

end AdaPackage;