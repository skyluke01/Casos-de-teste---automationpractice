Language: ptBr

*** Variáveis ***

*** Configurações ***
Biblioteca    SeleniumLibrary
Recurso    formulario_contato.variaveis.resource
Recurso    ../login/login_realizado.variaveis.resource

*** Keywords ***

clico no botão "Contact us"
    [Documentação]     Clica no botão "Contact Us" no menu superior
    Click Element    ${BOTAO_MENU_CONTATO}


devo ser redirecionado para a página de contato e verificar o texto "CONTACT US"
    [Documentação]    Verifica o redirecionamento para a página de contato

    Wait Until Element Is Visible    ${CAMPO_TITULO_PAGINA_CONTATO}

    #Verificação se o titulo da página de contato está correto 
    ${TITULO_EM_TELA}=    Get Text    ${CAMPO_TITULO_PAGINA_CONTATO}
    Should Be Equal       ${TITULO_EM_TELA}    ${TEXTO_TITULO_PAGINA_CONTATO}

    #Verificação se o titulo da aba do navegador está correto
    ${TITULO_ABA}    Get Title
    Should Be Equal    ${TITULO_ABA}    ${TITULO_ABA_CONTATO}

que estou no formulário "GET IN TOUCH"
    [Documentação]    Verifica se está na página de contato
    Wait Until Element Is Visible    ${CAMPO_TITULO_PAGINA_CONTATO}

    #Verificação se o titulo da página de contato está correto 
    ${TITULO_EM_TELA}=    Get Text    ${CAMPO_TITULO_PAGINA_CONTATO}
    Should Be Equal       ${TITULO_EM_TELA}    ${TEXTO_TITULO_PAGINA_CONTATO}

    #Verificação se o titulo da aba do navegador está correto
    ${TITULO_ABA}    Get Title
    Should Be Equal    ${TITULO_ABA}    ${TITULO_ABA_CONTATO}


preencho todos os campos obrigatórios do formulário de contato
    [Documentação]    Preencher os campos nome, email, assunto, mensagem e anexa uma foto
    [Arguments]    ${nome}    ${email}    ${assunto}    ${mensagem}    ${caminho_imagem}

    Input Text    ${CAMPO_NOME}    ${nome}    ${True}
    Input Text    ${CAMPO_EMAIL}    ${email}    ${True}
    Input Text    ${CAMPO_ASSUNTO}    ${assunto}    ${True}
    Input Text    ${ID_MENSAGEM}    ${mensagem}    ${True}
    Choose File    ${CAMPO_IMAGEM}    ${caminho_imagem}

    ##verifico se o nome, email, assunto e mensagem foram inseridos corretamente
    ${NOME_EM_TELA}    Get Value    ${CAMPO_NOME}
    Should Be Equal    ${NOME_EM_TELA}    ${nome}

    ${EMAIL_EM_TELA}    Get Value    ${CAMPO_EMAIL}
    Should Be Equal    ${EMAIL_EM_TELA}    ${email}

    ${ASSUNTO_EM_TELA}    Get Value    ${CAMPO_ASSUNTO}
    Should Be Equal    ${ASSUNTO_EM_TELA}    ${assunto}

    ${MENSAGEM_EM_TELA}    Get Value    ${ID_MENSAGEM}
    Should Be Equal    ${MENSAGEM_EM_TELA}    ${mensagem}

    # Validação se a imagem foi anexada corretamente
    ${IMAGEM_EM_TELA}=    Get Value    ${CAMPO_IMAGEM}
    Should Contain        ${IMAGEM_EM_TELA}    imagem-teste-formulario.png

clico em "Submit" e confirmo no navegador
    [Documentação]    Clica no botão submit e confirma através do popup do navegador
    Click Element    ${BOTAO_SUBMIT}
    Handle Alert    action=ACCEPT


o sistema deve exibir a mensagem de sucesso "Success! Your details have been submitted successfully."
    [Documentação]    Validação da mensagem de sucesso
    Wait Until Element Is Visible    ${ID_MENSAGEM_DE_SUCESSO_FORMULARIO}

    #Verifica se a mensagem de sucesso está correta
    ${MENSAGEM_EM_TELA}    Get Text    ${ID_MENSAGEM_DE_SUCESSO_FORMULARIO}
    Should Be Equal    ${MENSAGEM_EM_TELA}    ${MENSAGEM_DE_SUCESSO_FORMULARIO}

clico em "Submit"
    [Documentação]    Clica no botão submit
    Click Element    ${BOTAO_SUBMIT}



o sistema não deve me redirecionar para outra página
    [Documentação]    Verifica se não foi redirecionado por falta de campo obrigadotório
    Wait Until Element Is Visible    ${CAMPO_TITULO_PAGINA_CONTATO}

    #Verificação se o titulo da página de contato está correto 
    ${TITULO_EM_TELA}=    Get Text    ${CAMPO_TITULO_PAGINA_CONTATO}
    Should Be Equal       ${TITULO_EM_TELA}    ${TEXTO_TITULO_PAGINA_CONTATO}

    #Verificação se o titulo da aba do navegador está correto
    ${TITULO_ABA}    Get Title
    Should Be Equal    ${TITULO_ABA}    ${TITULO_ABA_CONTATO}

