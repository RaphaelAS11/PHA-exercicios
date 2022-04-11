*** Settings ***
Documentation    Este é o gerenciador de dependências

##    Libraries    ##
Library    SeleniumLibrary
Library    FakerLibrary
Library    DebugLibrary

##    Keywords    ##
Resource    ../auto/keywords/kws_auto_search.robot
Resource    ../auto/keywords/kws_auto_cadastro.robot
Resource    ../auto/keywords/kws_g1.robot


##    Pages    ##
Resource    ../auto/pages/automation_cadastro.robot
Resource    ../auto/pages/automation_home.robot
Resource    ../auto/pages/automation_search.robot
Resource    ../auto/pages/g1_home.robot

##    Hooks    ##
Resource    hooks.robot
Variables   hooks.yaml
