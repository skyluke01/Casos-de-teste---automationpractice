Language: ptBr

*** Configurações ***
Recurso    ../../../resource/cadastro/cadastro_realizado.keywords.resource
Recurso    ../../../resource/produto/catalogo/catalogo.keywords.resource
Recurso    ../../../resource/produto/busca/busca_produto.keywords.resource

Suite Setup    Abrir navegador
Suite Teardown    Fechar navegador

*** Casos De Teste ***

Acesso à Página de Produtos

    Dado que estou na página inicial do site
    Quando clico no botão "Products"
    Então devo ser redirecionado para a página de todos os produtos "ALL PRODUCTS" e visualizar a listagem de produtos

Procurar Produto

    Dado que estou na página de produtos
    Quando digito o nome do produto em "Search Product"     ${PRODUTO}
    E clico para pesquisar
    Então devo conseguir visualizar o título "SEARCHED PRODUCTS" e todos os produtos correspondentes aquele nome
