Language: ptBr

*** Variáveis ***

*** Configurações ***
Biblioteca    SeleniumLibrary
Recurso    ../../resource/cadastro/cadastro_realizado.variaveis.resource
Recurso    ../../resource/inscricao/inscricao.variaveis.resource

*** Keywords ***

desço para o final da página e insiro meu e-mail na seção "SUBSCRIPTION"
    [Documentação]    desce a página até encontrar o campo de se inscrever e digita o email
    [Arguments]    ${email_inscricao}
    Scroll Element Into View         ${ID_INSCRICAO}
    Wait Until Element Is Visible    ${ID_INSCRICAO}
    Input Text    ${ID_INSCRICAO}    ${email_inscricao}    ${True}  

    #Verifica se o email inserido é o correto
    ${EMAIL_EM_TELA}=    Get Value    ${ID_INSCRICAO}
    Should Be Equal     ${EMAIL_EM_TELA}    ${EMAIL_INSCRICAO}


clico no botão de inscrição   
    [Documentação]    Clica no botão para enviar a inscrição
    Click Element    ${BOTÃO_ENVIAR_INSCRICAO}                 

devo conseguir visualizar a mensagem de sucesso "You have been successfully subscribed!"
    [Documentação]    Validação da mensagem de sucesso ao se inscrever
    Wait Until Element Is Visible    ${ID_MENSAGEM_SUCESSO_INSCRICAO}

    #Verifica se a mensagem de sucesso é a correta
    ${MENSAGEM_EM_TELA}=    Get Text    ${ID_MENSAGEM_SUCESSO_INSCRICAO}
    Should Be Equal     ${MENSAGEM_EM_TELA}    ${MENSAGEM_SUCESSO_INSCRICAO}
