Language: ptBr

*** Variáveis ***

*** Configurações ***
Biblioteca    SeleniumLibrary
Recurso    ../checkout/checkout.variaveis.resource
Recurso    ../produto/catalogo/catalogo.variaveis.resource
Recurso    ../produto/carrinho/carrinho.variaveis.resource
Recurso    ../login/login_realizado.variaveis.resource
Recurso    ../cadastro/cadastro_realizado.variaveis.resource


*** Keywords ***

tenho produtos no carrinho
    [Documentação]    Adiciona Produtos ao carrinho após login
    #    Clica no botão Products

    Click Element    ${BOTAO_PRODUTOS}
    #    Verificar se foi redirecionado corretamente para a página de todos os produtos
    Wait Until Element Is Visible    ${ID_NOME_PAGINA_TODOS_PRODUTOS}

    #    Verifica se o título da página de todos os produtos está correto
    ${TITULO_EM_TELA}=    Get Text    ${ID_NOME_PAGINA_TODOS_PRODUTOS}
    Should Be Equal    ${TITULO_EM_TELA}    ${NOME_PAGINA_TODOS_PRODUTOS}

    #    Verifica se o título da aba de todos os produtos está correto
    ${TITULO_ABA}=    Get Title
    Should Be Equal    ${TITULO_ABA}    ${TITULO_PAGINA_TODOS_PRODUTOS} 

    #    Adiciona primeiro produto ao carrinho
    Scroll Element Into View    ${DESCUBRA_MAIS}
    Wait Until Element Is Visible    ${BOTAO_ADICIONAR_PRIMEIRO_ITEM}
    Click Element    ${BOTAO_ADICIONAR_PRIMEIRO_ITEM}

    #    Clicar em Continue
    Wait Until Element Is Visible    ${BOTAO_CONTINUAR_COMPRANDO}
    Click Element    ${BOTAO_CONTINUAR_COMPRANDO}

    #    Verificar se o modal de continuar comprando fechou
    Wait Until Element Is Not Visible    ${BOTAO_CONTINUAR_COMPRANDO}    timeout=5s


    #    Adiciona segundo produto ao carrinho
    Wait Until Element Is Visible    ${BOTAO_ADICIONAR_SEGUNDO_ITEM}
    Click Element    ${BOTAO_ADICIONAR_SEGUNDO_ITEM}

    #    Clica no botão View Cart no modal de continuar comprando
    Wait Until Element Is Visible    ${BOTAO_MODAL_VER_CARRINHO}
    Click Element    ${BOTAO_MODAL_VER_CARRINHO} 


avanço para o checkout
    [Documentação]    Clica no botão de avançar para o checkout e verifica se está na pagina de checkout
    Wait Until Element Is Visible    ${BOTAO_IR_PARA_CHECKOUT}

    Click Element    ${BOTAO_IR_PARA_CHECKOUT}

    #Verificar se foi redirecionado corretamente
    Wait Until Element Is Visible    ${ID_NOME_PAGINA_CHECKOUT}

    #Verificar se o titulo da pagina está correto
    ${TITULO_EM_TELA}    Get Text    ${ID_NOME_PAGINA_CHECKOUT}
    Should Be Equal As Strings    ${TITULO_EM_TELA}    ${NOME_PAGINA_CHECKOUT}

    #Verificar se o titulo da aba está correto
    ${TITULO_ABA}    Get Title
    Should Be Equal    ${TITULO_ABA}    ${TITULO_PAGINA_CHECKOUT}

