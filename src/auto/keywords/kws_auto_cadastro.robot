*** Settings ***
Documentation    Aqui estarão todas as keywords referentes ao cadastro no site automation

Resource    ../../config/package.robot
*** Keywords ***

Clicar em "${BUTTON}"
    Wait Until Element Is Visible        xpath=//*[contains(text(), '${BUTTON}')]
    Click Element                        xpath=//*[contains(text(), '${BUTTON}')]

Clicar em Create an account
    Wait Until Element Is Visible        id=SubmitCreate
    Click Element                        id=SubmitCreate

Informar um e-mail válido
    ${FAKE_EMAIL}    FakerLibrary.Free Email
    Wait Until Element Is Visible       email_create
    Input Text                          email_create    ${FAKE_EMAIL}

Preencher os dados obrigatórios
    ${FAKE_NAME}    FakerLibrary.First Name
    ${FAKE_LASTNAME}    FakerLibrary.Last Name
    ${FAKE_PSSWD}    FakerLibrary.Password
    ${FAKE_ADDRESS1}    FakerLibrary.Street Address
    

    Wait Until Element Is Visible    id=${REGISTER.form}    
    Click Element                    ${REGISTER.check_mr}
    
    Input Text    ${REGISTER.first_name}      ${FAKE_NAME}
    Input Text    ${REGISTER.last_name}    ${FAKE_LASTNAME}
    Input Text    ${REGISTER.password}   ${FAKE_PSSWD}
   
    Input Text    ${REGISTER.select_days}    days
    Input Text    ${REGISTER.select_months}    months
    Input Text    ${REGISTER.select_year}    years
    
    Input Text    ${REGISTER.address_name}    ${FAKE_ADDRESS1}
    Input Text    ${REGISTER.address_lastname}    lastname
    Input Text    ${REGISTER.company}    Company
    Input Text    ${REGISTER.address1}    address1
    Input Text    ${REGISTER.city}    ity
    Input Text    ${REGISTER.state}    id_state
    Input Text    ${REGISTER.postcode}    postcode
    Input Text    ${REGISTER.other}    other
    Input Text    ${REGISTER.mobile}    phone_mobile
    Input Text    ${REGISTER.alias}    alias
    

Submeter cadastro
    Clicar em "Register"
Conferir se o cadastro foi efetuado com sucesso
    