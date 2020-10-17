class IncluirFuncionarioPage < SitePrism::Page

    element :input_nome, '#inputNome'
    element :input_cpf, '#cpf'
    element :input_cargo, '#inputCargo'
    element :input_salario, '#dinheiro'
    element :option_clt, '.radio-button'
    element :label_nome, "input[name='username']"
    element :label_senha, 'input[name=pass]'
    element :btn_enter, '.login100-form-btn'
    element :tabela_funcionarios, '#tabela_wrapper'
    element :select_sexo, '#slctSexo'
    element :tipo_clt, '#clt'
    element :tipo_pj, '#pj'
    element :data_admissao, '#inputAdmissao'
    element :btn_enviar, 'input.cadastrar-form-btn'
    


    def logar_sistema
      label_nome.set 'cayro oliveira'
      label_senha.set '123456'
      btn_enter.click
    end

    def acessar_nv_funcionario
      click_link 'Novo Funcionário'
    end

    def preencher_novo_funcionario_aleatoriamente
      
      #gerando dados aleatorios 
      cargos = ["Analista De Testes", "Analista De Automação", "Desenvolvedor", "PO", "Scrum Master"]
      sexo = ["Feminino","Indiferente","Masculino"]
      tipo_contratacao = ["CLT","PJ"]    
      cargo_aleatorio = cargos.sample 
      sexo_aleatorio = sexo.sample
      tipo_contratacao_aleatorio = tipo_contratacao.sample
      nome_aleatorio = Faker::Name.name
      cpf_aleatorio = DocumentosBr.cpf_formatted
      salario_aleatorio = Faker::Number.number(digits: 6)
      data_contratacao = Faker::Date.between(from: '2014-09-23', to: '2020-10-25')
      data_formatada = data_contratacao.strftime("%d/%m/%Y")
    
      # preenchendo os campos 
      input_cargo.set cargo_aleatorio
      input_nome.set nome_aleatorio
      input_salario.set salario_aleatorio
      select_sexo.select sexo_aleatorio
      data_admissao.set data_formatada
      input_cpf.set cpf_aleatorio

      if tipo_contratacao_aleatorio.eql? "CLT"
        tipo_clt.set true
        else
        tipo_pj.set true
      end

    end 


    def clicar_enviar
      btn_enviar.click
    end
  
  end 



  