#language: pt

@logar
Funcionalidade: Realizar login
  Eu como usuário do sistema
  Desejo criar meu login
  A fim de acessar a página logada

Contexto: 
  Dado que estou na página de acesso ao login

@login_valido
Cenário: Acessar login com dados válidos
  Quando informar os dados "válidos" e clicar no botão
  Então recebo a mensagem de sucesso

@login_invalido
Cenário: Acessar login com dados inválidos
  Quando informar os dados "inválidos" e clicar no botão
  Então recebo a mensagem de erro