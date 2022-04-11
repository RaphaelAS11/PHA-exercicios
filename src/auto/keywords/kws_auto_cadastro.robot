*** Settings ***
Documentation    Aqui estarão todas as keywords referentes ao cadastro no site automation

Library    Screenshot
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
    ${FAKE_NAME}        FakerLibrary.First Name
    ${FAKE_LASTNAME}    FakerLibrary.Last Name
    ${FAKE_PSSWD}       FakerLibrary.Password
    ${FAKE_ADDRESS1}    FakerLibrary.Street Address
    ${FAKE_CITY}        FakerLibrary.City
    ${FAKE_ZIPECODE}    FakerLibrary.Zipcode
    ${FAKE_COMPANY}     FakerLibrary.Company
    ${FAKE_MOBILE}      FakerLibrary.Phone Number
    ${FAKE_ALIAS}       FakerLibrary.Name
    

    Wait Until Element Is Visible    id=${REGISTER.form}    
    Click Element                    ${REGISTER.check_mr}
    

    Click Element    id=${REGISTER.select_days}
    Click Element    xpath=//*[@id="days"]/option[2]
    Click Element    id=${REGISTER.select_months}
    Click Element    xpath=//*[@id="months"]/option[7]
    Click Element    id=${REGISTER.select_years}
    Click Element    xpath=//*[@id="years"]/option[4]
       

    Input Text    ${REGISTER.first_name}          ${FAKE_NAME}
    Input Text    ${REGISTER.last_name}           ${FAKE_LASTNAME}
    Input Text    ${REGISTER.password}            ${FAKE_PSSWD}
   
#    Input Text    ${REGISTER.select_days}         7
#    Input Text    ${REGISTER.select_months}       7
#    Input Text    ${REGISTER.select_year}         1990
    
    Input Text    ${REGISTER.address_name}        ${FAKE_NAME}
    Input Text    ${REGISTER.address_lastname}    ${FAKE_LASTNAME}
    Input Text    ${REGISTER.company}             ${FAKE_COMPANY}
    Input Text    ${REGISTER.address1}            ${FAKE_ADDRESS1}
    Input Text    ${REGISTER.city}                ${FAKE_CITY}

#    Input Text    ${REGISTER.state}               ${FAKE_STATE} 

#    Input Text    ${REGISTER.state}               ${FAKE_STATE} 

#    Input Text    ${REGISTER.postcode}            ${FAKE_ZIPCODE}
    Input Text    ${REGISTER.mobile}              ${FAKE_MOBILE}  
    Input Text    ${REGISTER.alias}               ${FAKE_ALIAS}
    

Submeter cadastro
    Clicar em "Register"
Conferir se o cadastro foi efetuado com sucesso
    Title Should Be     My account - My Store