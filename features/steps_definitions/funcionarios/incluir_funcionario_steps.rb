Dado('que o usuario esteja logado no sistema') do
  @pg_login.pag_inicial
  @pg_login.login_fixo
  #@pg_incluir_funcionario.logar_sistema

  end
  
  Quando('quando Acessar a Pagina Novo Funcionarios') do
    #click_link 'Novo Funcionário'
    @pg_incluir_funcionario.acessar_nv_funcionario
  end
  
  Quando('informar os campos nome, cargo, cpf, salario, admissao, sexo e tipo_de_contratacao') do
    @pg_incluir_funcionario.preencher_novo_funcionario_aleatoriamente


  end
  
  Quando('clicar em  enviar') do 
    @pg_incluir_funcionario.clicar_enviar
  
  end
  
  Entao('o usuario deve ver a mensagem {string}') do |msg|
    expect(page).to have_content msg
    
  end