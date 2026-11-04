Language: ptBr

*** Variáveis ***

*** Configurações ***
Biblioteca    SeleniumLibrary
Recurso    cadastro_realizado.variaveis.resource

*** Keywords ***

Abrir navegador
    [Documentação]    Abre o navegador na página inicial.
    Open Browser    ${URL_PAGINA_INICIAL}    chrome
    Maximize Browser Window
    #Set Selenium Speed    0.5s

Fechar navegador
    [Documentação]    Fecha o navegador.
    Close Browser

que estou na página inicial do site
    [Documentação]    Verifica a página inicial e aguarda o botão de cadastro/login aparecer.
    Wait Until Element Is Visible    ${BOTAO_MENU_CADASTRO}


clico no botão "Signup / Login"
    [Documentação]    Clica no botão de cadastro/login.
    Click Element    ${BOTAO_MENU_CADASTRO}


devo ser redirecionado para a página de cadastro/login e visualizar o formulário "New User Signup!"
    [Documentação]    Verifica o redirecionamento para a página de cadastro/login e valida o formulário.
    Wait Until Element Is Visible    ${ID_NOME_PAGINA_CADASTRO}

    # Verifica se o título da página de cadastro está correto
    ${TITULO_EM_TELA}=    Get Text    ${ID_NOME_PAGINA_CADASTRO}
    Should Be Equal       ${TITULO_EM_TELA}    ${NOME_PAGINA_CADASTRO}

    # Verifica se o título da aba do navegador está correto
    ${TITULO_ABA}=    Get Title
    Should Be Equal   ${TITULO_ABA}    ${TITULO_PAGINA_CADASTRO}

que estou na página de cadastro/login
    [Documentação]    Verifica a página de cadastro/login e aguarda os campos de nome e email aparecerem.
    Wait Until Element Is Visible    ${ID_NOME_PAGINA_CADASTRO}

    # Verifica se o título da página de cadastro está correto
    ${TITULO_EM_TELA}=    Get Text    ${ID_NOME_PAGINA_CADASTRO}
    Should Be Equal       ${TITULO_EM_TELA}    ${NOME_PAGINA_CADASTRO}

    # Verifica se o título da aba do navegador está correto
    ${TITULO_ABA}=    Get Title
    Should Be Equal   ${TITULO_ABA}    ${TITULO_PAGINA_CADASTRO}


preencho as credenciais de cadastro com nome e email
    [Documentação]    Preenche os campos de nome e email com valores válidos.
    [Arguments]    ${nome}    ${email}
    Input Text    ${CAMPO_NOME_INICIAL}    ${nome}    ${True}
    Input Text    ${CAMPO_EMAIL_INICIAL}    ${email}  ${True} 

    #verifico se o nome e email foram inseridos corretamente
    ${NOME_EM_TELA}=    Get Value    ${CAMPO_NOME_INICIAL }
    Should Be Equal    ${NOME_EM_TELA}    ${nome}

    ${EMAIL_EM_TELA}=    Get Value    ${CAMPO_EMAIL_INICIAL}
    Should Be Equal    ${EMAIL_EM_TELA}    ${email}

clico no botão "Signup"
    [Documentação]    Clica no botão de cadastro.
    Click Button    ${BOTAO_CADASTRO}

devo avançar para o formulário completo "ENTER ACCOUNT INFORMATION"
    [Documentação]    Verifica o redirecionamento para o formulário completo de cadastro e valida o título.
    Wait Until Element Is Visible    ${ID_NOME_PAGINA_FORMULARIO}

    # Verifica se o título da página do formulário de cadastro está correto
    ${TITULO_EM_TELA}=    Get Text    ${ID_NOME_PAGINA_FORMULARIO}
    Should Be Equal       ${TITULO_EM_TELA}    ${NOME_PAGINA_FORMULARIO}

    # Verifica se o título da aba do navegador está correto
    ${TITULO_ABA}=    Get Title
    Should Be Equal   ${TITULO_ABA}    ${TITULO_PAGINA_FORMULARIO}

