*** Settings ***
Library     AppiumLibrary
Library     ../../Helpers/GET_Envs.py


*** Variables ***
${PLATFORM_NAME}        Android
${DEVICE_NAME}          emulator-5554
${AUTOMATION_NAME}      UIAutomator2
${PACKAGE}              com.bankeiro.test
${ACTIVITY}             com.bankeiro.test.MainActivity


*** Keywords ***
Iniciar aplicativo
    ${ENVS}    Get Enviroment Variables
    Set Global Variable    ${ENVS}    ${ENVS}

    Open Application
    ...    remote_url=http://localhost:4723/wd/hub
    ...    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    appPackage =${PACKAGE}
    ...    appActivity=${ACTIVITY}
    ...    automationName=${AUTOMATION_NAME}

Fechar Aplicativo
    Sleep  1s
    Close Application