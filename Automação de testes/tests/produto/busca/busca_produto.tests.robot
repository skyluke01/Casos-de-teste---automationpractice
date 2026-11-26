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
    [Teardown]    Fechar navegador


Redirecionamento a página de categorias
    
    [Setup]    Abrir navegador
    Dado que estou na página inicial do site
    Quando localizo e clico em uma categoria
    E sua subcategoria na barra lateral esquerda
    Então devo ser redirecionado para a página da categoria 
    E visualizar os produtos filtrados junto com o título correspondente

Redirecionamento de uma página de categoria para a outra

    Dado que estou em uma página de categoria
    Quando localizo e clico em outra categoria 
    E sua subcategoria
    Então devo ser redirecionado para a nova página de categoria selecionada 
    E ver seus respectivos produtos filtrados
