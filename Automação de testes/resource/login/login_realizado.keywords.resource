Language: ptBr

*** Variáveis ***

*** Configurações ***
Biblioteca    SeleniumLibrary
Recurso    login_realizado.variaveis.resource

*** Keywords ***

Abrir navegador
    [Documentação]    Abre o navegador na página inicial.
    Open Browser    ${URL_PAGINA_INICIAL}    chrome
    Maximize Browser Window
    #Set Selenium Speed    0.5s

Fechar navegador
    [Documentação]    Fecha o navegador.
    Close Browser

que o usuário está na página de login
    [Documentação]    Verifica a página inicial, clica no botão de login e valida a página de destino.
    
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

o usuário insere credenciais   
    [Documentação]    Insere o email e a senha nos campos correspondentes.
    [Argumentos]    ${email}     ${senha}
    input text    ${CAMPO_EMAIL}    ${email}    ${True}
    input text    ${CAMPO_SENHA}    ${senha}    ${True}

    #Verificar se email e senha foram inseridos corretamente
    ${EMAIL_EM_TELA}=    Get Value    ${CAMPO_EMAIL}    
    Should Be Equal    ${EMAIL_EM_TELA}    ${email}

    ${SENHA_EM_TELA}=    Get Value    ${CAMPO_SENHA}    
    Should Be Equal    ${SENHA_EM_TELA}    ${senha}

clica no botão de login 
    [Documentação]    Clica no botão de login.
    Click Button    ${BOTAO_LOGIN}

o usuário deve ser redirecionado para a página inicial 
    [Documentação]    Verifica o redirecionamento para a página inicial.
    Wait Until Element Is Visible    ${ID_NOME_PAGINA_INICIAL}

    # Verifica se o título da página inicial está correto
    ${TITULO_EM_TELA}=    Get Text    ${ID_NOME_PAGINA_INICIAL}
    Should Be Equal       ${TITULO_EM_TELA}    ${NOME_PAGINA_INICIAL}

    # Verifica se o título da aba do navegador está correto
    ${TITULO_ABA}=    Get Title      
    Should Be Equal       ${TITULO_ABA}    ${TITULO_PAGINA_INICIAL}


o sistema deve exibir uma mensagem de erro 
    [Documentação]    Verifica se o sistema exibe uma mensagem de erro ao tentar realizar o login com credenciais inválidas.
    [Argumentos]    ${mensagem_erro}
    Wait Until Element Is Visible    ${CAMPO_MENSAGEM_ERRO}
    
    # Verifica se a mensagem de erro exibida na tela é igual à mensagem de erro esperada
    ${TEXTO_ERRO_EM_TELA}=    Get Text    ${CAMPO_MENSAGEM_ERRO}
    Should Be Equal           ${TEXTO_ERRO_EM_TELA}    ${MENSAGEM_ERRO_LOGIN}

não devo ser redirecionado para a página inicial
    [Documentação]    Verifica se o usuário não foi redirecionado para a página inicial após tentar realizar o login com credenciais inválidas.
    Wait Until Element Is Visible    ${ID_NOME_PAGINA_LOGIN}

    # Verifica se o título da página de login está correto
    ${TITULO_EM_TELA}=    Get Text    ${ID_NOME_PAGINA_LOGIN}
    Should Be Equal    ${TITULO_EM_TELA}    ${NOME_PAGINA_LOGIN}

    # Verifica se o título da aba do navegador está correto
    ${TITULO_ABA}=    Get Title
    Should Be Equal    ${TITULO_ABA}    ${TITULO_PAGINA_LOGIN}



