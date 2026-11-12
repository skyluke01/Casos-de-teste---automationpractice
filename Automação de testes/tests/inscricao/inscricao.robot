Language: ptBr

*** Configurações ***
Recurso    ../../resource/cadastro/cadastro_realizado.keywords.resource
Recurso    ../../resource/inscricao/inscricao.keywords.resource

Suite Setup    Abrir navegador
Suite Teardown    Fechar navegador

*** Casos De Teste ***

Inscrição para atualizações e notícias sobre o site (página inicial)

    Dado que estou na página inicial do site
    Quando desço para o final da página e insiro meu e-mail na seção "SUBSCRIPTION"    ${EMAIL_INSCRICAO}
    E clico no botão de inscrição
    Então devo conseguir visualizar a mensagem de sucesso "You have been successfully subscribed!"
