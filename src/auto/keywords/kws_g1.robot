*** Settings ***
Documentation    Aqui estarão todas as keywords referentes a pesquisa no site automation

Resource    ../../config/package.robot

*** Keywords ***
Acessar a página home do site g1
    Go To    ${G1_HOME_PAGE.url} 
    Title Should Be     ${G1_HOME_PAGE.title} 
    Wait Until Element Is Visible    id=${G1_HOME_PAGE.box_id}    10

Digitar o tópico no campo de pesquisa
    Input Text                       id=${G1_HOME_PAGE.box_id}     ${SEARCH_TOPIC}

   
Apertar enter no pesquisar
    Press Keys    id=${G1_HOME_PAGE.box_id}    ENTER

#Conferir se na pesquisa apareceu ${MENSAGEM}
     
    