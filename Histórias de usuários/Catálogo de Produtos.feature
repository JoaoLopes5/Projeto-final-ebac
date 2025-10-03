#language: pt

Funcionalidade: Catálogo de produtos
Como usuário
Quero acessar o catálogo de produtos
Para escolher um produto

#Fluxo principal
Dado o usuário acessar a página de catálogo
Quando existem produtos disponíveis
Então deve exibir os produtos com nome, preço e imagem

#Fluxo alternativo
Dado o usuário acessar a página de catálogo
Quando não existem produtos disponíveis
Então deve exibir uma mensagem informando que não existem produtos disponíveis

#Fluxo negativo
Dado o usuário acessar a página de catálogo
Quando ocorre um erro de conexão
Então deve exibir uma mensagem informando que não foi possível exibir produtos disponíveis

