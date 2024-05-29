#language : pt

Funcionalidade: Configurar Produtos

Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com tamanho e cor
e escolher escolher a quantidade
Para depois inserir no carrinho

Contexto: 
Dado que eu acessar a página do produto

Cenário: Adicionar ao carrinho
Quando eu selecionar os atributos tamanho, cor e quantidade
Então deve adcionar o produto ao carrinho

Cenário: Selecione todos atributos
Quando eu deixar de selecionar alguns dos atributos tamanho, cor e quantidade
Então deve aparecer a mensagem de erro "selecine todos atributos"
E não adicionar o produto ao carrinho

Cenário: Quantidade de produtos válida
Quando eu selecionar a quantidade de 1 a 10 
Então deve exibir a mensagem "adcionado ao carrinho"
E adcionar o produto ao carrinho

Cenário: Quantidade de produtos inválida
Quando eu selecionar a quantidade de 11 ou mais  
Então deve exibir a mensagem de erro "selecione até 10 produtos"

Cenário: Botão limpar
Quando eu clicar no botão limpar
Então deve voltar todos atributos ao estado original

