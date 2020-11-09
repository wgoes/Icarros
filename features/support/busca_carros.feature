#language:pt

Funcionalidade: Busca

@TesteWeb
Cenário: Realizar uma busca que retorna ao menos 3 carros usados de mesma marca e modelo
Dado que o usuário está na home do site.
Quando efetuar uma busca por um carro usado de mesmo modelo e marca
Então os resultados devem ser exibidos.
E o valor do primeiro carro da listagem deve ser verificado
E o valor do segundo carro da listagem deve ser verificado