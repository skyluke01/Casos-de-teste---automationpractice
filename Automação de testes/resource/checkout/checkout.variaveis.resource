Language: ptBr

*** Variáveis ***

################################################################################### 
# Links
###################################################################################
${URL_PAGINA_CHECKOUT}    https://www.automationexercise.com/checkout
${URL_PAGINA_PAGAMENTO}    https://www.automationexercise.com/payment
${URL_PAGAMENTO_FINALIZADO}    https://www.automationexercise.com/payment_done/

################################################################################### 
# Elementos e valores página de checkout
###################################################################################
${ID_NOME_PAGINA_CHECKOUT}    xpath://li[@class='active']
${NOME_PAGINA_CHECKOUT}    Checkout
${TITULO_PAGINA_CHECKOUT}    Automation Exercise - Checkout

${ENDERECO_ENTREGA_NOME}    css:ul[id='address_delivery'] li[class='address_firstname address_lastname']
${ENDERECO_ENTREGA_EMPRESA}    css:ul[id='address_delivery'] li:nth-child(3)
${ENDERECO_ENTREGA_RUA}    css:ul[id='address_delivery'] li:nth-child(4)
${ENDERECO_ENTREGA_ESTADO_CIDADE_CEP}    css:ul[id='address_delivery'] li[class='address_city address_state_name address_postcode']
${ENDERECO_ENTREGA_PAIS}    css:ul[id='address_delivery'] li[class='address_country_name']
${ENDERECO_ENTREGA_CELULAR}    css:ul[id='address_delivery'] li[class='address_phone']

${ENDERECO_COBRANCA_NOME}    css:ul[id='address_invoice'] li[class='address_firstname address_lastname']
${ENDERECO_COBRANCA_EMPRESA}    css:ul[id='address_invoice'] li:nth-child(3)
${ENDERECO_COBRANCA_RUA}    css:ul[id='address_invoice'] li:nth-child(4)
${ENDERECO_COBRANCA_ESTADO_CIDADE_CEP}    css:ul[id='address_invoice'] li[class='address_city address_state_name address_postcode']
${ENDERECO_COBRANCA_PAIS}    css:ul[id='address_invoice'] li[class='address_country_name']
${ENDERECO_COBRANCA_CELULAR}    css:ul[id='address_invoice'] li[class='address_phone']

${ENDERECO_NOME}    Mr. John Teste
${ENDERECO_EMPRESA}    TesteCompany
${ENDERECO_RUA}    Rua do teste 1504
${ENDERECO_ESTAD0_CIDADE_CEP}    Miami Florida 47562000
${ENDERECO_PAIS}    United States
${ENDERECO_CELULAR}    54965580700

${ID_CHECKOUT_COMENTARIO}    css:textarea[name='message'] 

${CHECKOUT_COMENTARIO}    Entrega rápida, por favor.

${BOTAO_FAZER_PEDIDO}    css:.btn.btn-default.check_out

################################################################################### 
# Elementos e valores página de pagamento
###################################################################################

${ID_NOME_PAGINA_PAGAMENTO}    xpath://li[@class='active']
${NOME_PAGINA_PAGAMENTO}    Payment
${TITULO_PAGINA_PAGAMENTO}    Automation Exercise - Payment

${ID_NOME_CARTAO}    name_on_card
${ID_NUMERO_CARTAO}    card_number
${ID_CVC}    cvc
${ID_MES_VENCIMENTO}    expiry_month
${ID_ANO_VENCIMENTO}    expiry_year

${NOME_CARTAO}    John T.
${NUMERO_CARTAO}    4242 4242 4242 4242
${CVC}    123
${MES_VENCIMENTO}    12
${ANO_VENCIMENTO}    2028

${BOTAO_PAGAR_E_CONFIRMAR_PEDIDO}    xpath://button[@id='submit']

${ID_MENSAGEM_SUCESSO_CRIAR_PEDIDO}    css:#success_message
${MENSAGEM_SUCESSO_CRIAR_PEDIDO}    Your order has been placed successfully!

################################################################################### 
# Elementos e valores página do carrinho
###################################################################################

${BOTAO_IR_PARA_CHECKOUT}    //a[normalize-space()='Proceed To Checkout']

################################################################################### 
# Elementos e valores página de pagamento finalizado
###################################################################################

${ID_NOME_PAGINA_PAGAMENTO_FINALIZADO}    xpath://b[normalize-space()='Order Placed!']
${NOME_PAGINA_PAGAMENTO_FINALIZADO}    Order Placed!    
${TITULO_PAGINA_PAGAMENTO_FINALIZADO}    Automation Exercise - Order Placed

${ID_MENSAGEM_PARABENS_PEDIDO_EFEITUADO}    xpath://p[normalize-space()='Congratulations! Your order has been confirmed!']
${MENSAGEM_PARABENS_PEDIDO_EFEITUADO}    Congratulations! Your order has been confirmed!

${BOTAO_BAIXAR_FATURA}    xpath://a[normalize-space()='Download Invoice']