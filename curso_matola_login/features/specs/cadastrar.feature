#language: pt

@cadastrar_login
Funcionalidade: Realizar login
  Eu como usuário do sistema
  Desejo criar meu login
  A fim de acessar a página logada

Cenário: Cadastrar login
  Dado que estou na página de registro de login
  Quando informar os dados "válidos" e salvar
  Então recebo a mensagem de usuário criado
