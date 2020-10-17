# language: pt
Funcionalidade: Alterar Funcionario 
  Como um  usuario cadastrado no sistema InMetrics
  Desejo realizar uma alteracao de funcionario 

  
  @alterar_funcionario
  Cenario: Realizar Alteracao de Funcionario 
  Dado que o usuario esteja logado no sistema 
  Quando acessar o a pagima de alterar funcionario
  E alterar os campos nome, cargo, cpf, salario, admissao, sexo e tipo_de_contratacao e clicar em enviar 
  Entao o sistema deve apresentar a mensagem 'SUCESSO! Informações atualizadas com sucesso'
 






  






