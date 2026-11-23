Language: ptBr

*** Variáveis ***

*** Configurações ***
Biblioteca    SeleniumLibrary
Recurso    ../../cadastro/cadastro_realizado.variaveis.resource
Recurso    ../catalogo/catalogo.variaveis.resource
Recurso    carrinho.variaveis.resource


*** Keywords ***


Quando adiciono os produtos
    [Documentação]    Adiciona primeiro e segundo produto ao carrinho
    #Adiciona primeiro produto ao carrinho
    Scroll Element Into View    ${DESCUBRA_MAIS}
    Wait Until Element Is Visible    ${BOTAO_ADICIONAR_PRIMEIRO_ITEM}
    Click Element    ${BOTAO_ADICIONAR_PRIMEIRO_ITEM}

    #Clicar em Continue
    Wait Until Element Is Visible    ${BOTAO_CONTINUAR_COMPRANDO}
    Click Element    ${BOTAO_CONTINUAR_COMPRANDO}

    #Verificar se o modal de continuar comprando fechou
    Wait Until Element Is Not Visible    ${BOTAO_CONTINUAR_COMPRANDO}    timeout=5s


    #Adiciona segundo produto ao carrinho
    Wait Until Element Is Visible    ${BOTAO_ADICIONAR_SEGUNDO_ITEM}
    Click Element    ${BOTAO_ADICIONAR_SEGUNDO_ITEM}


clico em "View Cart"
    [Documentação]    Clica no botão View Cart no modal de continuar comprando
    Wait Until Element Is Visible    ${BOTAO_MODAL_VER_CARRINHO}
    Click Element    ${BOTAO_MODAL_VER_CARRINHO}    


devo ser redirecionado para a página do carrinho
    [Documentação]    Verifica redirecionamento para a página do carrinho
    Wait Until Element Is Visible    ${ID_PAGINA_CARRINHO}

    #Verifica titulo da página se o titulo da página do carrinho está correto
    ${TITULO_EM_TELA}=    Get Text    ${ID_PAGINA_CARRINHO}
    Should Be Equal    ${TITULO_EM_TELA}    ${NOME_PAGINA_CARRINHO}

    #Verifica titulo da aba da pagina carrinho está correto
    ${TITULO_ABA}    Get Title    
    Should Be Equal    ${TITULO_ABA}    ${TITULO_PAGINA_CARRINHO}

que estou na página do carrinho
    [Documentação]    Verifica se está na página do carrinho
    Wait Until Element Is Visible    ${ID_PAGINA_CARRINHO}

    #Verifica titulo da página se o titulo da página do carrinho está correto
    ${TITULO_EM_TELA}=    Get Text    ${ID_PAGINA_CARRINHO}
    Should Be Equal    ${TITULO_EM_TELA}    ${NOME_PAGINA_CARRINHO}

    #Verifica titulo da aba da pagina carrinho está correto
    ${TITULO_ABA}    Get Title    
    Should Be Equal    ${TITULO_ABA}    ${TITULO_PAGINA_CARRINHO}

Verifico os itens no carrinho
    [Documentação]    Verifica os itens no carrinho
    Wait Until Element Is Visible    ${ID_CARRINHO_PRIMEIRO_ITEM}
    Wait Until Element Is Visible    ${ID_CARRINHO_SEGUNDO_ITEM}
    
    #Verifica se o nome do item no primeiro carrinho está correto
    ${NOME_PRIMEIRO_ITEM_EM_TELA}    Get Text    ${ID_CARRINHO_PRIMEIRO_ITEM}
    Should Be Equal As Strings    ${NOME_PRIMEIRO_ITEM_EM_TELA}    ${NOME_PRIMEIRO_ITEM}

    #Verifica se o nome do segundo item no carrinho está correto
    ${NOME_SEGUNDO_ITEM_EM_TELA}    Get Text    ${ID_CARRINHO_SEGUNDO_ITEM}
    Should Be Equal As Strings    ${NOME_SEGUNDO_ITEM_EM_TELA}    ${NOME_SEGUNDO_ITEM}

