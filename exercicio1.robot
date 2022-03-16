*** Settings ***
Documentation        Aqui estarão os exercícios da da aula de automação.


*** Variables ***
&{PESSOA}        nome=Raphael    
...              sobrenome=Silva
...              data_de_nascimento=10/10/1993
...              endereco=Rua do rio    
...              carro=onyx

@{FRUTAS}    tangerina    
...        banana
...        morango    
...        abacaxi
...        laranja

*** Keywords ***
Somar dois numeros
    [Arguments]            ${NUM_A}    ${NUM_B}
    ${SOMA}    Evaluate    ${NUM_A} + ${NUM_B}
    [Return]    ${SOMA}


multiply by two
    [Arguments]            ${NUM_A}
    ${DOBRO}    Evaluate    ${NUM_A} * 2
    [Return]    ${DOBRO}

*** Comments ***
Isso é uma seção de comentários
testando

*** Test Cases ***
Imprimindo no Console as informações da PESSOA
    Log to Console    \n${PESSOA.nome}
    Log To Console    ${PESSOA.sobrenome}
    Log To Console    ${PESSOA.data_de_nascimento}
    Log To Console    ${PESSOA.endereco}
    Log To Console    ${PESSOA.carro}

Validar a impressão de lista
    [Tags]    LISTA
    Log To Console    \n${FRUTAS}

Validar a Soma
    [Tags]    SOMA
    ${RESULT}    Somar dois numeros    54    58
    Log To Console    \n${RESULT}

Dobrar o numero
    [Tags]    DOBRO
    ${RESULT}    Somar dois numeros    54    58
    ${DOBRO}    multiply by two    ${RESULT}
    Log To Console    \n${DOBRO}