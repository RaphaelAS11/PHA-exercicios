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

Contar os 9 primeiros
    Log To Console    \n
    FOR    ${COUNT}    IN RANGE    0    9   
        Log To Console    ${COUNT}
    END    

Imprimir 5 ou 8
    Log To Console    \n
    FOR    ${COUNT}    IN RANGE    0    11   
        IF    ${COUNT} == 5 or ${COUNT} == 8
            Log To Console    Estou no numero: ${COUNT}
        END
    END    

Percorrer lista
    @{FRUTAS}    Create List    maca    banana    pera    uva
    Log To Console    \n
    FOR    ${fruta}    IN    @{FRUTAS}
        Log to console    ${fruta}
    END    

Listar paises
    [Arguments]    @{PAISES}
    Log To Console    \n
    FOR    ${pais}    IN    @{PAISES}
        Log To Console    eu já fui em: ${pais}
    END
    
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

Imprimir os 9 primeiro valores de uma lista
    [Tags]    9PRIMEIROS
    Contar os 9 primeiros

Imprimir uma lista
    [Tags]    LISTA
    Percorrer lista

Lista de paises que ja fui
    [Tags]    PAISES
    Listar paises    Argentina    Paraguai    Colombia

Imprimir do numero 5 ou 8
    [Tags]    5ou8
    Imprimir 5 ou 8