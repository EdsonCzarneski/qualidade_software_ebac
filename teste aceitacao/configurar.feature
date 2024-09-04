#language: pt

Funcionalidade: Configurar Produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu acesso a página da EBAC-SHOP

Cenário: Configuração Válida
Quando eu selecionar a cor "Amarelo"
E o tamanho "G"
E a quantidade "02"
Então aparece a mensagem "Adicionar ao carrinho"

Cenário: Limite de 10 produtos por venda
Quando adiciono no carrinho 10 produtos diferentes
E se tento adicionar mais um produto diferenre ao carrinho
Então o sistema mostra a mensagem "Limite máximo de compras para esta venda atingido. Faça outra compra."

Cenário: Limpar seleções
Quando eu selecionar a cor "Amarelo"
E o tamanho "G"
E a quantidade "02"
E clico no botão "Limpar"
Então todas as seleções voltam ao estado original

