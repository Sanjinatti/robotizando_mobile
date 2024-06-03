*** Settings ***
Documentation       Validação automatizada de feature de recuperação de login

Resource            ../Pages/Home.robot
Resource            ../Pages/User.robot
Resource            ../Pages/Forgot_Login.robot


*** Keywords ***
CT: Recuperar login com sucesso
    DADO que o usuário esteja na home
    E clique em ENTRAR
    E clique em Esqueceu o login
    QUANDO preencher o cnpj corretamente
    ENTÃO uma mensagem de sucesso será exibida
