*** Settings ***
Documentation    Aqui estão presentes todas a config de setup e teardown.

# aqui ta chamando o packege onde tem a library selenium...
Resource    package.robot


*** Keywords ***
Abrir navegador
    Set Selenium Implicit Wait    20
    Open Browser    about:blank    chrome
    Maximize Browser Window

Fechar navegador
    Capture Page Screenshot    
    Close Browser