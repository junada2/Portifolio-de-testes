*** Settings ***
Test Setup  Abrir o navegador
#Test Teardown  Fechar o navegador
Library  SeleniumLibrary


*** Variables ***
${PRODUTO_1}  Cabo 
${PRODUTO_2}  Led 
${PRODUTO_3}  Placa
@{LISTA_PRODUTOS}  ${PRODUTO_1}  ${PRODUTO_2}  ${PRODUTO_3}  
${BROWSER}  chrome
${URL}  https://www.newpecas.com.br


*** Keywords ***
Abrir o navegador  
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window

Fechar o navegador
    Close Browser

Clicar em lista de busca
    Wait Until Element Is Visible  class=header-logo
    Wait Until Element Is Visible  class=icofont-settings
    Click Element  class=icofont-settings

Adicionar produtos na lista de busca
    Wait Until Element Is Visible  id:item_topo
    FOR  ${produto}  IN  @{LISTA_PRODUTOS}
        Input Text  id:item_topo  ${produto}
        Click Element  class:icofont-plus
    END

Clicar em pesquisar
    Click Element  xpath://*[@id="search_list"]/div/div/form/button[1]

Verificar elementos buscados
    Wait Until Element Is Visible  xpath:/html/body/div[15]/div/div[1]/div/div[1]/div/ul/li[1]/a/h2
    FOR  ${item}  IN  1  2  3
        Element Text Should Be  xpath:/html/body/div[15]/div/div[1]/div/div[1]/div/ul/li[${item}]/a/h2  ${PRODUTO_${item}}
    END
    

*** Test Cases ***
CT_004 - Verificar Produtos Buscados Por Lista de Busca
    Clicar em Lista de busca
    Adicionar produtos na lista de busca
    Clicar em pesquisar
    Verificar elementos buscados





