Add-Type -AssemblyName System.Windows.Forms

$form = New-Object System.Windows.Forms.Form
$form.Size = New-Object System.Drawing.Size(630,440)
$form.Text = "Windows Optimizer"
$form.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle



$mainMenu = New-Object System.Windows.Forms.MainMenu
$form.Menu = $mainMenu


$fileMenu = New-Object System.Windows.Forms.MenuItem
$fileMenu.Text = "File"
$mainMenu.MenuItems.Add($fileMenu)


$exitMenuItem = New-Object System.Windows.Forms.MenuItem
$exitMenuItem.Text = "Exit"
$exitMenuItem.Add_Click({

    $form.Close()
})
$fileMenu.MenuItems.Add($exitMenuItem)

$aboutMenu = New-Object System.Windows.Forms.MenuItem
$aboutMenu.Text = "About"
$mainMenu.MenuItems.Add($aboutMenu)


$aboutMenuItem = New-Object System.Windows.Forms.MenuItem
$aboutMenuItem.Text = "About"
$aboutMenuItem.Add_Click({
    
    [System.Windows.Forms.MessageBox]::Show("       Mapek Debloater for Windows 7-11" + [Environment]::NewLine + "                              Freeware" + [Environment]::NewLine + "                  v0.1.2 Copyright 2023", "About")
})
$aboutMenu.MenuItems.Add($aboutMenuItem)


$tabControl = New-Object System.Windows.Forms.TabControl
$tabControl.Dock = [System.Windows.Forms.DockStyle]::Fill


$tabPage1 = New-Object System.Windows.Forms.TabPage
$tabPage1.Text = "Command Prompt"
$tabPage2 = New-Object System.Windows.Forms.TabPage
$tabPage2.Text = "Powershell"
$tabPage3 = New-Object System.Windows.Forms.TabPage
$tabPage3.Text = "Networking"
$tabPage4 = New-Object System.Windows.Forms.TabPage
$tabPage4.Text = "Websites"
$tabPage5 = New-Object System.Windows.Forms.TabPage
$tabPage5.Text = "More..."


$label = New-Object System.Windows.Forms.Label
$label.Text = "Command Prompt (CMD)"
$label.Location = New-Object System.Drawing.Point(210,10)
$label.Size = New-Object System.Drawing.Size(200,25)
$label.Font = New-Object System.Drawing.Font("Arial",16,[System.Drawing.FontStyle]::Bold)
$tabPage1.Controls.Add($label)

$labela = New-Object System.Windows.Forms.Label
$labela.Text = "Powershell"
$labela.Location = New-Object System.Drawing.Point(250,10)
$labela.Size = New-Object System.Drawing.Size(200,25)
$labela.Font = New-Object System.Drawing.Font("Arial",16,[System.Drawing.FontStyle]::Bold)
$tabPage2.Controls.Add($labela)

$labelb = New-Object System.Windows.Forms.Label
$labelb.Text = "Networking"
$labelb.Location = New-Object System.Drawing.Point(250,10)
$labelb.Size = New-Object System.Drawing.Size(200,25)
$labelb.Font = New-Object System.Drawing.Font("Arial",16,[System.Drawing.FontStyle]::Bold)
$tabPage3.Controls.Add($labelb)

$label10 = New-Object System.Windows.Forms.Label
$label10.Text = "CLI"
$label10.Location = New-Object System.Drawing.Point(20,50)
$label10.Size = New-Object System.Drawing.Size(200,25)
$label10.Font = New-Object System.Drawing.Font("Arial",12,[System.Drawing.FontStyle]::Bold)
$tabPage1.Controls.Add($label10)

$label11 = New-Object System.Windows.Forms.Label
$label11.Text = "Applets"
$label11.Location = New-Object System.Drawing.Point(350,50)
$label11.Size = New-Object System.Drawing.Size(200,25)
$label11.Font = New-Object System.Drawing.Font("Arial",12,[System.Drawing.FontStyle]::Bold)
$tabPage1.Controls.Add($label11)



$button1 = New-Object System.Windows.Forms.Button
$button1.Text = "Lists All Installed Drivers"
$button1.Location = New-Object System.Drawing.Point(20,80)
$button1.Size = New-Object System.Drawing.Size(250,25)
$button1.Add_Click({
   Start-Process cmd -ArgumentList '/c title Optimizer & driverquery & pause'
})
$tabPage1.Controls.Add($button1)

