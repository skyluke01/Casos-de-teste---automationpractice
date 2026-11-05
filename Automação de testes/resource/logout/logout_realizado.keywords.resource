Language: ptBr

*** Variáveis ***

*** Configurações ***
Biblioteca    SeleniumLibrary
Recurso    logout_realizado.variareis.resource
Recurso    ../login/login_realizado.variaveis.resource

*** Keywords ***

que estou logado no sistema
    [Documentação]    Verifica se o usuário está logado no sistema.
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
