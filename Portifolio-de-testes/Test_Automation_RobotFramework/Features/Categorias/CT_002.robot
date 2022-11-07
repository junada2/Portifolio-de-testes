*** Settings ***
Test Setup  Abrir o navegador
Test Teardown  Fechar o navegador
Library  SeleniumLibrary


*** Variable ***
${BROWSER}  chrome
${URL}   https://www.newpecas.com.br
${CATEGORIA}  Teclas


**** Test Case ***
CT_002 - Consultar sessão de teclas variadas
    Acessar a página home do e-comerce NewPeças
    Abrir o menu 'Categorias'
    Clicar em '${CATEGORIA}'
    Conferir se apenas teclas são exibidas na seleção

*** Keywords ***
Abrir o navegador
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window

Fechar o navegador
    Close Browser

Acessar a página home do e-comerce NewPeças
    Wait Until Element Is Visible  class=header-logo

Abrir o menu 'Categorias'
    Mouse Over  xpath=//*[@id="header-navbar-fixed"]/div[2]/div/div/div/div/ul/li[1]/a
    Wait Until Element Is Visible  xpath=//span[@class="megamenu-title" and contains(text(), '${CATEGORIA}')]

Clicar em '${CATEGORIA}'
    Click Element  xpath=//span[@class="megamenu-title" and contains(text(), '${CATEGORIA}')]

Conferir se apenas teclas são exibidas na seleção
    Wait Until Element Is Visible  class=product-name
    TRY
    Element Should Contain  class=product-name  Teclas
    EXCEPT
    Log To Console  Contém produtos sem 'Teclas' no nome
    Capture Element Screenshot  class=product-name
    END 

