#language: pt

Funcionalidade: login
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

#Regras de negócio:
#• Somente usuários ativos podem fazer login;
#• Deve exibir uma mensagem de erro caso o usuário erre o login e senha;
#• Se o usuário errar por 3 vezes a senha, deve travar por 15 minutos o login

Cenário: login com sucesso
Quando digitar um e-mail e senha válidos
Então deve autenticar a conta com sucesso

Cenário: Usuários inativos
Quando um usuário inativo tentar fazer login
Então deve exibir uma mensagem de erro.

Cenário: Credenciais inválidas
Quando um usuário digitar o e-mail e/ou senha inválidos
Então deve exibir uma mensagem de erro informando usuário e/ou senha incorretos.

Cenário: Muitas tentativas de login
Quando um usuário errar sua senha em 3 tentativas
Então deve exibir uma mensagem de erro e travar o login por 15 minutos.