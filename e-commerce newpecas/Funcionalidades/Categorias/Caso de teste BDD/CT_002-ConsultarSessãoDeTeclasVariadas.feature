#language: pt
#enconding: UTF-8
#date: 08/10/22
#author: José
#version: 1.0

Funcionalidade <Categorias>
Cenário de teste <Consultar categoria de teclas/variadas>
Tipo de teste [Positivo]

CT_002 - Consultar sessão de "teclas/variadas" 

<User Story>

<Quem>
Eu, como usuário pessoa física do e-comerce New Peças.
<O que>
Desejo realizar uma consulta de de produtos na sessão teclas
<Por que>
Quero consultar a variedade de produtos da categoria


Contexto:

    Dado que eu estou conectado à "internet"
    E tenho acesso ao url "https://www.newpecas.com.br"

    Quando sobreponho o mouse sobre "categorias"
    E clico na categorias "teclas/variadas"
    
    Então o site exibe o toda variedade de "produto" contendo nome tecla 

