#language: pt
#enconding: UTF-8
#date: 08/10/22
#author: José
#version: 1.0

Funcionalidade <Gostei>
Cenário de teste <Validar Produto Marcado Como Gostei>
Tipo de teste [Positivo]

CT_003 - Validar "produto" marcado como gostei

<User Story>

<Quem>
Eu, como usuário pessoa física do e-comerce New Peças.
<O que>
Desejo realizar adicionar um "produto" na lista "Gostei"
<Por que>
Tenho a intenção de comprá-lo posteriomente


Contexto:

    Dado que eu estou conectado à "internet"
    E tenho acesso ao url "https://www.newpecas.com.br"

    Quando clico em determinado produto
    E clico na no botão "Gostei"
    
    Então o site adiciona o produto em minha lista "Gostei"