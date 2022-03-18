*** Settings ***
Documentation    Aqui serão feitos os testes web.
Resource    ../../src/config/package.robot

Test Setup       Abrir navegador
Test Teardown    Fechar navegador

*** Test Cases ***
Cenario: Pesquisar produto existente
    [Tags]    PESQUISA_OLD
    
    Go To           http://automationpractice.com/index.php    
    Title Should Be    My Store
    Wait Until Element Is Visible    id=searchbox    10
    Input Text                       id=search_query_top    blouse
    Click Button                     name=submit_search
    Wait Until Element Is Visible    id=center_column    
    Title Should Be                  Search - My Store
    Page Should Contain Image        xpath=//*[@src='http://automationpractice.com/img/p/7/7-home_default.jpg']  
    Capture Page Screenshot     

Caso de Teste 1: pesquisar produto existente
    [Tags]    PESQUISA1
    Acessar a página home do site Automation Practice      
    Digitar o nome do produto "blouse" no campo de pesquisa   
    Clicar no botão pesquisar
    Conferir se a imagem do produto foi listada no site    
 
 Caso de Teste 1: pesquisar produto existente
    [Tags]    PESQUISA2
    Acessar a página home do site Automation Practice      
    Digitar o nome do produto "VOID" no campo de pesquisa   
    Clicar no botão pesquisar
    Conferir mensagem "No results were found for your search"