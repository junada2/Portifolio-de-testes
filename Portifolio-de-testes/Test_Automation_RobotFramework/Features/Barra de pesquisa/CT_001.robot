*** Settings ***
Test Setup  Abrir o navegador
Test Teardown  Fechar o navegador
Library  SeleniumLibrary



*** Variable ***
${BROWSER}  chrome
${URL}   https://www.newpecas.com.br
${PRODUTO}  LED emissor

**** Test Case ***
CT_001 - Pesquisa de produto
    Acessar a página home do e-comerce NewPeças
    Digitar o nome do produto "${PRODUTO}" na barra de pesquisa
    Clicar no botão pesquisar
    Conferir se o produto foi listado no site

*** Keywords ***
Abrir o navegador
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window

Fechar o navegador
    Close Browser

Acessar a página home do e-comerce NewPeças
    Wait Until Element Is Visible  class=header-logo
    

Digitar o nome do produto "${PRODUTO}" na barra de pesquisa
    Input Text  name=busca  ${PRODUTO}

Clicar no botão pesquisar
    Click Element  xpath=//*[@id="header-form"]/button[2]

Conferir se o produto foi listado no site
    Wait Until Element Is Visible  class=product-name
    Element Should Contain  class=product-name  Led Emissor Infra Vermelho 5Mm
    Capture Element Screenshot  id=Pbusca-prod-714

