*** Settings ***
Library     AppiumLibrary


*** Keywords ***
Clicar no elemento
    [Arguments]    ${LOCATOR}
    Wait Until Element Is Visible    ${LOCATOR}    30s
    Click Element    ${LOCATOR}
