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


