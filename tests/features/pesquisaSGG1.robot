*** Settings ***
Documentation    This applicantion should search news of São Gonçalo in the Site g1.globo.com

Resource    ../../src/config/package.robot


Test Setup       Abrir navegador
Test Teardown    Fechar navegador

*** Test Cases ***
Cenario: Pesquisar sao goncalo no g1
    [Tags]    SGNOG1
    Acessar a página home do site g1
    Digitar o tópico no campo de pesquisa
    Apertar enter no pesquisar
#    Conferir se a pesquisa foi satisfatoria