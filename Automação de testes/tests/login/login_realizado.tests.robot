Language: ptBr

*** Configurações ***
Recurso    ../../resource/login/login_realizado.keywords.resource

Suite Setup    Abrir navegador
Suite Teardown    Fechar navegador

*** Casos De Teste ***

Login realizado com sucesso
    [Documentação]    Verifica se o login foi realizado com sucesso utilizando credenciais válidas.
    Dado que o usuário está na página de login
    Quando o usuário insere credenciais   ${EMAIL}  ${SENHA}
    E clica no botão de login
    Então o usuário deve ser redirecionado para a página inicial 
    [Teardown]    Fechar navegador

Falha no login com Senha inválida
    [Documentação]    Verifica se o sistema exibe uma mensagem de erro ao tentar realizar o login com credenciais email válidas e senha inválida.
    [Setup]    Abrir navegador
    Dado que o usuário está na página de login
    Quando o usuário insere credenciais    ${EMAIL}  ${SENHA_INVALIDA}
    E clica no botão de login
    Então o sistema deve exibir uma mensagem de erro    ${MENSAGEM_ERRO_LOGIN}
    [Teardown]    Fechar navegador

Falha no login com Email inválido
    [Documentação]    Verifica se o sistema exibe uma mensagem de erro ao tentar realizar o login com email inválido e senha válida.
    [Setup]    Abrir navegador
    Dado que o usuário está na página de login
    Quando o usuário insere credenciais    ${EMAIL_INVALIDO}  ${SENHA}
    E clica no botão de login
    Então o sistema deve exibir uma mensagem de erro    ${MENSAGEM_ERRO_LOGIN}
    [Teardown]    Fechar navegador

Falha no login com Email e Senha inválidos
    [Documentação]    Verifica se o sistema exibe uma mensagem de erro ao tentar realizar o login com email e senha inválidos.
    [Setup]    Abrir navegador
    Dado que o usuário está na página de login
    Quando o usuário insere credenciais    ${EMAIL_INVALIDO}  ${SENHA_INVALIDA}
    E clica no botão de login
    Então o sistema deve exibir uma mensagem de erro    ${MENSAGEM_ERRO_LOGIN}
    [Teardown]    Fechar navegador

Falha no login com Email em branco
    [Documentação]    Verifica se o sistema exibe uma mensagem de erro ao tentar realizar o login com email em branco.
    [Setup]    Abrir navegador
    Dado que o usuário está na página de login
    Quando o usuário insere credenciais    ${EMAIL_EM_BRANCO}  ${SENHA}
    E clica no botão de login
    Então não devo ser redirecionado para a página inicial 
    [Teardown]    Fechar navegador  

Falha no login com Senha em branco
    [Documentação]    Verifica se o sistema exibe uma mensagem de erro ao tentar realizar o login com senha em branco.
    [Setup]    Abrir navegador
    Dado que o usuário está na página de login
    Quando o usuário insere credenciais    ${EMAIL}  ${SENHA_EM_BRANCO}
    E clica no botão de login
    Então não devo ser redirecionado para a página inicial
    [Teardown]    Fechar navegador

Falha no login com Email e Senha em branco
    [Documentação]    Verifica se o sistema exibe uma mensagem de erro ao tentar realizar o login com email e senha em branco.
    [Setup]    Abrir navegador
    Dado que o usuário está na página de login
    Quando o usuário insere credenciais    ${EMAIL_EM_BRANCO}  ${SENHA_EM_BRANCO}
    E clica no botão de login
    Então não devo ser redirecionado para a página inicial
    [Teardown]    Fechar navegador

