Language: ptBr

*** Variáveis ***

*** Configurações ***
Biblioteca    SeleniumLibrary
Recurso    logout_realizado.variaveis.resource
Recurso    ../login/login_realizado.variaveis.resource

*** Keywords ***

que estou logado no sistema
    [Documentação]    Faz o fluxo de login para garantir que o usuário esteja logado antes de realizar o logout.
    [Argumentos]    ${email}     ${senha}
    
    # Como o navegador já abre na página inicial, apenas garantimos que estamos nela e aguardamos o botão aparecer
    Wait Until Element Is Visible    ${BOTAO_MENU_LOGIN}
    Click Element                    ${BOTAO_MENU_LOGIN}

    # Agora aguarda carregar os elementos da página de login
    Wait Until Element Is Visible    ${ID_NOME_PAGINA_LOGIN}

    # Verifica se o título da página de login está correto
    ${TITULO_EM_TELA}=    Get Text    ${ID_NOME_PAGINA_LOGIN}
    Should Be Equal       ${TITULO_EM_TELA}    ${NOME_PAGINA_LOGIN}

    # Verifica se o título da aba do navegador está correto
    ${TITULO_ABA}=    Get Title
    Should Be Equal   ${TITULO_ABA}    ${TITULO_PAGINA_LOGIN}
 
     # Agora insere as credenciais e realiza o login
    input text    ${CAMPO_EMAIL}    ${email}    ${True}
    input text    ${CAMPO_SENHA}    ${senha}    ${True}

    #Verificar se email e senha foram inseridos corretamente
    ${EMAIL_EM_TELA}=    Get Value    ${CAMPO_EMAIL}    
    Should Be Equal    ${EMAIL_EM_TELA}    ${email}

    ${SENHA_EM_TELA}=    Get Value    ${CAMPO_SENHA}    
    Should Be Equal    ${SENHA_EM_TELA}    ${senha}
    #clica no botão de login e aguarda o redirecionamento para a página inicial

    Click Button    ${BOTAO_LOGIN}
    Wait Until Element Is Visible    ${ID_NOME_PAGINA_INICIAL}

    # Verifica se o título da página inicial está correto
    ${TITULO_EM_TELA}=    Get Text    ${ID_NOME_PAGINA_INICIAL}
    Should Be Equal       ${TITULO_EM_TELA}    ${NOME_PAGINA_INICIAL}

    # Verifica se o título da aba do navegador está correto
    ${TITULO_ABA}=    Get Title      
    Should Be Equal       ${TITULO_ABA}    ${TITULO_PAGINA_INICIAL}

clico em "Logout"
    [Documentação]    Clica no botão de logout.
    Click Element    ${BOTAO_MENU_LOGOUT}


devo ser desconectado da minha conta e ser redirecionado a tela de login
    [Documentação]    Verifica se o usuário foi desconectado e redirecionado para a tela de login.
    Wait Until Element Is Visible    ${ID_NOME_PAGINA_LOGIN}

    # Verifica se o título da página de login está correto
    ${TITULO_EM_TELA}=    Get Text    ${ID_NOME_PAGINA_LOGIN}
    Should Be Equal       ${TITULO_EM_TELA}    ${NOME_PAGINA_LOGIN}

    # Verifica se o título da aba do navegador está correto
    ${TITULO_ABA}=    Get Title
    Should Be Equal       ${TITULO_ABA}    ${TITULO_PAGINA_LOGIN}
