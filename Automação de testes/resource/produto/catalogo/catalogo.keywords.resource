Language: ptBr

*** Variáveis ***

*** Configurações ***
Biblioteca    SeleniumLibrary
Recurso    ../../cadastro/cadastro_realizado.variaveis.resource
Recurso    catalogo.variaveis.resource


*** Keywords ***

clico no botão "Products"
    [Documentação]    Clica no botão Products
    Click Element    ${BOTAO_PRODUTOS}


devo ser redirecionado para a página de todos os produtos "ALL PRODUCTS" e visualizar a listagem de produtos
    [Documentação]    Verificar se foi redirecionado corretamente para a página de todos os produtos
    Wait Until Element Is Visible    ${ID_NOME_PAGINA_TODOS_PRODUTOS}

    #Verifica se o título da página de todos os produtos está correto
    ${TITULO_EM_TELA}=    Get Text    ${ID_NOME_PAGINA_TODOS_PRODUTOS}
    Should Be Equal    ${TITULO_EM_TELA}    ${NOME_PAGINA_TODOS_PRODUTOS}

    #Verifica se o título da aba de todos os produtos está correto
    ${TITULO_ABA}=    Get Title
    Should Be Equal    ${TITULO_ABA}    ${TITULO_PAGINA_TODOS_PRODUTOS}     

que estou na página de listagem de produtos
    [Documentação]    Verificar se está na página de todos os produtos
    Wait Until Element Is Visible    ${ID_NOME_PAGINA_TODOS_PRODUTOS}

    #Verifica se o título da página de todos os produtos está correto
    ${TITULO_EM_TELA}=    Get Text    ${ID_NOME_PAGINA_TODOS_PRODUTOS}
    Should Be Equal    ${TITULO_EM_TELA}    ${NOME_PAGINA_TODOS_PRODUTOS}

    #Verifica se o título da aba de todos os produtos está correto
    ${TITULO_ABA}=    Get Title
    Should Be Equal    ${TITULO_ABA}    ${TITULO_PAGINA_TODOS_PRODUTOS} 


clico em "View Product" no primeiro produto da lista
    [Documentação]    Clica no botão View Product
    Scroll Element Into View    ${BOTAO_VER_PRODUTO}
    Click Element    ${BOTAO_VER_PRODUTO}


devo ser redirecionado para a página de detalhes do produto e visualizar informações como nome, categoria, preço, disponibilidade, condição e marca
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

    