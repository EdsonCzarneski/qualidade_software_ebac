# language: pt

Funcionalidade: Tela de login
Como cliente da EBAC-SHOP
Quero fazer o login na plataforma
Para visualizar meus pedidos


Contexto:
Dado que eu acesso a página de login do portal EBAC-SHOP

Cenário: Autentificação Válida
Quando eu digitar o usuário "edson@ebacshop.com.br"
E a senha "123@123"
Então deve exibir a página de checkout

Cenário: Usuário inexistente
Quando eu digitar o usuário "naoexiste@ebacshop.com.br"
E a senha "123@123"
Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

Cenário: Usuário com senha inválida
Quando eu digitar o usuário "edson@ebacshop.com.br"
E a senha "yyzzyy"
Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"
