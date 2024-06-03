*** Settings ***
Resource    ../Components/Insert_Text.robot
Resource    ../Resources/Forgot_Login.robot


*** Keywords ***
QUANDO preencher o cnpj corretamente
    Inserir texto    ${INPUT_CNPJ}    ${ENVS['CNPJ']}
