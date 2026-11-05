Language: ptBr

*** Configurações ***
Recurso    ../../resource/login/login_realizado.keywords.resource
Recurso    ../../resource/logout/logout_realizado.keywords.resource

Suite Setup    Abrir navegador
Suite Teardown    Fechar navegador

*** Casos De Teste ***


Login realizado com sucesso
    [Documentação]    Verifica se o login foi realizado com sucesso utilizando credenciais válidas.
    Dado que o usuário está na página de login
    Quando o usuário insere credenciais   ${EMAIL}  ${SENHA}
    E clica no botão de login
    Então o usuário deve ser redirecionado para a página inicial 

Logout da Conta

    Dado que estou logado no sistema
    Quando clico em "Logout"
    Então devo ser desconectado da minha conta e ser redirecionado a tela de login
