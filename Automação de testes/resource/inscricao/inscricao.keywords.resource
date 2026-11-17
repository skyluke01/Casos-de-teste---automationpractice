Language: ptBr

*** Variáveis ***

*** Configurações ***
Biblioteca    SeleniumLibrary
Recurso    ../../resource/cadastro/cadastro_realizado.variaveis.resource
Recurso    ../../resource/inscricao/inscricao.variaveis.resource
Recurso    ../../resource/produto/carrinho/carrinho.variaveis.resource

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
    Wait Until Element Is Visible    ${ID_MENSAGEM_SUCESSO_INSCRICAO}    timeout=2s

    #Verifica se a mensagem de sucesso é a correta
    ${MENSAGEM_EM_TELA}=    Get Text    ${ID_MENSAGEM_SUCESSO_INSCRICAO}
    Should Be Equal As Strings     ${MENSAGEM_EM_TELA}    ${MENSAGEM_SUCESSO_INSCRICAO}

clico no botão "Cart"
    [Documentação]    Clica no botão o carrinho
    Wait Until Element Is Visible    ${BOTAO_CARRINHO}
    Click Element    ${BOTAO_CARRINHO}


devo ser redirecionado para página do carrinho e ver o texto "Shopping Cart"
    [Documentação]    Verificar se foi redirecionado para a página do carrinho
    Wait Until Element Is Visible    ${ID_PAGINA_CARRINHO}

    #Verifica titulo da página se o titulo da página do carrinho está correto
    ${TITULO_EM_TELA}=    Get Text    ${ID_PAGINA_CARRINHO}
    Should Be Equal    ${TITULO_EM_TELA}    ${NOME_PAGINA_CARRINHO}

    #Verifica titulo da aba da pagina carrinho está correto
    ${TITULO_ABA}    Get Title    
    Should Be Equal    ${TITULO_ABA}    ${TITULO_PAGINA_CARRINHO}
