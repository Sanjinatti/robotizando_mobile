*** Settings ***
Resource    ../Components/Click_Element.robot
Resource    ../Resources/Home.robot


*** Keywords ***
DADO que o usuário esteja na home
    Clicar no elemento    ${ENTER_HOME_BUTTON}

E clique em ENTRAR
    Clicar no elemento    ${ENTER_HOME_BUTTON}

ENTÃO uma mensagem de sucesso será exibida
    Wait Until Page Contains    text
