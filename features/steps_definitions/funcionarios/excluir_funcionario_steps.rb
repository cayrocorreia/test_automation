Quando('clicar no botao de exclusao') do
    @pg_excluir_funcionario.excluir_funcionario
  end
  
  Entao('o sistema devera apresentar a mensagem {string}') do |msg|
    expect(page).to have_content msg
  end