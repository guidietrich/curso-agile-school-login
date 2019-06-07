class LoginPage
  include Capybara::DSL

  def acessar_cadastro
    visit "http://thedemosite.co.uk/addauser.php"
  end 

  def preencher_campos(tipo_dado)
    tipo_dado == "válidos" ? (fill_in "username", with: ACESSO[:usuario_valido]) : (fill_in "username", with: ACESSO[:usuario_invalido])
    tipo_dado == "válidos" ? (fill_in "password", with: ACESSO[:senha_valida]) : (fill_in "password", with: ACESSO[:senha_invalida])
    #binding.pry
    if page.has_current_path?("/addauser.php")
      click_button("save")
    else
      click_button("Test Login")
    end
  end
 
  def acessar_login
    visit "http://thedemosite.co.uk/login.php"
  end

  def realizar_cadastro
    page.has_content?(ACESSO[:usuario])
  end

  def confirmar_login
    page.has_content?("**Successful Login**")
  end

  def negar_login
    page.has_content?("**Failed Login**")
  end
  
end