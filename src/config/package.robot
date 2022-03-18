*** Settings ***
Documentation    Este é o gerenciador de dependências

##    Libraries    ##
Library    SeleniumLibrary

##    Keywords    ##
Resource    ../auto/keywords/kws_search.robot

##    Pages    ##
Resource    ../auto/pages/page_home.robot
Resource    ../auto/pages/page_search.robot

##    Hooks    ##
Resource    hooks.robot