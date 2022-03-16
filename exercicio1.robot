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

