#language: pt

Funcionalidade: Endereço
Como usuário
Quero acessar o endereço cadastrado
Para informar onde o produto deve ser entregue

#Fluxo principal
Dado o usuário acessar a página do endereço cadastrado
Quando o usuário estiver autenticado
Então deve exibir o endereço cadastrado

#Fluxo alternativo
Dado o usuário acessar a página do endereço cadastrado
Quando o usuário não tem endereço cadastrado
Então deve exibir uma mensagem informando que o usuário não possui endereço cadastrado

#Fluxo negativo
Dado o usuário acessar a página do endereço cadastrado
Quando o usuário informar um endereço inválido
Então deve exibir uma mensagem de erro informando que o endereço é inválido
