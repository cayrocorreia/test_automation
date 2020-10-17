# language: pt
Funcionalidade: CadastrarUsuario
  Como um novo usuario do sistema InMetrics
  Para obter acesso ao sistema 
  Devo realizar um cadastro 


  Contexto: Pagina De Cadastro
    Dado que o usuario esteja na tela inicial do InMetrics
    Quando  o usuario clicar em Cadastre-se


  @cadastrar_usuario_sucesso
  Esquema do Cenario: Realizar Cadastro de Usuario
  Quando informar o campo usuario
  E informar o campo senha e confimar a senha
  E clicar em cadastrar
  Entao o usuario deve ser direcionado para a tela de "Login"



  @cadastrar_usuario_fluxo_alternativo
  Esquema do Cenario: Fluxos Alternativos Cadastro de Usuario 
  Quando informar os campos '<usuario>', '<senha>', '<confirmar_senha>' clicar em cadastrar
  Entao o sistema deve apresentar a '<mensagem>'
  Exemplos:
  |usuario  |senha |confirmar_senha|         mensagem          |
  |automacao|123456|    123456     |    Usuário já cadastrado  |
  |automacao|123456|    654321     |    Senhas não combinam    |