que estou no formulário "ENTER ACCOUNT INFORMATION"
    [Documentation]    Verifica a página do formulário completo de cadastro e aguarda os campos obrigatórios aparecerem.
    Wait Until Element Is Visible    ${ID_NOME_PAGINA_FORMULARIO}

    #verifica se o título da página do formulário de cadastro está correto
    ${TITULO_EM_TELA}=    Get Text    ${ID_NOME_PAGINA_FORMULARIO}
    Should Be Equal       ${TITULO_EM_TELA}    ${NOME_PAGINA_FORMULARIO}

    #verifica se o título da aba do navegador está correto
    ${TITULO_ABA}=    Get Title
    Should Be Equal   ${TITULO_ABA}    ${TITULO_PAGINA_FORMULARIO}


preencho todos os campos obrigatórios do formulário de cadastro
    [Documentação]    Preenche os campos obrigatórios do formulário de cadastro.
    [Argumentos]    ${senha}  ${dia_nascimento}  ${mes_nascimento}  ${ano_nascimento}
    Input Text    ${ID_SENHA_FORMULARIO}    ${senha}    ${True}
    Select From List By Value    ${ID_DIA_NASCIMENTO}    ${dia_nascimento}
    Select From List By Value    ${ID_MES_NASCIMENTO}    ${mes_nascimento}
    Select From List By Value    ${ID_ANO_NASCIMENTO}    ${ano_nascimento}    

    #verifica se a senha foi inserida corretamente
    ${SENHA_EM_TELA}=    Get Value    ${ID_SENHA_FORMULARIO}
    Should Be Equal    ${SENHA_EM_TELA}    ${senha}

    #verifica se o dia de nascimento foi selecionado corretamente
    ${DIA_EM_TELA}=    Get Value    ${ID_DIA_NASCIMENTO}
    Should Be Equal    ${DIA_EM_TELA}    ${dia_nascimento}

    #verifica se o mês de nascimento foi selecionado corretamente
    ${MES_EM_TELA}=    Get Value    ${ID_MES_NASCIMENTO}
    Should Be Equal    ${MES_EM_TELA}    ${mes_nascimento}

    #verifica se o ano de nascimento foi selecionado corretamente
    ${ANO_EM_TELA}=    Get Value    ${ID_ANO_NASCIMENTO}
    Should Be Equal    ${ANO_EM_TELA}    ${ano_nascimento}


devo poder selecionar opções de newsletter e ofertas especiais
    [Documentação]    Verifica se o usuário consegue selecionar as opções de newsletter e ofertas especiais.
    Click Element    ${ID_NEWSLETTER}
    Click Element    ${ID_OFERTAS_ESPECIAIS}

    #verifica se a opção de newsletter foi selecionada corretamente
    ${NEWSLETTER_EM_TELA}=    Get Element Attribute    ${ID_NEWSLETTER}    checked
    Should Be Equal    ${NEWSLETTER_EM_TELA}    true

    #verifica se a opção de ofertas especiais foi selecionada corretamente
    ${OFERTAS_EM_TELA}=    Get Element Attribute    ${ID_OFERTAS_ESPECIAIS}    checked
    Should Be Equal    ${OFERTAS_EM_TELA}    true

que preenchi os dados da conta
    [Documentação]    Verifica se o usuário conseguiu preencher os dados da conta no formulário de cadastro.

    #verifica se senha, dia, mês e ano de nascimento foram preenchidos corretamente
    ${SENHA_EM_TELA}=    Get Value    ${ID_SENHA_FORMULARIO}
    Should Be Equal    ${SENHA_EM_TELA}    ${SENHA_FORMULARIO_CADASTRO}

    ${DIA_EM_TELA}=    Get Value    ${ID_DIA_NASCIMENTO}
    Should Be Equal    ${DIA_EM_TELA}    ${DIA_NASCIMENTO_FORMULARIO}

    ${MES_EM_TELA}=    Get Value    ${ID_MES_NASCIMENTO}
    Should Be Equal    ${MES_EM_TELA}    ${MES_NASCIMENTO_FORMULARIO}

    ${ANO_EM_TELA}=    Get Value    ${ID_ANO_NASCIMENTO}
    Should Be Equal    ${ANO_EM_TELA}    ${ANO_NASCIMENTO_FORMULARIO}