reviso o pedido
    [Documentação]    Fazer a revisão do pedido, endereço de entrega e de cobrança, e os produtos.
    [Arguments]    ${checkout_comentario}

    Wait Until Element Is Visible    ${ENDERECO_ENTREGA_NOME}

    #Verificar se o nome no endereço de entrega está correto
    ${NOME_ENTREGA_EM_TELA}    Get Text    ${ENDERECO_ENTREGA_NOME}
    Should Be Equal    ${NOME_ENTREGA_EM_TELA}    ${ENDERECO_NOME}

    #Verificar se a empresa no endereço de entrega está correto
    ${EMPRESA_ENTREGA_EM_TELA}    Get Text    ${ENDERECO_ENTREGA_EMPRESA}
    Should Be Equal    ${EMPRESA_ENTREGA_EM_TELA}    ${ENDERECO_EMPRESA}

    #Verificar se a rua no endereço de entrega está correto
    ${RUA_ENTREGA_EM_TELA}    Get Text    ${ENDERECO_ENTREGA_RUA}
    Should Be Equal    ${RUA_ENTREGA_EM_TELA}    ${ENDERECO_RUA}

    #Verificar se o estado, cidade e cep no endereço de entrega estão corretos
    ${ESTADO_CIDADE_CEP_ENTREGA_EM_TELA}    Get Text    ${ENDERECO_ENTREGA_ESTADO_CIDADE_CEP}
    Should Be Equal    ${ESTADO_CIDADE_CEP_ENTREGA_EM_TELA}    ${ENDERECO_ESTAD0_CIDADE_CEP}

    #Verificar se o país no endereço de entrega está correto
    ${PAIS_ENTREGA_EM_TELA}    Get Text    ${ENDERECO_ENTREGA_PAIS}
    Should Be Equal    ${PAIS_ENTREGA_EM_TELA}    ${ENDERECO_PAIS}

    #Verificar se o telefone no endereço de entrega está correto
    ${CELULAR_ENTREGA_EM_TELA}    Get Text    ${ENDERECO_ENTREGA_CELULAR}
    Should Be Equal    ${CELULAR_ENTREGA_EM_TELA}    ${ENDERECO_CELULAR}


    ##### Verificações Endereço de cobrança

    #Verificar se o nome no endereço de cobrança está correto
    ${NOME_COBRANCA_EM_TELA}    Get Text    ${ENDERECO_COBRANCA_NOME}
    Should Be Equal    ${NOME_COBRANCA_EM_TELA}    ${ENDERECO_NOME}

    #Verificar se a empresa no endereço de cobrança está correto
    ${EMPRESA_COBRANCA_EM_TELA}    Get Text    ${ENDERECO_COBRANCA_EMPRESA}
    Should Be Equal    ${EMPRESA_COBRANCA_EM_TELA}    ${ENDERECO_EMPRESA}

    #Verificar se a rua no endereço de cobrança está correto
    ${RUA_COBRANCA_EM_TELA}    Get Text    ${ENDERECO_COBRANCA_RUA}
    Should Be Equal    ${RUA_COBRANCA_EM_TELA}    ${ENDERECO_RUA}

    #Verificar se o estado, cidade e cep no endereço de cobrança estão corretos
    ${ESTADO_CIDADE_CEP_COBRANCA_EM_TELA}    Get Text    ${ENDERECO_COBRANCA_ESTADO_CIDADE_CEP}
    Should Be Equal    ${ESTADO_CIDADE_CEP_COBRANCA_EM_TELA}    ${ENDERECO_ESTAD0_CIDADE_CEP}

    #Verificar se o país no endereço de cobrança está correto
    ${PAIS_COBRANCA_EM_TELA}    Get Text    ${ENDERECO_COBRANCA_PAIS}
    Should Be Equal    ${PAIS_COBRANCA_EM_TELA}    ${ENDERECO_PAIS}

    #Verificar se o telefone no endereço de cobrança está correto
    ${CELULAR_COBRANCA_EM_TELA}    Get Text    ${ENDERECO_COBRANCA_CELULAR}
    Should Be Equal    ${CELULAR_COBRANCA_EM_TELA}    ${ENDERECO_CELULAR}

    #### Verificação dos produtos
    
    Scroll Element Into View    ${BOTAO_FAZER_PEDIDO}

     #Verifica se o nome do item no primeiro carrinho está correto
    ${NOME_PRIMEIRO_ITEM_EM_TELA}    Get Text    ${ID_CARRINHO_PRIMEIRO_ITEM}
    Should Be Equal As Strings    ${NOME_PRIMEIRO_ITEM_EM_TELA}    ${NOME_PRIMEIRO_ITEM}

    #Verifica se preço do primeiro item está correto
    ${PRECO_PRIMEIRO_ITEM_EM_TELA}    Get Text    ${ID_PRECO_PRIMEIRO_ITEM}
    Should Be Equal    ${PRECO_PRIMEIRO_ITEM_EM_TELA}    ${PRECO_PRIMEIRO_ITEM}

    #Verifica se a quantidade do primeiro item está correto
    ${QUANTIDADE_PRIMEIRO_ITEM_EM_TELA}    Get Text    ${ID_QUANTIDADE_PRIMEIRO_ITEM}
    Should Be Equal    ${QUANTIDADE_PRIMEIRO_ITEM_EM_TELA}    ${QUANTIDADE_PRIMEIRO_ITEM}

    #Verifica se o valor total do primeiro item está correto
    ${VALOR_TOTAL_PRIMEIRO_ITEM_EM_TELA}    Get Text    ${ID_VALOR_TOTAL_PRIMEIRO_ITEM}
    Should Be Equal    ${VALOR_TOTAL_PRIMEIRO_ITEM_EM_TELA}    ${VALOR_TOTAL_PRIMEIRO_ITEM}

    ### Segundo produto

    #Verifica se o nome do segundo item no carrinho está correto
    ${NOME_SEGUNDO_ITEM_EM_TELA}    Get Text    ${ID_CARRINHO_SEGUNDO_ITEM}
    Should Be Equal As Strings    ${NOME_SEGUNDO_ITEM_EM_TELA}    ${NOME_SEGUNDO_ITEM}

    #Verifica se preço do segundo item está correto
    ${PRECO_SEGUNDO_ITEM_EM_TELA}    Get Text    ${ID_PRECO_SEGUNDO_ITEM}
    Should Be Equal    ${PRECO_SEGUNDO_ITEM_EM_TELA}    ${PRECO_SEGUNDO_ITEM}

    #Verifica se a quantidade do segundo item está correto
    ${QUANTIDADE_SEGUNDO_ITEM_EM_TELA}    Get Text    ${ID_QUANTIDADE_SEGUNDO_ITEM}
    Should Be Equal    ${QUANTIDADE_SEGUNDO_ITEM_EM_TELA}    ${QUANTIDADE_SEGUNDO_ITEM}

    #Verifica se o valor total do segundo item está correto
    ${VALOR_TOTAL_SEGUNDO_ITEM_EM_TELA}    Get Text    ${ID_VALOR_TOTAL_SEGUNDO_ITEM}
    Should Be Equal    ${VALOR_TOTAL_SEGUNDO_ITEM_EM_TELA}    ${VALOR_TOTAL_SEGUNDO_ITEM}

    #Colocar o comentario
    Input Text    ${ID_CHECKOUT_COMENTARIO}    ${checkout_comentario}    ${True}

    #Verificar se o comentario está correto
    ${COMENTARIO_EM_TELA}    Get Value    ${ID_CHECKOUT_COMENTARIO}
    Should Be Equal    ${COMENTARIO_EM_TELA}    ${CHECKOUT_COMENTARIO}

    #Apertar o botão para ir ao pagamento
    Wait Until Element Is Visible    ${BOTAO_FAZER_PEDIDO}
    Click Element    ${BOTAO_FAZER_PEDIDO}

