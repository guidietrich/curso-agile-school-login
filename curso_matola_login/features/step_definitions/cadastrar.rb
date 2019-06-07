Dado("que estou na página de registro de login") do
  @login = LoginPage.new
  @login.acessar_cadastro
end

Quando("informar os dados {string} e salvar") do |tipo_dado|
  @login.preencher_campos(tipo_dado)
end

Então("recebo a mensagem de usuário criado") do
  @login.realizar_cadastro
end
