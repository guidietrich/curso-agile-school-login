Dado("que estou na página de acesso ao login") do
  @login = LoginPage.new
  @login.acessar_login
end

Quando("informar os dados {string} e clicar no botão") do |tipo_dado|
  @login.preencher_campos(tipo_dado)
end

Então("recebo a mensagem de sucesso") do
  @login.confirmar_login
end

Então("recebo a mensagem de erro") do
  @login.negar_login
end