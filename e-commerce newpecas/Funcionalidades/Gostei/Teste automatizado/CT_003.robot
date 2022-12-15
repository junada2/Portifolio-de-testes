*** Settings ***
Test Setup  Abrir o navegador
Test Teardown  Fechar o navegador
Library  SeleniumLibrary
Library  OperatingSystem
Suite Setup  Setup chromedriver


*** Variable ***
${BROWSER}  chrome
${URL}   https://www.newpecas.com.br/produto/led-5mm-vermelho-alto-brilho/685


*** Keywords ***
Setup chromedriver
    Append To Environment Variable  PATH  ${EXECDIR}/SeleniumDrivers

Abrir o navegador
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window

Fechar o navegador
    Close Browser

Acessar a página de um "produto" do e-commerce NewPeças
    Wait Until Element Is Visible  class=header-logo
    Wait Until Element Is Visible  xpath=//button[contains(.,'Continuar e Fechar')]
    Click Button  xpath=//button[contains(.,'Continuar e Fechar')]

Clicar no botão "Gostei"
    Wait Until Element Is Visible  xpath=(//span[contains(.,'Gostei')])[2]
    Set Focus To Element  xpath=(//span[contains(.,'Gostei')])[2]
    Click Element At Coordinates  xpath=//button[contains(.,'Gostei')]  0  0  

Clicar na funcionalidade "Gostei"
    Click Element  xpath=//i[@class='icofont-heart'][1]

Conferir se o "produto" adicionado consta na lista
    Wait Until Element Is Visible  class=feature-name
    Element Should Contain  class=feature-name  Led 5Mm Vermelho    


**** Test Case ***
CT_003 - Validar funcionalidade "Gostei"
    Acessar a página de um "produto" do e-commerce NewPeças
    Clicar no botão "Gostei"
    Clicar na funcionalidade "Gostei"
    Conferir se o "produto" adicionado consta na lista    


