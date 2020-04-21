#Script para backup seletivo de arquivos

function FunctionName {
        Get-WmiObject Win32_LogicalDisk -Filter DriveType=3 | Select-Object DeviceID, FreeSpace, Size
   
}    

FunctionName
$sourcePath = 'C:\Users\adria\Documents\bck1'
$destinationPath = 'C:\Users\adria\Documents\bck2'
Clear-Host
Write-Host "Backup de arquivos seletivos"
Write-Host "Escolha o disco de origem, 1 para C, 2para D"
$discOrig = Read-Host
Switch ($discOrig)
      {
       1 { $sourcePath = 'C:\Users\adria\Documents\bck1' }
       2 { $sourcePath = 'D:\' }
       }

Write-Host " Escolha o disco de Destino, 1 para C, 2 para D "
$discDestin = Read-Host

Switch ($discOrig)
      {
       1 { $destinationPath = 'C:\Users\adria\Documents\bck2' }
       2 { $destinationPath = 'D:\' }
       }
Write-Host "Informe quais tipos de arquivos deseja fazer backup: 1 Todos, 2 imagens, 3 audio, 4 videos"
$opc = Read-Host


Switch ($opc)
      {
       1 { Robocopy.exe  $sourcePath $destinationPath *.* /s /v /Z /R:3 /W:10 /XO /NP }
       2 { Robocopy.exe  $sourcePath $destinationPath *.jpg* /s /v /Z /R:3 /W:10 /XO /NP }
       3 { Robocopy.exe  $sourcePath $destinationPath  *.mp3* *.wma* /s /v /Z /R:3 /W:10 /XO /NP }
       4 { Robocopy.exe  $sourcePath $destinationPath *.mp4* *.avi* /s /v /Z /R:3 /W:10 /XO /NP }
      }