Option Explicit
Dim fso, shell, dir, ps, cmd
Set fso = CreateObject("Scripting.FileSystemObject")
Set shell = CreateObject("WScript.Shell")
dir = fso.GetParentFolderName(WScript.ScriptFullName)
ps = shell.ExpandEnvironmentStrings("%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe")
cmd = """" & ps & """ -NoProfile -ExecutionPolicy Bypass -File """ & dir & "\hebet-server.ps1"""
shell.CurrentDirectory = dir
shell.Run cmd, 1, False
