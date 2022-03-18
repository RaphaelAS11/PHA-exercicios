*** Settings ***
Documentation    Aqui estarão todas as keywords referentes a pesquisa no site automation

Resource    ../../config/package.robot
*** Keywords ***

Acessar a página home do site Automation Practice
    Title Should Be     ${HOME_PAGE.title} 
    Wait Until Element Is Visible    id=${HOME_PAGE.box_id}    10

Digitar o nome do produto no campo de pesquisa
    Input Text                       id=${HOME_PAGE.box_id}     ${PRODUCT_PAGE.name}
   
Clicar no botão pesquisar
    Click Button                     name=${HOME_PAGE.button}

Conferir se a imagem do produto foi listada no site
    Wait Until Element Is Visible    ${PRODUCT_PAGE.id}    
    Title Should Be                  ${PRODUCT_PAGE.title}
    Page Should Contain Image        xpath=//*[@src='${PRODUCT_PAGE.image}']  
