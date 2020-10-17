# language: pt
Funcionalidade: Incluir Funcionario 
  Como um  usuario cadastrado no sistema InMetrics
  Desejo realizar uma inclusao de um novo funcionario 


  Contexto: Logar No Sistema e Acessar Pagina Novo Funcionarios 
    Dado que o usuario esteja logado no sistema 
    Quando quando Acessar a Pagina Novo Funcionarios

  
  @incluir_funcionario
  Cenario: Realizar Inclusao de Funcionario 
  Quando informar os campos nome, cargo, cpf, salario, admissao, sexo e tipo_de_contratacao
  E clicar em  enviar 
  Entao o usuario deve ver a mensagem 'SUCESSO! Usuário cadastrado com sucesso'
 






  






