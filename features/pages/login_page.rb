class LoginPage < SitePrism::Page
  element :label_nome, "input[name='username']"
  element :label_senha, 'input[name=pass]'
  element :btn_enter, '.login100-form-btn'
  element :tabela_funcionarios, '#tabela_wrapper'


  def pag_inicial
    visit ''
  
  end


  def preencher_nome nome
    label_nome.set nome
  end

  def preencher_senha senha 
    label_senha.set senha
  end

  def clicar_entrar
    btn_enter.click
  end

  
  def login_fixo
    label_nome.set 'cayro oliveira'
    label_senha.set '123456'
    btn_enter.click
  end


end

