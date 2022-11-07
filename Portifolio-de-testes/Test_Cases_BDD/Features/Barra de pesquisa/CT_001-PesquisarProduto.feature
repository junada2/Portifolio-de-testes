#language: pt
#enconding: UTF-8
#date: 08/10/22
#author: José
#version: 1.0

Funcionalidade <Barra de pesquisa>
Cenário de teste <Pesquisa de produto>
Tipo de teste [Positivo]

CT_001 - Pesquisar "produto"

<User Story>

<Quem>
Eu, como usuário pessoa física do e-comerce New Peças.
<O que>
Desejo realizar uma pesquisa de produto no site
<Por que>
Quero consultar a disponibilidade do produto


Contexto:

    Dado que eu estou conectado à "internet"
    E tenho acesso ao url "https://www.newpecas.com.br"

    Quando clico na "barra de pesquisa"
    E digito o nome do "produto"
    E clico em "pesquisar"
    
    Então o site exibe o "produto" procurado 


Esquema de cenário:
|Produto           |
|LED               |
|Bateria para rádio|
|Cabo chicote      |
|Lâmpada 12v       |

