*** Settings ***
Documentation    Aqui estão presentes todas a config de setup e teardown.

# aqui ta chamando o packege onde tem a library selenium...
Resource    package.robot


*** Keywords ***
Abrir navegador
    Set Selenium Implicit Wait    ${CONFIG.IMPLICITY_WAIT}
    Open Browser    about:blank   ${CONFIG.BROWSER} 
    Go To    ${CONFIG.URL} 
    Maximize Browser Window

Fechar navegador
    Capture Page Screenshot    
    Close Browser