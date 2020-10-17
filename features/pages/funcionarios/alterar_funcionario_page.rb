class AlterarFuncionarioPage < SitePrism::Page

    elements :lista, 'tr > th'
    element :btn_editar, '#tabela > tbody > tr:nth-child(1) > td:nth-child(6) > a:nth-child(2)'
    
    def acessar_primeiro_funcionario_editar
        btn_editar.click
        
    end


end