Language: ptBr

*** Configurações ***
Recurso    ../../resource/cadastro/cadastro_realizado.keywords.resource
Recurso    ../../resource/pagina_casos_de_teste/pagina_casos_de_teste.keywords.resource

Suite Setup    Abrir navegador
Suite Teardown    Fechar navegador

*** Casos De Teste ***

Acesso à Página de Casos de teste
    Dado que estou na página inicial do site
    Quando clico no botão "Test Cases"
    Então devo ser redirecionado para a página de casos de teste e ver o texto "TEST CASES"