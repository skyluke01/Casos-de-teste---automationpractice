Language: ptBr

*** Variáveis ***

################################################################################### 
# Links
###################################################################################
${URL_PAGINA_CARRINHO}    https://automationexercise.com/view_cart

################################################################################### 
# Elementos e valores página de produtos
###################################################################################

${CONTAINER_PRIMEIRO_PRODUTO}    //div[@class='col-sm-9 padding-right']//div[2]//div[1]//div[1]//div[2]
${CONTAINER_SEGUNDO_PRODUTO}     //div[3]//div[1]//div[1]//div[2]
${BOTAO_ADICIONAR_PRIMEIRO_ITEM}    css: a[data-product-id='1']
${BOTAO_ADICIONAR_SEGUNDO_ITEM}    css: a[data-product-id='2']
${BOTAO_CONTINUAR_COMPRANDO}    //button[@class='btn btn-success close-modal btn-block']
${BOTAO_MODAL_VER_CARRINHO}    //u[normalize-space()='View Cart']

${DESCUBRA_MAIS}    //div[@class='goog-rentries']//div[1]

################################################################################### 
# Elementos e valores página carrinho
###################################################################################

${ID_PAGINA_CARRINHO}    //li[@class='active']
${NOME_PAGINA_CARRINHO}    Shopping Cart
${TITULO_PAGINA_CARRINHO}    Automation Exercise - Checkout    #Deveria ser Cart

${ID_CARRINHO_PRIMEIRO_ITEM}    css:tr#product-1 a[href='/product_details/1']
${NOME_PRIMEIRO_ITEM}    Blue Top
${ID_PRECO_PRIMEIRO_ITEM}    //tr[@id='product-1']//td[@class='cart_price']
${PRECO_PRIMEIRO_ITEM}    Rs. 500
${ID_QUANTIDADE_PRIMEIRO_ITEM}    //tr[@id='product-1']//td[@class='cart_quantity']
${QUANTIDADE_PRIMEIRO_ITEM}    1
${ID_VALOR_TOTAL_PRIMEIRO_ITEM}    //tr[@id='product-1']//td[@class='cart_total']
${VALOR_TOTAL_PRIMEIRO_ITEM}    Rs. 500

${ID_CARRINHO_SEGUNDO_ITEM}    css:tr#product-2 a[href='/product_details/2'] 
${NOME_SEGUNDO_ITEM}    Men Tshirt
${ID_PRECO_SEGUNDO_ITEM}    //tr[@id='product-2']//td[@class='cart_price']
${PRECO_SEGUNDO_ITEM}    Rs. 400
${ID_QUANTIDADE_SEGUNDO_ITEM}    //tr[@id='product-2']//td[@class='cart_quantity']
${QUANTIDADE_SEGUNDO_ITEM}    1
${ID_VALOR_TOTAL_SEGUNDO_ITEM}    //tr[@id='product-2']//td[@class='cart_total']
${VALOR_TOTAL_SEGUNDO_ITEM}    Rs. 400

${QUANTIDADE_TESTE}    4

${BOTAO_REMOCAO_SEGUNDO_ITEM}    //tr[@id='product-2']//i[@class='fa fa-times']
${BOTAO_REMOCAO_PRIMEIRO_ITEM}    //tr[@id='product-1']//i[@class='fa fa-times']
${ID_CARRINHO_VAZIO}    p[class='text-center'] b
${NOME_CARRINHO_VAZIO}    Cart is empty!


################################################################################### 
# Elementos e valores página inicial
###################################################################################

${BOTAO_VER_PRODUTO_PAGINA_INICIAL}   css: a[href='/product_details/1']


