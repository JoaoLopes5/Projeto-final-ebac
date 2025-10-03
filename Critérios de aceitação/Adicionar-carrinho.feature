#language: pt

Funcionalidade: adicionar ao carrinho
Como cliente da EBAC-SHOP
Quero adicionar produtos no carrinho
Para realizar a compra dos itens

#Regras de negócio:
#• Não é permitido inserir mais de 10 itens de um mesmo produto ao carrinho;
#• Os valores não podem ultrapassar a R$ 990,00;
#• Valores entre R$ 200 e R$ 600 , ganham cupom de 10%
#• Valores acima de R$ 600 ganham cupom de 15%

Cenário: adicionar com sucesso
Quando clico em adicionar item ao carrinho
Então deve atualizar o carrinho com o produto selecionado

Cenário: mais de 10 itens repetidos
Quando estiver com 10 itens iguais no carrinho e clicar em adicionar item ao carrinho e ele for o mesmo produto
Então deve exibir uma mensagem de erro, limite de itens iguais no carrinho atingido

Cenário: valor acima de R$ 990.00
Quando o valor R$ 990,00 for ser ultrapassado por um item a ser adicionado
Então deve exibir uma mensagem de erro, valor limite de R$ 990,00 ultrapassado

Cenário: valor entre R$ 200 e R$ 600
Quando o valor total dos itens no carrinho for de R$ 200,00 a R$ 600,00
Então deve receber um cupom de 10%

Cenário: valor acime de R$ 600,00
Quando o valor do carrinho for acima de R$ 600,00
Então deve receber um cupom de 15%