preencho informações de endereço completo
    [Documentação]    Preenche os campos obrigatórios de endereço no formulário de cadastro.
    [Argumentos]    ${primeiro_nome}  ${ultimo_nome}  ${empresa}  ${endereco}  ${pais}  ${estado}  ${cidade}  ${cep}  ${celular}
    Input Text    ${ID_PRIMEIRO_NOME}    ${primeiro_nome}    ${True}
    Input Text    ${ID_ULTIMO_NOME}    ${ultimo_nome}    ${True}
    Input Text    ${ID_EMPRESA}    ${empresa}    ${True}
    Input Text    ${ID_ENDERECO}    ${endereco}    ${True}
    Select From List By Value    ${ID_PAIS}    ${pais}
    Input Text    ${ID_ESTADO}    ${estado}    ${True}
    Input Text    ${ID_CIDADE}    ${cidade}    ${True}
    Input Text    ${ID_CEP}    ${cep}   ${True}
    Input Text    ${ID_CELULAR}   ${celular}   ${True}

    #verifica se o primeiro nome foi inserido corretamente
    ${PRIMEIRO_NOME_EM_TELA}=    Get Value    ${ID_PRIMEIRO_NOME}
    Should Be Equal    ${PRIMEIRO_NOME_EM_TELA}    ${primeiro_nome}

    #verifica se o último nome foi inserido corretamente
    ${ULTIMO_NOME_EM_TELA}=    Get Value    ${ID_ULTIMO_NOME}
    Should Be Equal    ${ULTIMO_NOME_EM_TELA}    ${ultimo_nome}

    #verifica se a empresa foi inserida corretamente
    ${EMPRESA_EM_TELA}=    Get Value    ${ID_EMPRESA}
    Should Be Equal    ${EMPRESA_EM_TELA}    ${empresa}

    #verifica se o endereço foi inserido corretamente
    ${ENDERECO_EM_TELA}=    Get Value    ${ID_ENDERECO}
    Should Be Equal    ${ENDERECO_EM_TELA}    ${endereco}

    #verifica se o país foi selecionado corretamente
    ${PAIS_EM_TELA}=    Get Value    ${ID_PAIS}
    Should Be Equal    ${PAIS_EM_TELA}    ${pais}

    #verifica se o estado foi inserido corretamente
    ${ESTADO_EM_TELA}=    Get Value    ${ID_ESTADO}
    Should Be Equal    ${ESTADO_EM_TELA}    ${estado}

    #verifica se a cidade foi inserida corretamente
    ${CIDADE_EM_TELA}=    Get Value    ${ID_CIDADE}
    Should Be Equal    ${CIDADE_EM_TELA}    ${cidade}

    #verifica se o CEP foi inserido corretamente
    ${CEP_EM_TELA}=    Get Value    ${ID_CEP}
    Should Be Equal    ${CEP_EM_TELA}    ${cep}

    #verifica se o celular foi inserido corretamente
    ${CELULAR_EM_TELA}=    Get Value    ${ID_CELULAR}
    Should Be Equal    ${CELULAR_EM_TELA}    ${celular}

clico no botão "Create Account"
    [Documentação]    Clica no botão de criar conta.
    Click Button    ${BOTAO_CRIAR_CONTA}


