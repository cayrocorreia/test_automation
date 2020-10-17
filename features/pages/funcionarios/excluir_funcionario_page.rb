class ExcluirFuncionarioPage < SitePrism::Page
    element :btn_excluir, '#tabela > tbody > tr:nth-child(1) > td:nth-child(6) > a:nth-child(1)'
    
    def excluir_funcionario
        btn_excluir.click
    
    end

end