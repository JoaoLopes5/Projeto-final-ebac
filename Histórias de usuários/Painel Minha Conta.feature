#language: pt

Funcionalidade: Painel minha conta
Como usuário
Quero acessar o painel da minha conta
Para verificar e configurar minhas informações

#Fluxo principal
Dado o usuário acessar o painel da conta
Quando o usuário estiver autenticado
Então deve exibir as informações do painel da conta

#Fluxo alternativo
Dado o usuário acessar o painel da conta
Quando o usuário não estiver autenticado
Então deve ser redirecionado para a página de login

#Fluxo negativo
Dado o usuário acessar o painel da conta
Quando o usuário recebeu uma penalidade 
Então deve exibir uma mensagem que sua conta foi penalizada