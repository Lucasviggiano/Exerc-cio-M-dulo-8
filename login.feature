            # Language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de login

            Cenário: Autenticação válida
            Quando eu inserir o email "lucas@ebac.com"
            E senha "lucas123"
            Então deve direcionar para o checkout

            Esquema do Cenário: Autenticação de usuário inválido
            Quando eu inserir <email>
            E a <senha>
            Então deve exibir a <mensagem> de erro

            Exemplos:
            | email                   | senha         | mensagem                     |
            | "lucassssssss@ebac.com" | "lucas123"    | "Usuário inválido"           |
            | "lucas@ebac.com"        | "aopskopaksp" | "Usuário ou senha inválidos" |




