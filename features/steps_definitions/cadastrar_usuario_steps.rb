
##Contexto
Dado('que o usuario esteja na tela inicial do InMetrics') do
  @pg_login.pag_inicial
end

Quando('o usuario clicar em Cadastre-se') do
  @pg_cadastrar_usuario.clicar_em_cadastra_se
end

##cadastrar_usuario_sucesso
Quando('informar o campo usuario') do
 @pg_cadastrar_usuario.preencher_nome_aleatorio
end

Quando('informar o campo senha e confimar a senha') do
 @pg_cadastrar_usuario.preencher_e_confimar_senha
end

Quando('clicar em cadastrar') do
 @pg_cadastrar_usuario.confirmar_cadastro
end

Entao('o usuario deve ser direcionado para a tela de {string}') do |pagina_login|
  expect(page).to have_content pagina_login
  
end

Quando('informar os campos {string}, {string}, {string} clicar em cadastrar') do |usuario, senha, confimar|
  @pg_cadastrar_usuario.prencher_cadastro_fluxo_alternativo usuario, senha, confimar
  @pg_cadastrar_usuario.confirmar_cadastro
end

Entao('o sistema deve apresentar a {string}') do |msg|
  expect(page).to have_content msg
end