$button2 = New-Object System.Windows.Forms.Button
$button2.Text = "Shows Your PC's Details"
$button2.Location = New-Object System.Drawing.Point(20,110)
$button2.Size = New-Object System.Drawing.Size(250,25)
$button2.Add_Click({
     Start-Process cmd -ArgumentList '/c title Optimizer & systeminfo & pause'
})
$tabPage1.Controls.Add($button2)

$button3 = New-Object System.Windows.Forms.Button
$button3.Text = "System File Checker"
$button3.Location = New-Object System.Drawing.Point(20,140)
$button3.Size = New-Object System.Drawing.Size(250,25)
$button3.Add_Click({
   Start-Process cmd -ArgumentList '/c title Optimizer & sfc /scannow & pause '
    $form.Controls["verboseLabel"].Text = "Running sfc /scannow"
})
$tabPage1.Controls.Add($button3)

$button4 = New-Object System.Windows.Forms.Button
$button4.Text = "Shows the Version of the OS"
$button4.Location = New-Object System.Drawing.Point(20,170)
$button4.Size = New-Object System.Drawing.Size(250,25)
$button4.Add_Click({
   Start-Process cmd -ArgumentList '/c title Optimizer & ver & pause '
    $form.Controls["verboseLabel"].Text = "Showing the verison of the OS"
})
$tabPage1.Controls.Add($button4)

$button5 = New-Object System.Windows.Forms.Button
$button5.Text = "Shows Open Programs"
$button5.Location = New-Object System.Drawing.Point(20,200)
$button5.Size = New-Object System.Drawing.Size(250,25)
$button5.Add_Click({
   Start-Process cmd -ArgumentList '/c title Optimizer & tasklist & pause '
    $form.Controls["verboseLabel"].Text = "Showing the verison of the OS"
})
$tabPage1.Controls.Add($button5)

# Built-in apps windows xd

$button6 = New-Object System.Windows.Forms.Button
$button6.Text = "Services"
$button6.Location = New-Object System.Drawing.Point(350,80)
$button6.Size = New-Object System.Drawing.Size(250,25)
$button6.Add_Click({
   Start-Process services.msc
})
$tabPage1.Controls.Add($button6)

$button7 = New-Object System.Windows.Forms.Button
$button7.Text = "System Properties"
$button7.Location = New-Object System.Drawing.Point(350,110)
$button7.Size = New-Object System.Drawing.Size(250,25)
$button7.Add_Click({
   Start-Process sysdm.cpl
})
$tabPage1.Controls.Add($button7)

$button8 = New-Object System.Windows.Forms.Button
$button8.Text = "Disk Cleanup"
$button8.Location = New-Object System.Drawing.Point(350,140)
$button8.Size = New-Object System.Drawing.Size(250,25)
$button8.Add_Click({
   Start-Process cleanmgr.exe
})
$tabPage1.Controls.Add($button8)

$button9 = New-Object System.Windows.Forms.Button
$button9.Text = "DirectX Diagnostic Tool"
$button9.Location = New-Object System.Drawing.Point(350,170)
$button9.Size = New-Object System.Drawing.Size(250,25)
$button9.Add_Click({
   Start-Process dxdiag.exe
})
$tabPage1.Controls.Add($button9)

$button10 = New-Object System.Windows.Forms.Button
$button10.Text = "IExpress Wizard"
$button10.Location = New-Object System.Drawing.Point(350,200)
$button10.Size = New-Object System.Drawing.Size(250,25)
$button10.Add_Click({
   Start-Process iexpress.exe
})
$tabPage1.Controls.Add($button10)

$button11 = New-Object System.Windows.Forms.Button
$button11.Text = "Optional Features"
$button11.Location = New-Object System.Drawing.Point(350,230)
$button11.Size = New-Object System.Drawing.Size(250,25)
$button11.Add_Click({
   Start-Process OptionalFeatures.exe
})
$tabPage1.Controls.Add($button11)

$button12 = New-Object System.Windows.Forms.Button
$button12.Text = "Device Manager"
$button12.Location = New-Object System.Drawing.Point(350,260)
$button12.Size = New-Object System.Drawing.Size(250,25)
$button12.Add_Click({
   Start-Process devmgmt.msc
})
$tabPage1.Controls.Add($button12)

$button13 = New-Object System.Windows.Forms.Button
$button13.Text = "UAC Settings"
$button13.Location = New-Object System.Drawing.Point(350,290)
$button13.Size = New-Object System.Drawing.Size(250,25)
$button13.Add_Click({
   Start-Process UserAccountControlSettings.exe
})
$tabPage1.Controls.Add($button13)

