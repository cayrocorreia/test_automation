class CadastrarUsuarioPage < SitePrism::Page
  element  :link_cadastre_se, 'li.nav-item a[href*="signup"]'
  element  :label_usuario, 'input[name="username"]'
  element  :label_senha, 'input[name="pass"]'
  element  :label_confirmar_senha, 'input[name="confirmpass"]'
  element  :btn_cadastrar, 'login100-form-btn'
  element  :msg_alerta, '.alert-validate'


  def clicar_em_cadastra_se
    link_cadastre_se.click    
  end

  def preencher_nome_aleatorio
    nome_aleatorio = Faker::Name.name
    label_usuario.set nome_aleatorio
  end

  def preencher_e_confimar_senha
    senha = Faker::Number.number(digits: 6) 
    label_senha.set senha 
    label_confirmar_senha.set senha

  end 

  def confirmar_cadastro 
    #btn_cadastrar.click
    click_button 'Cadastrar'
  end 


  def prencher_cadastro_fluxo_alternativo usuario, senha, confirmar_senha
    label_usuario.set usuario
    label_senha.set senha
    label_confirmar_senha.set confirmar_senha

  end 


end 