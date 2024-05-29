            #language: pt

            Funcionalidade: Checkout

            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Cenário: Finalizar Compra
            Dado que o cliente da EBAC-SHOP deve preencher os dados para finalizar a compra
            Quando "nome" e "sobrenome" e "país" e "endereco" e "cidade" e "cep" e "telefone" e "email" forem preenchidos
            Então  deve finalizar compras exibindo a mensagem "compra finalizada"

            Cenário: Dados opcionais
            Dado que o cliente não necessita preeencher todos os dados
            Quando "Nome da empresa"  e "complemento" não forem preenchidos
            Então deve finalizar compras exibindo a mensagem "compra finalizada"


            Esquema do Cenário: Autenticar campo de email
            Dado que o cliente necessita digitar o padrão de email correto
            Quando o cliente digitar <email>
            Então deve exibir a <mensagem>

            Exemplos:
            | email                 | mensagem         |
            | "Exemplo@ebac.com"    | "email válido"   |
            | "Exemplo@ebac.com.br" | "email válido"   |
            | "Exemploebac.com"     | "email inválido" |
            | "Exemplo@ebaccom"     | "email inválido" |
            | "Exemploebaccom"      | "email inválido" |



            Esquema do Cenário: validar compra
            Quando o cliente digitar <nome> e <sobrenome> e <pais> e <endereco>
            e <cidade> e <cep> e <telefone> e <email>
            Então deve verificar se todos os dados foram cadastrados
            E exibir a <mensagem>

            Exemplos:
            | nome   | sobrenome | pais     | endereco | cidade           | cep       | telefone       | email           | mensagem                  |
            | "luis" | "almeida" | "brasil" | "rua 5"  | "Belo Horizonte" | 36420-000 | 31 9 9999-9999 | "luis@ebac.com" | "compra finalizada"       |
            | "luis" |           | "brasil" | "rua 5"  | "Belo Horizonte" | 36420-000 | 31 9 9999-9999 | "luis@ebac.com" | "preencha todos os dados" |
            | "luis" | "almeida" |          | "rua 5"  | "Belo Horizonte" | 36420-000 | 31 9 9999-9999 | "luis@ebac.com" | "preencha todos os dados" |
            | "luis" | "almeida" | "brasil" |          | "Belo Horizonte" | 36420-000 | 31 9 9999-9999 | "luis@ebac.com" | "preencha todos os dados" |
            | "luis" | "almeida" | "brasil' | "rua 5"  |                  | 36420-000 | 31 9 9999-9999 | "luis@ebac.com" | "preencha todos os dados" |
            | "luis" | "almeida" | "brasil" | "rua 5"  | "Belo Horizonte" |           | 31 9 9999-9999 | "luis@ebac.com" | "preencha todos os dados" |
            | "luis" | "almeida" | "brasil" | "rua 5"  | "Belo Horizonte" | 36420-000 |                | "luis@ebac.com" | "preencha todos os dados" |
            | "luis" | "almeida" | "brasil" | "rua 5"  | "Belo Horizonte" | 36420-000 | 31 9 9999-9999 |                 | "preencha todos os dados" |





