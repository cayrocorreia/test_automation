# language: pt
Funcionalidade: Login
  Como um  usuario cadastrado no sistema InMetrics
  Desejo realizar login no sistema


  Contexto: Pagina De Login 
    Dado que o usuario esteja na tela inicial do InMetricse seja um usuario cadastrado 

  
  @login_sucesso
  Cenario: Realizar Cadastro de Usuario
  Quando informar o campo usuario 'cayro oliveira'
  E informar o campo senha '123456' e clicar no botao entre
  Entao o usuario deve ser direcionado para a tela de funcionarios


  @login_fluxo_alternativo
  Esquema do Cenario: Fluxos Alternativos Login 
  Quando informar os campos '<usuario>', '<senha>' e clicar no botao entre o sistema deve apresentar a '<mensagem>'
  Exemplos:
  |     usuario     |senha   |               mensagem             |
  |cayro oliveira   |645321  |  ERRO! Usuário ou Senha inválidos  |

