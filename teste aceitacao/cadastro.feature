#language: pt

Funcionalidade: Cadastrar Usuário
Como cliente da EBAC-SHOP
Quero concluir meu cadastro   
Para realizar minhas compras


Contexto:
Dado que eu acesso a página de cadastro da EBAC-SHOP

Cenário: Cadastro de Usuário Válido
Quando eu adiciono nome como "Edson"
E adiciono o sobrenome como "Czarneski"
E adiciono o país como "Brasil"
E adiciono a cidade como "Pinhalão"
E adiciono o cep como "84925-000"
E adiciono o telefone como "(43) 99999-9999"
E adiciono o e-mail como "edson@ebacshop.com.br"
Então o sistema mostra a mensagem "Cadastro realizado com sucesso"

Cenário: Cadastro com campo vazio
Quando eu adiciono nome como "Edson"
E adiciono o sobrenome como " "
E adiciono o país como "Brasil"
E adiciono a cidade como "Pinhalão"
E adiciono o cep como "84925-000"
E adiciono o telefone como "(43) 99999-9999"
E adiciono o e-mail como "edson@ebacshop.com.br"
Então o sistema mostra a mensagem "Por favor, preencha todos os campos marcados com asterisco."

Cenário: Cadastro com e-mail inválido
Quando eu adiciono nome como "Edson"
E adiciono o sobrenome como " Czarneski"
E adiciono o país como "Brasil"
E adiciono a cidade como "Pinhalão"
E adiciono o cep como "84925-000"
E adiciono o telefone como "(43) 99999-9999"
E adiciono o e-mail como "edsonebacshop.com.br"
Então o sistema mostra a mensagem "E-mail inválido. Por favor, coloque um e-mail válido."

Esquema do Cenário: Cadastro Múltiplos Usuários
Quando eu adiciono <nome>
E adiciono <sobrenome>
E adiciono <país>
E adiciono <cidade>
E adiciono <cep>
E adiciono <telefone>
E adiciono <email>
Então o sistema mostra a mensagem <mensagem>

Exemplos:
|nome|sobrenome|país|cidade|cep|telefone|email|mensagem|
|"Edson"|"Czarneski"|"Brasil"|"Pinhalão"|"84925-000"|"(43)99999-9999"|"edson@ebacshop.com.br"|"Cadastro adicionado com sucesso"|
|"João"|"Silva"|"Brasil"|""|"69550-970"|"(41) 88888-8888"|"joao@ebacshop.com.br"|"Por favor, preencha todos os campos marcados com asterisco"|
|"Andre"|"Santos"|"Brasil"|"Ponta Grossa"|"84010-000"|"(42) 77777-7777"|"andre@ebacshop.com.br"|"Cadastro adicionado com sucesso"