    Robocopy.exe C:\Users\adria\Documents C:\Users\adria\backup\ *.* /s /v /Z /R:3 /W:10 /XO /NP

    # /s = Copia todos os subdiretórios, excluindo os vazios
    # /v = Modo Verbose
    # /Z = Copia os arquivos no modo reiniciável
    # /R:3 = Repete a cópia 3 vezes
    # /W:10 = Espera 10 segundos entre as tentativas
    # /XO = Copia apenas os arquivos novos e modificados
    # /NP = Não exibe o percentual copiado na tela