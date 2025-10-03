#language: pt

Funcionalidade: Serviço de cupom
Como admin da EBAC-SHOP
Quero criar um serviço de cupom
Para poder listar e cadastrar os cupons
# Regras de negócio:
# GET:
# • Deve listar todos os cupons cadastrado ou listar buscando por ID do cupom
# • Documentação do serviço:
# http://lojaebac.ebaconline.art.br/rest-api/docs/#/coupons/get_wc_v3_coupons
# http://lojaebac.ebaconline.art.br/restapi/docs/#/coupons/get_wc_v3_coupons__id_
# POST:
# • Deve cadastrar os cupons com os campos obrigatórios abaixo:
# - Código do cupom: Exemplo: “Ganhe10”
# - Valor: “10.00”
# - Tipo do desconto: “fixed_product”
# -Descrição: “Cupom de teste”
# • Nome do cupom não pode ser repetido;
# • Os outros campos são opcionais.
# • Documentação do serviço:
# http://lojaebac.ebaconline.art.br/rest-api/docs/#/coupons/post_wc_v3_coupons
# • Exemplo do body:
# body: {
#  "code": "nomeCupom",
#  "amount": "10",
#  "discount_type": "fixed_product",
#  "description": "Cupom de desconto de teste"
#  }

Cenário: Cupom criado com sucesso
Quando todos os critérios de criação de cupom forem inseridos
Então deve adicionar o cupom criado na lista de cupons

Cenário: Cupom com nome repetido
Quando um cupom criado tiver o mesmo nome de um cupom já existente
Então deve exibir uma mensagem de erro, cupom com nome já existente

Cenário: Busca de cupom por ID
Quando for listar um cupom inserindo um ID correto
Então deve mostrar o cupom correspondente ao ID inserido

Cenário: Busca por cupom com ID inexistente
Quando for listar um cupom inserindo um ID inválido
Então deve exibir uma mensagem informando ID não encontrado