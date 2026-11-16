Language: ptBr

*** Configurações ***
Recurso    ../../../resource/cadastro/cadastro_realizado.keywords.resource
Recurso    ../../../resource/produto/catalogo/catalogo.keywords.resource

Suite Setup    Abrir navegador
Suite Teardown    Fechar navegador

*** Casos De Teste ***

Acesso à Página de Produtos

    Dado que estou na página inicial do site
    Quando clico no botão "Products"
    Então devo ser redirecionado para a página de todos os produtos "ALL PRODUCTS" e visualizar a listagem de produtos

Acesso aos Detalhes do Produto

    Dado que estou na página de listagem de produtos
    Quando clico em "View Product" no primeiro produto da lista
    Então devo ser redirecionado para a página de detalhes do produto e visualizar informações como nome, categoria, preço, disponibilidade, condição e marca