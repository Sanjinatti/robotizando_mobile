*** Settings ***
Library     AppiumLibrary


*** Keywords ***
Inserir texto
    [Arguments]    ${LOCATOR}    ${TEXT}
    Wait Until Element Is Visible    ${LOCATOR}    30s
    Input Text    ${LOCATOR}    ${TEXT}
