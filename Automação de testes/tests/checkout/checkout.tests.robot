Language: ptBr

*** Configurações ***
Recurso    ../../resource/logout/logout_realizado.keywords.resource
Recurso    ../../resource/checkout/checkout.keywords.resource
Recurso    ../../resource/produto/catalogo/catalogo.keywords.resource
Recurso    ../../resource/produto/carrinho/carrinho.keywords.resource
Recurso    ../../resource/login/login_realizado.keywords.resource

Suite Setup    Abrir navegador
Suite Teardown    Fechar navegador

*** Casos De Teste ***

Checkout (Login antes do checkout)

    Dado que estou logado no sistema    ${EMAIL}  ${SENHA} 
    E tenho produtos no carrinho
    Quando avanço para o checkout
    E reviso o pedido    ${CHECKOUT_COMENTARIO}
    E insiro o pagamento    ${NOME_CARTAO}    ${NUMERO_CARTAO}    ${CVC}    ${MES_VENCIMENTO}    ${ANO_VENCIMENTO}     
    E confirmo
    Então o sistema deve exibir a mensagem de sucesso "Your order has been placed successfully!"