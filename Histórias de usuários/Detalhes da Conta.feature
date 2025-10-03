#language: pt

Funcionalidade: Detalhes da conta
Como usuário
Quero acessar os detalhes da minha conta
Para poder confirmar e alterar informações

#Fluxo principal
Dado o usuário acessar os detalhes de sua conta
Quando o usuário estiver autenticado
Então deve exibir as informações de sua conta

#Fluxo alternativo
Dado o usuário acessar os detalhes de sua conta
Quando o usuário não estiver autenticado
Então deve ser redirecionado para a página de login

#Fluxo negativo
Dado o usuário acessar os detalhes de sua conta
Quando ocorrer um erro de conexão
Então deve exibir uma mensagem de erro informando que não foi possível exibir os detalhes da conta