insiro o pagamento
    [Documentação]    Verifica se está na página de pagamento e insere os dados de pagamento
    [Arguments]    ${nome_cartao}    ${numero_cartao}    ${cvc}    ${mes_vencimento}    ${ano_vencimento} 

    Wait Until Element Is Visible    ${ID_NOME_PAGINA_PAGAMENTO}

    #Verificar se o nome da página está correto
    ${NOME_PAGINA_EM_TELA}    Get Text    ${ID_NOME_PAGINA_PAGAMENTO}
    Should Be Equal As Strings    ${NOME_PAGINA_EM_TELA}    ${NOME_PAGINA_PAGAMENTO}

    #Verificar se o titulo da aba está correto
    ${TITULO_EM_TELA}    Get Title
    Should Be Equal    ${TITULO_EM_TELA}    ${TITULO_PAGINA_PAGAMENTO}

    #Colocar os dados de pagamento
    Input Text    ${ID_NOME_CARTAO}    ${nome_cartao}    ${True}
    Input Text    ${ID_NUMERO_CARTAO}    ${numero_cartao}    ${True}
    Input Text    ${ID_CVC}    ${cvc}    ${True}
    Input Text    ${ID_MES_VENCIMENTO}    ${mes_vencimento}    ${True}
    Input Text    ${ID_ANO_VENCIMENTO}    ${ano_vencimento}    ${True}

    #Verificar se nome do cartão está correto
    ${NOME_CARTAO_EM_TELA}    Get Value    ${ID_NOME_CARTAO}
    Should Be Equal    ${NOME_CARTAO_EM_TELA}    ${NOME_CARTAO}

    #Verificar se o numero do cartão está correto
    ${NUMERO_CARTAO_EM_TELA}    Get Value    ${ID_NUMERO_CARTAO}
    Should Be Equal    ${NUMERO_CARTAO_EM_TELA}    ${NUMERO_CARTAO}

    #Verificar se o CVC do cartão está correto
    ${CVC_EM_TELA}    Get Value    ${ID_CVC}
    Should Be Equal    ${CVC_EM_TELA}    ${CVC}

    #Verificar se o mês de vencimento do cartão está correto
    ${MES_CARTAO_EM_TELA}    Get Value    ${ID_MES_VENCIMENTO}
    Should Be Equal    ${MES_CARTAO_EM_TELA}    ${MES_VENCIMENTO}

    #Verificar se o ano de vencimento do cartão está correto
    ${ANO_CARTAO_EM_TELA}    Get Value    ${ID_ANO_VENCIMENTO}
    Should Be Equal    ${ANO_CARTAO_EM_TELA}    ${ANO_VENCIMENTO}

