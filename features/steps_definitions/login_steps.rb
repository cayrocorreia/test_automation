##Contexto 
Dado('que o usuario esteja na tela inicial do InMetricse seja um usuario cadastrado') do
  @pg_login.pag_inicial
end

Quando('informar o campo usuario {string}') do |nome|
  @pg_login.preencher_nome nome

end

Quando('informar o campo senha {string} e clicar no botao entre') do |senha|
  @pg_login.preencher_senha senha
  @pg_login.clicar_entrar
end

Entao('o usuario deve ser direcionado para a tela de funcionarios') do
  tabela = @pg_login.tabela_funcionarios
  expect(page).to have_content("FUNCIONÁRIOS")
  #has_table?(tabela) 
  
end

Quando('informar os campos {string}, {string} e clicar no botao entre o sistema deve apresentar a {string}') do |nome, senha, mensagem|
  @pg_login.preencher_nome nome
  @pg_login.preencher_senha senha
  @pg_login.clicar_entrar
  expect(page).to have_content(mensagem)


end

