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

localizo e clico em uma categoria
    [Documentação]    Ver se as categorias estão visiveis no menu lateral e clicar na categoria
    Wait Until Element Is Visible    ${BOTAO_CATEGORIA_MULHER}
    Click Element    ${BOTAO_CATEGORIA_MULHER}

E sua subcategoria na barra lateral esquerda
    [Documentação]    Clica no botão de subcategoria
    Wait Until Element Is Visible    ${BOTAO_SUBCATEGORIA_VESTIDO}
    Click Element    ${BOTAO_SUBCATEGORIA_VESTIDO}

devo ser redirecionado para a página da categoria 
    [Documentação]    Verificar se foi redirecionado corretamente para a página da categoria
    Wait Until Element Is Visible    ${ID_PAGINA_CATEGORIA_VESTIDO}

    #Verificar se o título da aba está correto
    ${TITULO_EM_TELA}    Get Title
    Should Be Equal    ${TITULO_EM_TELA}    ${TITULO_PAGINA_CATEGORIA_VESTIDO}

visualizar os produtos filtrados junto com o título correspondente
    [Documentação]    Ver se os produtos filtrados correspondem com a categoria  

    #Segundo produto
    Wait Until Element Is Visible    ${ID_SEGUNDO_PRODUTO_CATEGORIA_VESTIDO}

    #Verificar se o segundo produto corresponde a categoria correta
    ${SEGUNDO_PRODUTO_EM_TELA}    Get Text    ${ID_SEGUNDO_PRODUTO_CATEGORIA_VESTIDO}
    Should Be Equal    ${SEGUNDO_PRODUTO_EM_TELA}    ${NOME_SEGUNDO_PRODUTO_CATEGORIA_VESTIDO}

    #Terceiro produto
    Wait Until Element Is Visible    ${ID_TERCEIRO_PRODUTO_CATEGORIA_VESTIDO}

    #Verificar se o segundo produto corresponde a categoria correta
    ${TERCEIRO_PRODUTO_EM_TELA}    Get Text    ${ID_TERCEIRO_PRODUTO_CATEGORIA_VESTIDO}
    Should Be Equal    ${TERCEIRO_PRODUTO_EM_TELA}    ${NOME_TERCEIRO_PRODUTO_CATEGORIA_VESTIDO}


que estou em uma página de categoria
    [Documentação]    Verifica se está em uma página de categoria
    Wait Until Element Is Visible    ${ID_PAGINA_CATEGORIA_VESTIDO}

    #Verificar se o título da aba está correto
    ${TITULO_EM_TELA}    Get Title
    Should Be Equal    ${TITULO_EM_TELA}    ${TITULO_PAGINA_CATEGORIA_VESTIDO}

localizo e clico em outra categoria
    [Documentação]    Localiza no menu lateral e clica na categoria
    Wait Until Element Is Visible    ${BOTAO_CATEGORIA_MULHER}
    Click Element    ${BOTAO_CATEGORIA_MULHER}

sua subcategoria
    [Documentação]    Clica no botão de subcategoria
    Wait Until Element Is Visible    ${BOTAO_SUBCATEGORIA_TOP}
    Click Element    ${BOTAO_SUBCATEGORIA_TOP}
    

devo ser redirecionado para a nova página de categoria selecionada 
    [Documentação]    Verificar se foi redirecionado corretamente para a página da categoria
    Wait Until Element Is Visible    ${ID_PAGINA_CATEGORIA_TOP}

    #Verificar se o nome da página está correto
    ${NOME_EM_TELA}    Get Text    ${ID_PAGINA_CATEGORIA_TOP}
    Should Be Equal As Strings    ${NOME_EM_TELA}    ${NOME_PAGINA_CATEGORIA_TOP}

    #Verificar se o título da aba está correto
    ${TITULO_EM_TELA}    Get Title
    Should Be Equal    ${TITULO_EM_TELA}    ${TITULO_PAGINA_CATEGORIA_TOP}

ver seus respectivos produtos filtrados
    [Documentação]    Ver se os produtos filtrados correspondem com a categoria 
    Wait Until Element Is Visible    ${ID_PRIMEIRO_PRODUTO_CATEGORIA_TOP}

    #Verificar se o primeiro produto corresponde a categoria correta
    ${PRIMEIRO_PRODUTO_EM_TELA}    Get Text    ${ID_PRIMEIRO_PRODUTO_CATEGORIA_TOP}
    Should Be Equal    ${PRIMEIRO_PRODUTO_EM_TELA}    ${NOME_PRIMEIRO_PRODUTO_CATEGORIA_TOP} 

    #Segundo produto
    Wait Until Element Is Visible    ${ID_SEGUNDO_PRODUTO_CATEGORIA_TOP}

    #Verificar se o segundo produto corresponde a categoria correta
    ${SEGUNDO_PRODUTO_EM_TELA}    Get Text    ${ID_SEGUNDO_PRODUTO_CATEGORIA_TOP}
    Should Be Equal    ${SEGUNDO_PRODUTO_EM_TELA}    ${NOME_SEGUNDO_PRODUTO_CATEGORIA_TOP}

    #Terceiro produto
    Wait Until Element Is Visible    ${ID_TERCEIRO_PRODUTO_CATEGORIA_TOP}

    #Verificar se o segundo produto corresponde a categoria correta
    ${TERCEIRO_PRODUTO_EM_TELA}    Get Text    ${ID_TERCEIRO_PRODUTO_CATEGORIA_TOP}
    Should Be Equal    ${TERCEIRO_PRODUTO_EM_TELA}    ${NOME_TERCEIRO_PRODUTO_CATEGORIA_TOP}
    