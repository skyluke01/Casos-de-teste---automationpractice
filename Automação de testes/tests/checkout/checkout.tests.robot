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
    E que tenho produtos no carrinho
    Quando avanço para o checkout
    E reviso o pedido    ${CHECKOUT_COMENTARIO}
    E insiro o pagamento    ${NOME_CARTAO}    ${NUMERO_CARTAO}    ${CVC}    ${MES_VENCIMENTO}    ${ANO_VENCIMENTO}     
    E confirmo
    Então o sistema deve exibir a mensagem de sucesso "Your order has been placed successfully!"
    [Teardown]    Fechar navegador

Checkout (Registro antes do checkout)

    [Setup]    Abrir navegador    
    Dado que me registro    ${NOME_CADASTRO}    ${EMAIL_CADASTRO}    ${SENHA_FORMULARIO_CADASTRO}  ${DIA_NASCIMENTO_FORMULARIO}  ${MES_NASCIMENTO_FORMULARIO}  ${ANO_NASCIMENTO_FORMULARIO}    ${PRIMEIRO_NOME}  ${ULTIMO_NOME}  ${EMPRESA}  ${ENDERECO}  ${PAIS}  ${ESTADO}  ${CIDADE}  ${CEP}  ${CELULAR} 
    E que tenho produtos no carrinho
    Quando avanço para o checkout
    E reviso o pedido    ${CHECKOUT_COMENTARIO}
    E insiro o pagamento    ${NOME_CARTAO}    ${NUMERO_CARTAO}    ${CVC}    ${MES_VENCIMENTO}    ${ANO_VENCIMENTO}
    E confirmo
    Então o sistema deve exibir a mensagem de sucesso "Your order has been placed successfully!"
    E clico em "Delete Account"
    E minha conta deve ser removida e devo visualizar "ACCOUNT DELETED!"
    [Teardown]    Fechar navegador


Checkout (Registro durante Checkout)
    [Setup]    Abrir navegador 
    Dado que tenho produtos no carrinho
    Quando clico em "Proceed To Checkout"
    Então devo ver a opção de login/registro para concluir o pedido.
    E que me registro   ${NOME_CADASTRO}    ${EMAIL_CADASTRO}    ${SENHA_FORMULARIO_CADASTRO}  ${DIA_NASCIMENTO_FORMULARIO}  ${MES_NASCIMENTO_FORMULARIO}  ${ANO_NASCIMENTO_FORMULARIO}    ${PRIMEIRO_NOME}  ${ULTIMO_NOME}  ${EMPRESA}  ${ENDERECO}  ${PAIS}  ${ESTADO}  ${CIDADE}  ${CEP}  ${CELULAR} 
    E retorno ao carrinho
    Quando clico em "Proceed To Checkout"
    E reviso o pedido    ${CHECKOUT_COMENTARIO}
    E insiro o pagamento    ${NOME_CARTAO}    ${NUMERO_CARTAO}    ${CVC}    ${MES_VENCIMENTO}    ${ANO_VENCIMENTO}
    E confirmo
    Então o sistema deve exibir a mensagem de sucesso "Your order has been placed successfully!"
    E clico em "Delete Account"
    E minha conta deve ser removida e devo visualizar "ACCOUNT DELETED!"