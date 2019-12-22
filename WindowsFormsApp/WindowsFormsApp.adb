--------------------------------------------------------------------------------
with Ada.Exceptions;
with Ada.Real_Time;
with EventHandlers;

with NetFrameworkWin32;
with NetFrameworkAdaRuntime;
with NetFrameworkBase.System.Drawing.KnownColor;
with NetFrameworkBase.System.Windows.Forms.Application;
with NetFrameworkBase.System.Windows.Forms.Control.ControlCollection;
with NetFramework;
with NetFramework.System.Drawing;
with NetFramework.System.Windows.Forms;

with WinMainStartup;                            use WinMainStartup;
--------------------------------------------------------------------------------
procedure WindowsFormsApp is

    package NfS renames  NetFramework.System;
    package NfSWF renames  NfS.Windows.Forms;

    m_Runtime   : NetFrameworkAdaRuntime.RuntimeHost := NetFrameworkAdaRuntime.Instance;

begin

    NetFrameworkAdaRuntime.Initialize (m_Runtime);

    declare

        use NetFrameworkAdaRuntime;
        use NetFrameworkBase.System.Drawing.KnownColor;

        m_Form              : NfSWF.Form := NfSWF.Constructor;
        m_OnLoad            : NfS.EventHandler := Nfs.Constructor (EventHandlers.OnLoad'access);
        m_OnFileMenuOpen    : NfS.EventHandler := Nfs.Constructor (EventHandlers.OnFileMenuOpen'access);
        m_OnFileMenuClose   : NfS.EventHandler := Nfs.Constructor (EventHandlers.OnFileMenuClose'access);
        m_OnFileMenuExit    : NfS.EventHandler := Nfs.Constructor (EventHandlers.OnFileMenuExit'access);
        m_Size              : NfS.Drawing.Size := NfS.Drawing.Constructor (1024, 768);
        m_Controls          : NetFrameworkBase.System.Windows.Forms.Control.ControlCollection.Kind_Ptr := m_Form.Controls;
        m_MenuStrip         : NfSWF.MenuStrip := NfSWF.Constructor;
        m_MenuStripItems    : NfSWF.ToolStripItemCollection := m_MenuStrip.Items;
            m_FileMenu      : NfSWF.ToolStripMenuItem := NfSWF.Constructor(To_BSTR("File"));
            m_FileMenuItems : NfSWF.ToolStripItemCollection := m_FileMenu.DropDownItems;
                m_OpenMenu  : NfSWF.ToolStripMenuItem := NfSWF.Constructor(To_BSTR("Open"));
                m_CloseMenu : NfSWF.ToolStripMenuItem := NfSWF.Constructor(To_BSTR("Close"));
                m_ExitMenu  : NfSWF.ToolStripMenuItem := NfSWF.Constructor(To_BSTR("Exit"));
        m_ToolStrip         : NfSWF.ToolStrip := NfSWF.Constructor;
        m_ToolStripItems    : NfSWF.ToolStripItemCollection := m_ToolStrip.Items;
            m_Button1       : NfSWF.ToolStripButton := NfSWF.Constructor (To_BSTR("Button 1"));
            m_Button2       : NfSWF.ToolStripButton := NfSWF.Constructor (To_BSTR("Button 2"));
            m_Button3       : NfSWF.ToolStripButton := NfSWF.Constructor (To_BSTR("Button 3"));
        m_OnButton1         : NfS.EventHandler := Nfs.Constructor (EventHandlers.OnButton1'access);
        m_OnButton2         : NfS.EventHandler := Nfs.Constructor (EventHandlers.OnButton2'access);
        m_OnButton3         : NfS.EventHandler := Nfs.Constructor (EventHandlers.OnButton3'access);
        m_StatusBar         : NfSWF.StatusBar := NfSWF.Constructor;

        Index               : NetFramework.Int32;

        task Timer is
            entry Stop;
        end;

        task body Timer is
            use Ada.Real_Time;

            Epoch   : constant Ada.Real_Time.Time := Ada.Real_Time.Clock;
            Text    : NetFramework.BSTR;

            function Elapsed_Time return Wide_String is
            begin
                return Duration'Wide_Image (Ada.Real_Time.To_Duration (Ada.Real_Time.Clock - Epoch));
            end;

        begin
            loop
                select
                    accept Stop;
                    exit;
                or
                    delay 0.01;
                    Text := To_BSTR (Elapsed_Time);
                    m_StatusBar.Text (Text);
                    NetFrameworkWin32.SysFreeString (Text);
                end select;
            end loop;
        end;

    begin
        NetframeworkBase.System.Windows.Forms.Application.EnableVisualStyles;

        m_Form.SuspendLayout;
        
        m_OpenMenu.add_Click (m_OnFileMenuOpen);
        m_CloseMenu.add_Click (m_OnFileMenuClose);
        m_ExitMenu.add_Click (m_OnFileMenuExit);

        m_Button1.add_Click (m_OnButton1);
        m_Button2.add_Click (m_OnButton2);
        m_Button3.add_Click (m_OnButton3);

        Index := m_MenuStripItems.Add (NfSWF.ToolStripItem(m_FileMenu));
        Index := m_FileMenuItems.Add (NfSWF.ToolStripItem(m_OpenMenu));
        Index := m_FileMenuItems.Add (NfSWF.ToolStripItem(m_CloseMenu));
        Index := m_FileMenuItems.Add (NfSWF.ToolStripItem(m_ExitMenu));

        Index := m_ToolStripItems.Add (NfSWF.ToolStripItem(m_Button1));
        Index := m_ToolStripItems.Add (NfSWF.ToolStripItem(m_Button2));
        Index := m_ToolStripItems.Add (NfSWF.ToolStripItem(m_Button3));

        m_Controls.Add (NfSWF.Control (m_ToolStrip));
        m_Controls.Add (NfSWF.Control (m_MenuStrip));
        m_Controls.Add (NfSWF.Control (m_StatusBar));

        m_Form.IsMdiContainer (true);
        m_Form.Text (To_BSTR("WinForm application written in Ada"));
        m_Form.Size (m_Size);
        m_Form.add_Load (m_OnLoad);
        m_Form.ResumeLayout(false);
        m_Form.PerformLayout;
        m_StatusBar.Text (To_BSTR ("qwerty"));
        NetFrameworkBase.System.Windows.Forms.Application.Run (m_Form);
        Timer.Stop;
    end;

    NetFrameworkAdaRuntime.Finalize (m_Runtime);

exception

    when Error : others =>
        NetFrameworkAdaRuntime.OutputDebugString (Ada.Exceptions.Exception_Name (Error));
        NetFrameworkAdaRuntime.OutputDebugString (Ada.Exceptions.Exception_Message (Error));
        NetFrameworkAdaRuntime.OutputDebugString (Ada.Exceptions.Exception_Information (Error));

end;