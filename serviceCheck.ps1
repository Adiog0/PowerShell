Write-Host "Informe qual opcao deseja, 1 para iniciar servicos, 2 para parar servicos"
$servicechk = Read-Host

switch ($servicechk) 
{
    
    1{Write-Host "Informe o nome do servico"
    $ServiceName = Read-Host
    $arrService = Get-Service -Name $ServiceName
    
    while ($arrService.Status -ne 'Running')
    {
    
       # Start-Service $ServiceName
        write-host $arrService.status
        write-host 'Iniciando servico'
        Start-Sleep -seconds 60
        $arrService.Refresh()
        if ($arrService.Status -eq 'Running')
        {
            Write-Host 'Status atual: Running'
        }
    }

    2{ Write-Host "Informe o nome do servico"
    $ServiceName = Read-Host
    $arrService = Get-Service -Name $ServiceName
    
    while ($arrService.Status -ne 'Stopped')
    {
    
       # Start-Service $ServiceName
        write-host $arrService.status
        write-host 'Parando servico'
        Start-Sleep -seconds 60
        $arrService.Refresh()
        if ($arrService.Status -eq 'Stopped')
        {
            Write-Host 'Status atual: Stopped'
        }

    }
}



}