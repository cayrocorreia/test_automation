require "base64"

After do |scenario|
  scenario_name = scenario.name.gsub(/\s+/,'_').tr('/','_')

  if scenario.failed?
   tirar_foto(scenario_name.downcase!, 'falhou')
  else
   tirar_foto(scenario_name.downcase!, 'passou')
  end
end

After('@logout') do
  find('#navbarSupportedContent > ul > li:nth-child(3) > a', :visible => true).click
end

Before do
  Capybara.page.current_window.resize_to(1360, 1000)
  @pg_login = LoginPage.new
  @pg_cadastrar_usuario = CadastrarUsuarioPage.new
  @pg_incluir_funcionario = IncluirFuncionarioPage.new
  @pg_alterar_funcionario = AlterarFuncionarioPage.new
  @pg_excluir_funcionario = ExcluirFuncionarioPage.new


end





