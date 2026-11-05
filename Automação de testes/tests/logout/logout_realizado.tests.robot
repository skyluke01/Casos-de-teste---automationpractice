Language: ptBr

*** Configurações ***
Recurso    ../../resource/login/login_realizado.keywords.resource
Recurso    ../../resource/logout/logout_realizado.keywords.resource

Suite Setup    Abrir navegador
Suite Teardown    Fechar navegador

*** Casos De Teste ***

 
Logout da Conta

    Dado que estou logado no sistema    ${EMAIL}  ${SENHA}   
    Quando clico em "Logout"
    Então devo ser desconectado da minha conta e ser redirecionado a tela de login
