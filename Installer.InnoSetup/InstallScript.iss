﻿; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "AddinGeneratorTesting"
#define MyAppVersion "1.0.0"
#define MyAppPublisher "e-verse"
#define GUID "ed7406a7-92c6-42ac-b2ce-23c6f4025265"
#define installerPath "{commonpf64}\e-verse\{{#MyAppName}}"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{{#GUID}}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={#installerPath}
DisableDirPage=yes
DefaultGroupName=e-verse
DisableProgramGroupPage=yes

#define Revit2020 "\Autodesk\ApplicationPlugins\{{#MyAppName}}.bundle\Contents\2020\"
#define Revit2021 "\Autodesk\ApplicationPlugins\{{#MyAppName}}.bundle\Contents\2021\"
#define Revit2022 "\Autodesk\ApplicationPlugins\{{#MyAppName}}.bundle\Contents\2022\"
#define Revit2023 "\Autodesk\ApplicationPlugins\{{#MyAppName}}.bundle\Contents\2023\"
#define Revit2024 "\Autodesk\ApplicationPlugins\{{#MyAppName}}.bundle\Contents\2024\"

; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=.\Installer
OutputBaseFilename={#MyAppName}
Compression=lzma
SolidCompression=yes
; SetupIconFile="..\{#MyAppName}.Resources\Images\Icons\{{#MyAppName}}-logo.ico"
OutputManifestFile=Setup-Manifest.txt
UninstallDisplayName="{#MyAppName} Uninstall"
; UninstallDisplayIcon="..\{#MyAppName}.Resources\Images\Icons\{{#MyAppName}}-logo.ico"
; WizardSmallImageFile="..\{#MyAppName}.Resources\Images\Icons\{{#MyAppName}}-logo.bmp"
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"; LicenseFile: "..\LICENSE"

[Messages]
SetupWindowTitle =  Setup {#SetupSetting("AppName")} Version: {#SetupSetting("AppVersion")}

[Files]

Source: "..\Revit.2020\bin\Release\*"; DestDir: "{userappdata}{#Revit2020}\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\Common\AddIn.addin"; DestDir: "{userappdata}{#Revit2020}\{#MyAppName}.addin"; Flags: ignoreversion recursesubdirs createallsubdirs

Source: "..\Revit.2021\bin\Release\*"; DestDir: "{userappdata}{#Revit2021}\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\Common\AddIn.addin"; DestDir: "{userappdata}{#Revit2021}\{#MyAppName}.addin"; Flags: ignoreversion recursesubdirs createallsubdirs

Source: "..\Revit.2022\bin\Release\*"; DestDir: "{userappdata}{#Revit2022}\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\Common\AddIn.addin"; DestDir: "{userappdata}{#Revit2022}\{#MyAppName}.addin"; Flags: ignoreversion recursesubdirs createallsubdirs

Source: "..\Revit.2023\bin\Release\*"; DestDir: "{userappdata}{#Revit2023}\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\Common\AddIn.addin"; DestDir: "{userappdata}{#Revit2023}\{#MyAppName}.addin"; Flags: ignoreversion recursesubdirs createallsubdirs

Source: "..\Revit.2024\bin\Release\*"; DestDir: "{userappdata}{#Revit2024}\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\Common\AddIn.addin"; DestDir: "{userappdata}{#Revit2024}\{#MyAppName}.addin"; Flags: ignoreversion recursesubdirs createallsubdirs

Source: "..\Common\PackageContents.xml"; DestDir: "{userappdata}\Autodesk\ApplicationPlugins\{#MyAppName}.bundle\"; Flags: ignoreversion

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"