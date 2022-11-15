#language: pt
#enconding: UTF-8
#date: 10/11/22
#author: José
#version: 1.0

Funcionalidade <Listas de buscas>
Cenário de teste <Verificar produtos buscados por listas de busca>
Tipo de teste [Positivo]

CT_003 - Verificar "Produto" Buscado Por Listas de Busca

<User Story>

<Quem>
Eu, como usuário pessoa física do e-comerce New Peças.
<O que>
Desejo realizar uma busca de vários itens de uma vez
<Por que>
Desejo verificar a disponobilidade dos produtos buscados


Contexto:

    Dado que eu estou conectado à "internet"
    E tenho acesso ao url "https://www.newpecas.com.br"

    Quando clico no ícone de "Lista de busca"
    E insiro mais de um "produto" na lista 
    E clico no botão "pesquisar"
    
    Então o site exibe os resultados da busca com todos "produtos" da lista