Quando('acessar o a pagima de alterar funcionario') do
    @pg_alterar_funcionario.acessar_primeiro_funcionario_editar
end

Quando('alterar os campos nome, cargo, cpf, salario, admissao, sexo e tipo_de_contratacao e clicar em enviar') do
  @pg_incluir_funcionario.preencher_novo_funcionario_aleatoriamente
  @pg_incluir_funcionario.clicar_enviar

end

Entao('o sistema deve apresentar a mensagem {string}') do |mensagem|
    expect(page).to have_content mensagem
end