$button14 = New-Object System.Windows.Forms.Button
$button14.Text = "Resource Monitor"
$button14.Location = New-Object System.Drawing.Point(350,320)
$button14.Size = New-Object System.Drawing.Size(250,25)
$button14.Add_Click({
   Start-Process resmon.exe
})
$tabPage1.Controls.Add($button14)



#ON / OFF BUTTONS

$label111 = New-Object System.Windows.Forms.Label
$label111.Text = "Hibernate:"
$label111.Location = New-Object System.Drawing.Point(20,240)
$label111.Size = New-Object System.Drawing.Size(200,15)

$tabPage1.Controls.Add($label111)

$button44 = New-Object System.Windows.Forms.Button
$button44.Text = "Off"
$button44.Location = New-Object System.Drawing.Point(20,260)
$button44.Size = New-Object System.Drawing.Size(120,25)
$button44.Add_Click({
   Start-Process cmd -ArgumentList '/c title Optimizer & powercfg /h off '

})
$tabPage1.Controls.Add($button44)

$button45 = New-Object System.Windows.Forms.Button
$button45.Text = "On"
$button45.Location = New-Object System.Drawing.Point(150,260)
$button45.Size = New-Object System.Drawing.Size(120,25)
$button45.Add_Click({
   Start-Process cmd -ArgumentList '/c title Optimizer & powercfg /h on '

})
$tabPage1.Controls.Add($button45)


#ON / OFF BUTTONS #2

$label111 = New-Object System.Windows.Forms.Label
$label111.Text = "Physical Address Extension:"
$label111.Location = New-Object System.Drawing.Point(20,300)
$label111.Size = New-Object System.Drawing.Size(200,15)

$tabPage1.Controls.Add($label111)

$button44 = New-Object System.Windows.Forms.Button
$button44.Text = "Off"
$button44.Location = New-Object System.Drawing.Point(20,320)
$button44.Size = New-Object System.Drawing.Size(120,25)
$button44.Add_Click({
   Start-Process cmd -ArgumentList '/c title Optimizer & bcdedit /set [{ID}] nx AlwaysOff & bcdedit /set [{ID}] pae ForceDisable '

})
$tabPage1.Controls.Add($button44)

$button45 = New-Object System.Windows.Forms.Button
$button45.Text = "On"
$button45.Location = New-Object System.Drawing.Point(150,320)
$button45.Size = New-Object System.Drawing.Size(120,25)
$button45.Add_Click({
   Start-Process cmd -ArgumentList '/c title Optimizer & bcdedit /set [{ID}] pae ForceEnable '

})
$tabPage1.Controls.Add($button45)



#POWERSHELL

$label10 = New-Object System.Windows.Forms.Label
$label10.Text = "Windows Settings"
$label10.Location = New-Object System.Drawing.Point(20,50)
$label10.Size = New-Object System.Drawing.Size(200,25)
$label10.Font = New-Object System.Drawing.Font("Arial",12,[System.Drawing.FontStyle]::Bold)
$tabPage2.Controls.Add($label10)



$buttona1 = New-Object System.Windows.Forms.Button
$buttona1.Text = "High Performance Power Plan"
$buttona1.Location = New-Object System.Drawing.Point(20,80)
$buttona1.Size = New-Object System.Drawing.Size(250,25)
$buttona1.Add_Click({
   Start-Process cmd -ArgumentList '/c title Optimizer & powercfg -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c'
})
$tabPage2.Controls.Add($buttona1)

$buttona2 = New-Object System.Windows.Forms.Button
$buttona2.Text = "Disable Windows Defender"
$buttona2.Location = New-Object System.Drawing.Point(20,110)
$buttona2.Size = New-Object System.Drawing.Size(250,25)
$buttona2.Add_Click({
  Set-MpPreference -DisableRealtimeMonitoring $true
})
$tabPage2.Controls.Add($buttona2)

$buttona3 = New-Object System.Windows.Forms.Button
$buttona3.Text = "Disable Automatic Updates"
$buttona3.Location = New-Object System.Drawing.Point(20,140)
$buttona3.Size = New-Object System.Drawing.Size(250,25)
$buttona3.Add_Click({
  Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update' -Name 'AUOptions' -Value '1'
})
$tabPage2.Controls.Add($buttona3)

