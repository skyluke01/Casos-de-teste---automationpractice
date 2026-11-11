Language: ptBr

*** Variáveis ***

*** Configurações ***
Biblioteca    SeleniumLibrary
Recurso    ../../cadastro/cadastro_realizado.variaveis.resource
Recurso    ../catalogo/catalogo.variaveis.resource
Recurso    ../busca/busca_produto.variaveis.resource


*** Keywords ***


que estou na página de produtos
    [Documentação]    Verifica se está na página de todos os produtos
    Wait Until Element Is Visible    ${ID_NOME_PAGINA_TODOS_PRODUTOS}

    #Verifica se o título da página de todos os produtos está correto
    ${TITULO_EM_TELA}=    Get Text    ${ID_NOME_PAGINA_TODOS_PRODUTOS}
    Should Be Equal    ${TITULO_EM_TELA}    ${NOME_PAGINA_TODOS_PRODUTOS}

    #Verifica se o título da aba de todos os produtos está correto
    ${TITULO_ABA}=    Get Title
    Should Be Equal    ${TITULO_ABA}    ${TITULO_PAGINA_TODOS_PRODUTOS} 

digito o nome do produto em "Search Product" 
    [Documentação]    Digita o nome do produto no campo de busca 
    [Arguments]    ${produto}
    Click Element    ${ID_BUSCA_PRODUTO}
    Input Text    ${ID_BUSCA_PRODUTO}    ${produto}    ${True}

    #Verifica se o nome digitado na barra é o nome correto
    ${NOME_EM_TELA}=    Get Value    ${ID_BUSCA_PRODUTO}
    Should Be Equal As Strings    ${NOME_EM_TELA}    ${produto}

clico para pesquisar
    [Documentação]    Clica no botão de buscar produto
    Click Element    ${BOTÃO_BUSCA_PRODUTO}

devo conseguir visualizar o título "SEARCHED PRODUCTS" e todos os produtos correspondentes aquele nome
    [Documentação]    Verificar se foi redirecionado para a página de produtos certa
    Wait Until Element Is Visible    ${ID_NOME_PAGINA_BUSCA_PRODUTO}

    #Verifica se o título da página de todos os produtos está correto
    ${TITULO_EM_TELA}=    Get Text    ${ID_NOME_PAGINA_BUSCA_PRODUTO}
    Should Be Equal    ${TITULO_EM_TELA}    ${NOME_PAGINA_BUSCA_PRODUTO}

    #Verifica se o título da aba da página de buscar produto está correto
    ${TITULO_ABA}=   Get Title
    Should Be Equal    ${TITULO_ABA}    ${TITULO_PAGINA_BUSCA_PRODUTO}

