*** Settings ***
Documentation    Aqui estarão todas as keywords referentes ao cadastro no site automation

Resource    ../../config/package.robot
*** Keywords ***

Clicar em "${BUTTON}"
    Wait Until Element Is Visible        xpath=//*[contains(text(), '${BUTTON}')]
    Click Element                        xpath=//*[contains(text(), '${BUTTON}')]

Informar um e-mail válido
    Wait Until Element Is Visible        email_create
    Input Text                           email_create    prime_hero_employee@prime.com

Preencher os dados obrigatórios
    
Submeter cadastro
    Clicar em "Register"
Conferir se o cadastro foi efetuado com sucesso
    