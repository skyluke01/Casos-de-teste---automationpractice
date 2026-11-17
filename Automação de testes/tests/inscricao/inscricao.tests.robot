Language: ptBr

*** Configurações ***
Recurso    ../../resource/cadastro/cadastro_realizado.keywords.resource
Recurso    ../../resource/inscricao/inscricao.keywords.resource
Recurso    ../../resource/produto/carrinho/carrinho.keywords.resource

Suite Setup    Abrir navegador
Suite Teardown    Fechar navegador

*** Casos De Teste ***

Inscrição para atualizações e notícias sobre o site (página inicial)

    Dado que estou na página inicial do site
    Quando desço para o final da página e insiro meu e-mail na seção "SUBSCRIPTION"    ${EMAIL_INSCRICAO}
    E clico no botão de inscrição
    Então devo conseguir visualizar a mensagem de sucesso "You have been successfully subscribed!"

Navegação para o carrinho

    Dado que estou na página inicial do site
    Quando clico no botão "Cart"
    Então devo ser redirecionado para página do carrinho e ver o texto "Shopping Cart"

Inscrição para atualizações e notícias sobre o site

    Dado que estou na página do carrinho
    Quando desço para o final da página e insiro meu e-mail na seção "SUBSCRIPTION"    ${EMAIL_INSCRICAO}
    E clico no botão de inscrição
    Então devo conseguir visualizar a mensagem de sucesso "You have been successfully subscribed!"
