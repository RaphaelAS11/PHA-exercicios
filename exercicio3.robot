*** Settings ***
Documentation    Aqui serão feitos os testes web.
Library    SeleniumLibrary


*** Keywords ***

    

*** Test Cases ***
Cenario: Pesquisar produto existente
    [Tags]    Pesquisar
    Open Browser    about:blank    chrome
    Go To           http://automationpractice.com/index.php    
    Maximize Browser Window

    Title Should Be    My Store
    Wait Until Element Is Visible    id=searchbox    10
    Input Text                       id=search_query_top    blouse
    Click Button                     name=submit_search

    Wait Until Element Is Visible    id=center_column    
    Title Should Be                  Search - My Store

    Page Should Contain Image        xpath=//*[@src='http://automationpractice.com/img/p/7/7-home_default.jpg']  
    Capture Page Screenshot     
   
    Close Browser    