Language: ptBr

*** Variáveis ***

*** Configurações ***
Biblioteca    SeleniumLibrary
Recurso    ../cadastro/cadastro_realizado.variaveis.resource
Recurso    pagina_casos_de_teste.variaveis.resource

*** Keywords ***

clico no botão "Test Cases"
    [Documentação]    Clica no botão Test Cases
    Click Element    ${BOTAO_TEST_CASE}

devo ser redirecionado para a página de casos de teste e ver o texto "TEST CASES"
    [Documentação]    Verifica o redirecionamento para a página de casos de teste
    Wait Until Element Is Visible    ${ID_NOME_PAGINA_CASOS_DE_TESTE}

    #Verifica se o título da página de casos de teste está correto.
    ${TITULO_EM_TELA}=    Get Text    ${ID_NOME_PAGINA_CASOS_DE_TESTE}
    Should Be Equal    ${TITULO_EM_TELA}    ${NOME_PAGINA_CASOS_DE_TESTE}

    #Verifica se o título da aba de casos de teste está correto.
    ${TITULO_ABA}=    Get Title
    Should Be Equal    ${TITULO_ABA}    ${TITULO_PAGINA_CASOS_DE_TESTE}