$buttona4 = New-Object System.Windows.Forms.Button
$buttona4.Text = "Disable OneDrive"
$buttona4.Location = New-Object System.Drawing.Point(20,170)
$buttona4.Size = New-Object System.Drawing.Size(250,25)
$buttona4.Add_Click({
  Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'DisableFileSync' -Value 1
Stop-Process -Name OneDrive -ErrorAction SilentlyContinue
})
$tabPage2.Controls.Add($buttona4)

$buttona5 = New-Object System.Windows.Forms.Button
$buttona5.Text = "Disable Telemetry"
$buttona5.Location = New-Object System.Drawing.Point(20,200)
$buttona5.Size = New-Object System.Drawing.Size(250,25)
$buttona5.Add_Click({
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection' -Name 'AllowTelemetry' -Value '0'
})
$tabPage2.Controls.Add($buttona5)

$buttona6 = New-Object System.Windows.Forms.Button
$buttona6.Text = "Disable Windows Error Reporting"
$buttona6.Location = New-Object System.Drawing.Point(20,230)
$buttona6.Size = New-Object System.Drawing.Size(250,25)
$buttona6.Add_Click({
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting' -Name 'Disabled' -Value '1'
})
$tabPage2.Controls.Add($buttona6)

$buttona7 = New-Object System.Windows.Forms.Button
$buttona7.Text = "Disable UAC Prompt"
$buttona7.Location = New-Object System.Drawing.Point(20,260)
$buttona7.Size = New-Object System.Drawing.Size(250,25)
$buttona7.Add_Click({
   Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'EnableLUA' -Value 0

})
$tabPage2.Controls.Add($buttona7)

$buttona8 = New-Object System.Windows.Forms.Button
$buttona8.Text = "Disable Windows Ink Workspace"
$buttona8.Location = New-Object System.Drawing.Point(20,290)
$buttona8.Size = New-Object System.Drawing.Size(250,25)
$buttona8.Add_Click({
Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\PenWorkspace' -Name 'PenWorkspaceButtonDesiredVisibility' -Value 0

})
$tabPage2.Controls.Add($buttona8)

$buttona9 = New-Object System.Windows.Forms.Button
$buttona9.Text = "Disable Sticky Keys"
$buttona9.Location = New-Object System.Drawing.Point(20,320)
$buttona9.Size = New-Object System.Drawing.Size(250,25)
$buttona9.Add_Click({
   Set-ItemProperty -Path 'HKCU:\Control Panel\Accessibility\StickyKeys' -Name 'Flags' -Value 506

})
$tabPage2.Controls.Add($buttona9)


$buttona11 = New-Object System.Windows.Forms.Button
$buttona11.Text = "Disable auto-restart on system failure"
$buttona11.Location = New-Object System.Drawing.Point(20,290)
$buttona11.Size = New-Object System.Drawing.Size(250,25)
$buttona11.Add_Click({
   Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\CrashControl' -Name 'AutoReboot' -Value 0


})
$tabPage2.Controls.Add($buttona11)

$buttona10 = New-Object System.Windows.Forms.Button
$buttona10.Text = "Disable Filter Keys"
$buttona10.Location = New-Object System.Drawing.Point(350,110)
$buttona10.Size = New-Object System.Drawing.Size(250,25)
$buttona10.Add_Click({
   Set-ItemProperty -Path 'HKCU:\Control Panel\Accessibility\Keyboard Response' -Name 'Flags' -Value 122


})
$tabPage2.Controls.Add($buttona10)

$buttona12 = New-Object System.Windows.Forms.Button
$buttona12.Text = "Disable Automatic Defragmentation"
$buttona12.Location = New-Object System.Drawing.Point(350,80)
$buttona12.Size = New-Object System.Drawing.Size(250,25)
$buttona12.Add_Click({
   Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\OptimalLayout' -Name 'EnableAutoLayout' -Value 0

})
$tabPage2.Controls.Add($buttona12)

$buttona13 = New-Object System.Windows.Forms.Button
$buttona13.Text = "Disable SuperFetch and Prefetch"
$buttona13.Location = New-Object System.Drawing.Point(350,140)
$buttona13.Size = New-Object System.Drawing.Size(250,25)
$buttona13.Add_Click({
   Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters' -Name 'EnableSuperfetch' -Value 0
   Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters' -Name 'EnablePrefetcher' -Value 0
})
$tabPage2.Controls.Add($buttona13)


$tabControl.Controls.Add($tabPage1)
$tabControl.Controls.Add($tabPage2)
$tabControl.Controls.Add($tabPage3)
$tabControl.Controls.Add($tabPage4)
$tabControl.Controls.Add($tabPage5)

$form.Controls.Add($tabControl)


$form.ShowDialog()
