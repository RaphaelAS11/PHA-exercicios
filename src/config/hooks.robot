*** Settings ***
Documentation    Aqui estão presentes todas a config de setup e teardown.
# aqui ta chamando o packege onde tem a library selenium...
Resource    package.robot


*** Keywords ***
Abrir navegador
    Open Browser    about:blank    chrome
    Go To           http://automationpractice.com/index.php
    Maximize Browser Window

Fechar navegador
    Capture Page Screenshot    
    Close Browser