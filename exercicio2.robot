*** Settings ***
Documentation    exercicio de criar e-mail //
...    Contar lista //
...    condicional

*** Variables ***

*** Keywords ***
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
*** Test Cases ***

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