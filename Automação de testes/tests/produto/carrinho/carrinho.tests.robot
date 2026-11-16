Language: ptBr

*** Configurações ***
Recurso    ../../../resource/cadastro/cadastro_realizado.keywords.resource
Recurso    ../../../resource/produto/catalogo/catalogo.keywords.resource
Recurso    ../../../resource/produto/carrinho/carrinho.keywords.resource

Suite Setup    Abrir navegador
Suite Teardown    Fechar navegador

*** Casos De Teste ***

Navegação para pagina de produtos

    Dado que estou na página inicial do site
    Quando clico no botão "Products"
    Então devo ser redirecionado para a página de todos os produtos "ALL PRODUCTS" e visualizar a listagem de produtos

Adição de itens e redirecionamento para o carrinho

    Dado que estou na página de listagem de produtos
    Quando adiciono os produtos
    E clico em "View Cart"
    Então devo ser redirecionado para a página do carrinho

Verificação de itens no carrinho

    Dado que estou na página do carrinho
    Quando Verifico os itens no carrinho
    Então devo conseguir visualizar seus respectivos preços, quantidade e valor total

Remoção de item do carrinho

    Dado que estou na página do carrinho
    Quando clico no botão "X" ao lado do item que desejo remover
    Então o item deve ser removido instantaneamente da listagem do carrinho

Navegação para página de detalhes do produto

    Dado que estou na página inicial do site
    Quando clico em "View Product" em qualquer produto
    Então devo ser redirecionado para a página de detalhes do produto e visualizar informações como nome, categoria, preço, disponibilidade, condição e marca

Mudando a quantidade do produto e adicionando ao carrinho

    Dado que estou na página de detalhes do produto
    Quando mudo a quantidade do produto e clico em "Add to cart" 
    Então devo receber a confirmação de que o produto foi adicionado
    E clico em "View Cart"

Verificação da quantidade do item no carrinho

    Dado que estou na página do carrinho
    Quando Verifico a quantidade do item adicionado
    Então devo ver se essa quantidade corresponde exatamente ao valor definido anteriormente na página de detalhes


