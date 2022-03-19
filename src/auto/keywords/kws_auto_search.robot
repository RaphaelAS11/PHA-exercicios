*** Settings ***
Documentation    Aqui estarão todas as keywords referentes a pesquisa no site automation

Resource    ../../config/package.robot
*** Keywords ***

Acessar a página home do site Automation Practice
    Title Should Be     ${AUTOMATION_SITE_HOME.title} 
    Wait Until Element Is Visible    id=${AUTOMATION_SITE_HOME.box_id}    10

Digitar o nome do produto "${PRODUCT_NAME}" no campo de pesquisa
    Input Text                       id=${AUTOMATION_SITE_HOME.box_id}     ${PRODUCT_NAME}
   
Clicar no botão pesquisar
    Click Button                     name=${AUTOMATION_SITE_HOME.button}

Conferir se a imagem do produto foi listada no site
    Wait Until Element Is Visible    ${PRODUCT_PAGE.id}    
    Title Should Be                  ${PRODUCT_PAGE.title}
    Page Should Contain Image        xpath=//*[@src='${PRODUCT_PAGE.image}']  

Conferir mensagem "${MENSAGEM}"
    Wait Until Page Contains    ${MENSAGEM}
