Language: ptBr

*** Variáveis ***

################################################################################### 
# Links
###################################################################################

${URL_PAGINA_TODOS_PRODUTOS}    https://www.automationexercise.com/products
${URL_PAGINA_VER_PRODUTO}    https://www.automationexercise.com/product_details/1

################################################################################### 
# Elementos e valores página de todos os produtos
###################################################################################

${ID_NOME_PAGINA_TODOS_PRODUTOS}    //h2[text()='All Products' or text()='ALL PRODUCTS']
${NOME_PAGINA_TODOS_PRODUTOS}    ALL PRODUCTS
${TITULO_PAGINA_TODOS_PRODUTOS}    Automation Exercise - All Products

${BOTAO_VER_PRODUTO}    //div[@class='col-sm-9 padding-right']//div[2]//div[1]//div[2]//ul[1]//li[1]//a[1]



################################################################################### 
# Elementos e valores página da página inicial
###################################################################################

${BOTAO_PRODUTOS}    css:a[href="/products"]

################################################################################### 
# Elementos e valores página da página ver produto
###################################################################################

${ID_NOME_PAGINA_VER_PRODUTO}    css:div.product-information h2
${NOME_PAGINA_VER_PRODUTO}    Blue Top
${TITULO_PAGINA_VER_PRODUTO}    Automation Exercise - Product Details

${CATEGORIA}    css:div.product-information p:nth-of-type(1)
${PRECO}    css:div.product-information span span
${DISPONIBILIDADE}    css:div.product-information p:nth-of-type(2) b
${CONDICAO}    css:div.product-information p:nth-of-type(3) b
${MARCA}    css:div.product-information p:nth-of-type(4) b




