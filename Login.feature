#language: pt

            Funcionalidade: Login na plataforma Ebac Shop
            Como cliente da Ebac Shop
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Cenário: Dados válidos
            Dado que estou na página de login da Ebac Shop
            Quando insiro meus dados
            E estão válidos
            Então devo ser direcionado para a tela de checkout

            Cenário: Dados inválidos
            Dado que estou na página de login da Ebac Shop
            Quando insiro meus dados
            E eles estão incorretos
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Esquema do cenário: Tentativas de Login
            Dado que estou na página de login da Ebac Shop
            Quando insiro o usuário "<ebac>"
            E insiro a senha "<ebac123>"
            Então devo visualizar a "<mensagem>"

            Exemplos:
            | usuário | senha    | mensagem                            |
            | ebac    | ebac123  | Redirecionado para tela de checkout |
            | ebac1   | 1234ebac | Usuário ou senha inválidos          |
            | ebac2   | ebac1    | Usuário ou senha inválidos          |
            | ebac3   | 1ebac2   | Usuário ou senha inválidos          |
