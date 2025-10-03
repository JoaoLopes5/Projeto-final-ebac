#language: pt

Funcionalidade: Meus pedidos
Como usuário
Quero acessar meus pedidos
Para monitorar a entrega e os pedidos feitos

#Fluxo principal
Dado o usuário acesar a página de meus pedidos
Quando o usuário estiver autenticado
Então deve exibir os pedidos realizados

#Fluxo alternativo
Dado o usuário acesar a página de meus pedidos
Quando o usuário não tem pedidos realizados
Então deve exibir uma mensagem de nenhum pedido realizado

#Fluxo negativo
Dado o usuário acesar a página de meus pedidos
Quando ocorre um erro de conexão
Então deve exibir uma mensagem de erro não foi possível exibir seus pedidos tente novamente