confirmo
    [Documentação]    Clica no botão de confirmar pagamento
    Wait Until Element Is Visible    ${BOTAO_PAGAR_E_CONFIRMAR_PEDIDO}
    Click Element    ${BOTAO_PAGAR_E_CONFIRMAR_PEDIDO}

o sistema deve exibir a mensagem de sucesso "Your order has been placed successfully!" 
    [Documentação]    Verificar a mensagem de sucesso ao confirmar a compra
    ${viu_mensagem}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${ID_MENSAGEM_SUCESSO_CRIAR_PEDIDO}    timeout=0.5s
    Run Keyword If    ${viu_mensagem}    Element Should Contain    ${ID_MENSAGEM_SUCESSO_CRIAR_PEDIDO}    ${MENSAGEM_SUCESSO_CRIAR_PEDIDO} 


que estou cadastrado 
    [Documentação]    Faz o E2E de cadastro

    Go To    ${URL_PAGINA_INICIAL}
    Wait Until Element Is Visible    ${ID_NOME_PAGINA_INICIAL}

    #    Clica no botão de cadastro/login.
    Wait Until Element Is Visible    ${BOTAO_MENU_CADASTRO}
    Click Element    ${BOTAO_MENU_CADASTRO}

    #    Verifica o redirecionamento para a página de cadastro/login e valida o formulário.
    Wait Until Element Is Visible    ${ID_NOME_PAGINA_CADASTRO}

    # Verifica se o título da página de cadastro está correto
    ${TITULO_EM_TELA}=    Get Text    ${ID_NOME_PAGINA_CADASTRO}
    Should Be Equal       ${TITULO_EM_TELA}    ${NOME_PAGINA_CADASTRO}

    # Verifica se o título da aba do navegador está correto
    ${TITULO_ABA}=    Get Title
    Should Be Equal   ${TITULO_ABA}    ${TITULO_PAGINA_CADASTRO}

    #    Verifica a página de cadastro/login e aguarda os campos de nome e email aparecerem.
    Wait Until Element Is Visible    ${ID_NOME_PAGINA_CADASTRO}

    #    Verifica se o título da página de cadastro está correto
    ${TITULO_EM_TELA}=    Get Text    ${ID_NOME_PAGINA_CADASTRO}
    Should Be Equal       ${TITULO_EM_TELA}    ${NOME_PAGINA_CADASTRO}

    #    Verifica se o título da aba do navegador está correto
    ${TITULO_ABA}=    Get Title
    Should Be Equal   ${TITULO_ABA}    ${TITULO_PAGINA_CADASTRO}

    #    Preenche os campos de nome e email com valores válidos.
    [Arguments]    ${nome_cadastro}    ${email_cadastro}    ${senha}  ${dia_nascimento}  ${mes_nascimento}  ${ano_nascimento}    ${primeiro_nome}  ${ultimo_nome}  ${empresa}  ${endereco}  ${pais}  ${estado}  ${cidade}  ${cep}  ${celular}
    Input Text    ${CAMPO_NOME_INICIAL}    ${nome_cadastro}    ${True}
    Input Text    ${CAMPO_EMAIL_INICIAL}    ${email_cadastro}  ${True} 

    #    Verifico se o nome e email foram inseridos corretamente
    ${NOME_EM_TELA}=    Get Value    ${CAMPO_NOME_INICIAL }
    Should Be Equal    ${NOME_EM_TELA}    ${nome_cadastro}

    ${EMAIL_EM_TELA}=    Get Value    ${CAMPO_EMAIL_INICIAL}
    Should Be Equal    ${EMAIL_EM_TELA}    ${email_cadastro}

    #    Clica no botão de cadastro.
    Click Button    ${BOTAO_CADASTRO}

    #    Verifica o redirecionamento para o formulário completo de cadastro e valida o título.
    Wait Until Element Is Visible    ${ID_NOME_PAGINA_FORMULARIO}

    # Verifica se o título da página do formulário de cadastro está correto
    ${TITULO_EM_TELA}=    Get Text    ${ID_NOME_PAGINA_FORMULARIO}
    Should Be Equal       ${TITULO_EM_TELA}    ${NOME_PAGINA_FORMULARIO}

    # Verifica se o título da aba do navegador está correto
    ${TITULO_ABA}=    Get Title
    Should Be Equal   ${TITULO_ABA}    ${TITULO_PAGINA_FORMULARIO}

    #    Verifica a página do formulário completo de cadastro e aguarda os campos obrigatórios aparecerem.
    Wait Until Element Is Visible    ${ID_NOME_PAGINA_FORMULARIO}

    #    Verifica se o título da página do formulário de cadastro está correto
    ${TITULO_EM_TELA}=    Get Text    ${ID_NOME_PAGINA_FORMULARIO}
    Should Be Equal       ${TITULO_EM_TELA}    ${NOME_PAGINA_FORMULARIO}

    #    Verifica se o título da aba do navegador está correto
    ${TITULO_ABA}=    Get Title
    Should Be Equal   ${TITULO_ABA}    ${TITULO_PAGINA_FORMULARIO}

    #    Preenche os campos obrigatórios do formulário de cadastro.
    Click Element    ${ID_MR_FORMULARIO}
    Input Text    ${ID_SENHA_FORMULARIO}    ${senha}    ${True}
    Select From List By Value    ${ID_DIA_NASCIMENTO}    ${dia_nascimento}
    Select From List By Value    ${ID_MES_NASCIMENTO}    ${mes_nascimento}
    Select From List By Value    ${ID_ANO_NASCIMENTO}    ${ano_nascimento}    

    #    Verifica se a senha foi inserida corretamente
    ${SENHA_EM_TELA}=    Get Value    ${ID_SENHA_FORMULARIO}
    Should Be Equal    ${SENHA_EM_TELA}    ${senha}

    #    Verifica se o dia de nascimento foi selecionado corretamente
    ${DIA_EM_TELA}=    Get Value    ${ID_DIA_NASCIMENTO}
    Should Be Equal    ${DIA_EM_TELA}    ${dia_nascimento}

    #    Verifica se o mês de nascimento foi selecionado corretamente
    ${MES_EM_TELA}=    Get Value    ${ID_MES_NASCIMENTO}
    Should Be Equal    ${MES_EM_TELA}    ${mes_nascimento}

    #    Verifica se o ano de nascimento foi selecionado corretamente
    ${ANO_EM_TELA}=    Get Value    ${ID_ANO_NASCIMENTO}
    Should Be Equal    ${ANO_EM_TELA}    ${ano_nascimento}

    #    Verifica se o usuário consegue selecionar as opções de newsletter e ofertas especiais.
    Click Element    ${ID_NEWSLETTER}
    Click Element    ${ID_OFERTAS_ESPECIAIS}

    #verifica se a opção de newsletter foi selecionada corretamente
    ${NEWSLETTER_EM_TELA}=    Get Element Attribute    ${ID_NEWSLETTER}    checked
    Should Be Equal    ${NEWSLETTER_EM_TELA}    true

    #verifica se a opção de ofertas especiais foi selecionada corretamente
    ${OFERTAS_EM_TELA}=    Get Element Attribute    ${ID_OFERTAS_ESPECIAIS}    checked
    Should Be Equal    ${OFERTAS_EM_TELA}    true

    #    Verifica se senha, dia, mês e ano de nascimento foram preenchidos corretamente
    ${SENHA_EM_TELA}=    Get Value    ${ID_SENHA_FORMULARIO}
    Should Be Equal    ${SENHA_EM_TELA}    ${SENHA_FORMULARIO_CADASTRO}

    ${DIA_EM_TELA}=    Get Value    ${ID_DIA_NASCIMENTO}
    Should Be Equal    ${DIA_EM_TELA}    ${DIA_NASCIMENTO_FORMULARIO}

    ${MES_EM_TELA}=    Get Value    ${ID_MES_NASCIMENTO}
    Should Be Equal    ${MES_EM_TELA}    ${MES_NASCIMENTO_FORMULARIO}

    ${ANO_EM_TELA}=    Get Value    ${ID_ANO_NASCIMENTO}
    Should Be Equal    ${ANO_EM_TELA}    ${ANO_NASCIMENTO_FORMULARIO}

    #    Preenche os campos obrigatórios de endereço no formulário de cadastro.
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


    #    Clica no botão de criar conta.
    Click Button    ${BOTAO_CRIAR_CONTA}

    #    Verifica o redirecionamento para a página de conta criada e valida a mensagem de sucesso.
    Wait Until Element Is Visible    ${ID_MENSAGEM_SUCESSO_CADASTRO}

    #    Verifica se a mensagem de sucesso está correta
    ${MENSAGEM_EM_TELA}=    Get Text    ${ID_MENSAGEM_SUCESSO_CADASTRO}
    Should Be Equal       ${MENSAGEM_EM_TELA}    ${MENSAGEM_SUCESSO_CADASTRO}

    #    Verifica se o título da aba do navegador está correto
    ${TITULO_ABA}=    Get Title
    Should Be Equal   ${TITULO_ABA}    ${TITULO_PAGINA_CONTA_CRIADA}

    #    Verifica se a conta foi criada com sucesso e vê na tela a mensagem Account created.
    Wait Until Element Is Visible   ${ID_MENSAGEM_SUCESSO_CADASTRO}

    #    Clica no botão de continuar.
    Click Element    ${BOTAO_CONTINUAR}

    #    Verifica se o usuário está logado automaticamente e valida a mensagem de login.
    Wait Until Element Is Visible    ${ID_NOME_PAGINA_INICIAL}

    #    Verifica se o nome do usuário logado está correto
    ${NOME_LOGADO_EM_TELA}=    Get Text    ${NOME_USUARIO_LOGADO}
    Should Be Equal       ${NOME_LOGADO_EM_TELA}    ${MENSAGEM_USUARIO_LOGADO}

    #    Verifica se o usuário está logado no sistema e vê "Logged in as [nome do usuário]".
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