devo conseguir visualizar seus respectivos preços, quantidade e valor total
    [Documentação]    Verifica se os itens mostram seus respectivos preços, quantidade e valor total
    #primeiro item
    Element Should Be Visible    ${ID_PRECO_PRIMEIRO_ITEM}
    Element Should Be Visible    ${ID_QUANTIDADE_PRIMEIRO_ITEM}
    Element Should Be Visible    ${ID_VALOR_TOTAL_PRIMEIRO_ITEM}

    #Verifica se preço do primeiro item está correto
    ${PRECO_PRIMEIRO_ITEM_EM_TELA}    Get Text    ${ID_PRECO_PRIMEIRO_ITEM}
    Should Be Equal    ${PRECO_PRIMEIRO_ITEM_EM_TELA}    ${PRECO_PRIMEIRO_ITEM}

    #Verifica se a quantidade do primeiro item está correto
    ${QUANTIDADE_PRIMEIRO_ITEM_EM_TELA}    Get Text    ${ID_QUANTIDADE_PRIMEIRO_ITEM}
    Should Be Equal    ${QUANTIDADE_PRIMEIRO_ITEM_EM_TELA}    ${QUANTIDADE_PRIMEIRO_ITEM}

    #Verifica se o valor total do primeiro item está correto
    ${VALOR_TOTAL_PRIMEIRO_ITEM_EM_TELA}    Get Text    ${ID_VALOR_TOTAL_PRIMEIRO_ITEM}
    Should Be Equal    ${VALOR_TOTAL_PRIMEIRO_ITEM_EM_TELA}    ${VALOR_TOTAL_PRIMEIRO_ITEM}

    #Segundo item
    Element Should Be Visible    ${ID_PRECO_SEGUNDO_ITEM}
    Element Should Be Visible    ${ID_QUANTIDADE_SEGUNDO_ITEM}
    Element Should Be Visible    ${ID_VALOR_TOTAL_SEGUNDO_ITEM}

    #Verifica se preço do segundo item está correto
    ${PRECO_SEGUNDO_ITEM_EM_TELA}    Get Text    ${ID_PRECO_SEGUNDO_ITEM}
    Should Be Equal    ${PRECO_SEGUNDO_ITEM_EM_TELA}    ${PRECO_SEGUNDO_ITEM}

    #Verifica se a quantidade do segundo item está correto
    ${QUANTIDADE_SEGUNDO_ITEM_EM_TELA}    Get Text    ${ID_QUANTIDADE_SEGUNDO_ITEM}
    Should Be Equal    ${QUANTIDADE_SEGUNDO_ITEM_EM_TELA}    ${QUANTIDADE_SEGUNDO_ITEM}

    #Verifica se o valor total do segundo item está correto
    ${VALOR_TOTAL_SEGUNDO_ITEM_EM_TELA}    Get Text    ${ID_VALOR_TOTAL_SEGUNDO_ITEM}
    Should Be Equal    ${VALOR_TOTAL_SEGUNDO_ITEM_EM_TELA}    ${VALOR_TOTAL_SEGUNDO_ITEM}

clico no botão "X" ao lado do item que desejo remover
    [Documentação]    Clicar no botão para remover o produto do carrinho
    Wait Until Element Is Visible    ${BOTAO_REMOCAO_PRIMEIRO_ITEM}
    Click Element    ${BOTAO_REMOCAO_PRIMEIRO_ITEM}

o item deve ser removido instantaneamente da listagem do carrinho
    [Documentação]    Verificar se o item foi removido do carrinho
    Wait Until Element Is Not Visible    ${ID_CARRINHO_PRIMEIRO_ITEM}

clico em "View Product" em qualquer produto
    [Documentação]    Clico em ver produto em qualquer produto
    Scroll Element Into View    ${BOTAO_VER_PRODUTO_PAGINA_INICIAL}    
    Wait Until Element Is Visible    ${BOTAO_VER_PRODUTO_PAGINA_INICIAL}
    Click Element    ${BOTAO_VER_PRODUTO_PAGINA_INICIAL}

que estou na página de detalhes do produto
    Wait Until Element Is Visible    ${ID_NOME_PAGINA_VER_PRODUTO}
    Element Should Be Visible        ${CATEGORIA}
    Element Should Be Visible        ${PRECO}
    Element Should Be Visible        ${DISPONIBILIDADE}
    Element Should Be Visible        ${CONDICAO}
    Element Should Be Visible        ${MARCA}

    #Verifica se o nome está correto na página de ver produto
    ${NOME_EM_TELA}    Get Text    ${ID_NOME_PAGINA_VER_PRODUTO}
    Should Be Equal    ${NOME_EM_TELA}    ${NOME_PAGINA_VER_PRODUTO}

    #Verifica se o titulo da aba está correto na página de ver produto
    ${TITULO_ABA}    Get Title
    Should Be Equal    ${TITULO_ABA}    ${TITULO_PAGINA_VER_PRODUTO}

mudo a quantidade do produto e clico em "Add to cart"
    [Documentação]    Mudar a quantidade do produto para 4 e adiciono ao carrinho
    Wait Until Element Is Visible    ${ID_QUANTIDADE}

    #Limpar a quantidade que já existe no campo, pq o site começa sempre com 1 na quantidade
    Clear Element Text    ${ID_QUANTIDADE}

    #Colocar a nova quantidade
    Input Text    ${ID_QUANTIDADE}    4

    #Clicar no botão para adicionar ao carrinho
    Click Element    ${BOTAO_ADICIONAR_AO_CARRINHO_PAGINA_VER_ITEM}


devo receber a confirmação de que o produto foi adicionado
    [Documentação]    Verifica a mensagem de confirmação de produto adicionado e clica para ver o carrinho
    Wait Until Element Is Visible    ${ID_MENSAGEM_SUCESSO_ADICIONADO_AO_CARRINHO}

    #Verifica se a mensagem exibida está correta
    ${MENSAGEM_EM_TELA}    Get Text    ${ID_MENSAGEM_SUCESSO_ADICIONADO_AO_CARRINHO}
    Should Be Equal As Strings    ${MENSAGEM_EM_TELA}    ${MENSAGEM_SUCESSO_ADICIONADO_AO_CARRINHO}


verifico a quantidade do item adicionado
    [Documentação]    Verificar se a quantidade está visivel
    Wait Until Element Is Visible    ${ID_QUANTIDADE_PRIMEIRO_ITEM}

devo ver se essa quantidade corresponde exatamente ao valor definido anteriormente na página de detalhes
    [Documentação]    Verifica se é a quantidade correta definida anteriormente
    ${QUANTIDADE_TESTE_EM_TELA}    Get Text    ${ID_QUANTIDADE_PRIMEIRO_ITEM}
    Should Be Equal    ${QUANTIDADE_TESTE_EM_TELA}    ${QUANTIDADE_TESTE}