devo poder finalizar o cadastro e visualizar a mensagem de sucesso
    [Documentação]    Verifica o redirecionamento para a página de conta criada e valida a mensagem de sucesso.
    Wait Until Element Is Visible    ${ID_MENSAGEM_SUCESSO_CADASTRO}

    #verifica se a mensagem de sucesso está correta
    ${MENSAGEM_EM_TELA}=    Get Text    ${ID_MENSAGEM_SUCESSO_CADASTRO}
    Should Be Equal       ${MENSAGEM_EM_TELA}    ${MENSAGEM_SUCESSO_CADASTRO}

    #verifica se o título da aba do navegador está correto
    ${TITULO_ABA}=    Get Title
    Should Be Equal   ${TITULO_ABA}    ${TITULO_PAGINA_CONTA_CRIADA}

que minha conta foi criada com sucesso
    [Documentação]    Verifica se a conta foi criada com sucesso e vê na tela a mensagem Account created.
    Wait Until Element Is Visible   ${ID_MENSAGEM_SUCESSO_CADASTRO}


clico em "Continue"
    [Documentação]    Clica no botão de continuar.
    Click Element    ${BOTAO_CONTINUAR}

devo estar automaticamente logado e visualizar "Logged in as [nome do usuário]"
    [Documentação]    Verifica se o usuário está logado automaticamente e valida a mensagem de login.
    Wait Until Element Is Visible    ${ID_NOME_PAGINA_INICIAL}

    #verifica se o nome do usuário logado está correto
    ${NOME_LOGADO_EM_TELA}=    Get Text    ${NOME_USUARIO_LOGADO}
    Should Be Equal       ${NOME_LOGADO_EM_TELA}    ${MENSAGEM_USUARIO_LOGADO}

que estou logado no sistema
    [Documentação]    Verifica se o usuário está logado no sistema e vê "Logged in as [nome do usuário]".
    Wait Until Element Is Visible    ${ID_NOME_PAGINA_INICIAL}

    #verifica se o nome do usuário logado está correto
    ${NOME_LOGADO_EM_TELA}=    Get Text    ${NOME_USUARIO_LOGADO}
    Should Be Equal       ${NOME_LOGADO_EM_TELA}    ${MENSAGEM_USUARIO_LOGADO}

clico em "Delete Account"
    [Documentação]    Clica no botão de excluir conta.
    Click Element    ${BOTAO_EXCLUIR_CONTA}


minha conta deve ser removida e devo visualizar "ACCOUNT DELETED!"
    [Documentação]    Verifica o redirecionamento para a página de conta excluída e valida a mensagem de sucesso.
    Wait Until Element Is Visible    ${ID_MENSAGEM_SUCESSO_EXCLUSAO}

    #verifica se a mensagem de sucesso está correta
    ${MENSAGEM_EM_TELA}=    Get Text    ${ID_MENSAGEM_SUCESSO_EXCLUSAO}
    Should Be Equal       ${MENSAGEM_EM_TELA}    ${MENSAGEM_SUCESSO_EXCLUSAO}


o sistema deve informar "Email Address already exist!"
    [Documentação]    Verifica se o sistema informa que o email já existe ao tentar cadastrar com um email duplicado.
    Wait Until Element Is Visible    ${ID_MENSAGEM_ERRO_CADASTRO}

    #verifica se a mensagem de erro está correta
    ${MENSAGEM_EM_TELA}=    Get Text    ${ID_MENSAGEM_ERRO_CADASTRO}
    Should Be Equal       ${MENSAGEM_EM_TELA}    ${MENSAGEM_ERRO_CADASTRO}

não devo ser redirecionado para o formulário completo "ENTER ACCOUNT INFORMATION"
    [Documentação]    Verifica se o sistema não redireciona para o formulário completo ao tentar cadastrar com email em branco.
    Wait Until Element Is Visible    ${ID_NOME_PAGINA_CADASTRO}

    #verifica se o título da página de cadastro está correto
    ${TITULO_EM_TELA}=    Get Text    ${ID_NOME_PAGINA_CADASTRO}
    Should Be Equal       ${TITULO_EM_TELA}    ${NOME_PAGINA_CADASTRO}

    #verifica se o título da aba do navegador está correto
    ${TITULO_ABA}=    Get Title
    Should Be Equal   ${TITULO_ABA}    ${TITULO_PAGINA_CADASTRO}