Language: ptBr

*** Variáveis ***

################################################################################### 
# Links
###################################################################################

${URL_PAGINA_BUSCA_PRODUTO}    https://www.automationexercise.com/products?search=Top
${URL_PAGINA_CATEGORIA_VESTIDO}    https://www.automationexercise.com/category_products/1
${URL_PAGINA_CATEGORIA_TOP}    https://www.automationexercise.com/category_products/2

################################################################################### 
# Elementos e valores página de todos os produtos
###################################################################################

${ID_BUSCA_PRODUTO}    search_product
${PRODUTO}    Top
${BOTÃO_BUSCA_PRODUTO}    submit_search    

################################################################################### 
# Elementos e valores página de busca de produto
###################################################################################

${ID_NOME_PAGINA_BUSCA_PRODUTO}    //h2[@class='title text-center']
${NOME_PAGINA_BUSCA_PRODUTO}    SEARCHED PRODUCTS
${TITULO_PAGINA_BUSCA_PRODUTO}    Automation Exercise - All Products    #manteve o titulo da aba da página de todos os produtos

################################################################################### 
# Elementos e valores menu lateral
###################################################################################

${BOTAO_CATEGORIA_MULHER}    xpath://a[normalize-space()='Women']
${BOTAO_SUBCATEGORIA_VESTIDO}    css:a[href='/category_products/1']
${BOTAO_SUBCATEGORIA_TOP}    css:a[href='/category_products/2']

################################################################################### 
# Elementos e valores página categoria vestido
###################################################################################

${ID_PAGINA_CATEGORIA_VESTIDO}    xpath://h2[contains(text(),'Women -')]
${NOME_PAGINA_CATEGORIA_VESTIDO}    WOMEN -  Dress PRODUCTS
${TITULO_PAGINA_CATEGORIA_VESTIDO}    Automation Exercise - Dress Products
${ID_PRIMEIRO_PRODUTO_CATEGORIA_VESTIDO}    xpath://p[normalize-space()='Sleeveless Dress']
${NOME_PRIMEIRO_PRODUTO_CATEGORIA_VESTIDO}    Sleeveless DressDiscover Dresses
${ID_SEGUNDO_PRODUTO_CATEGORIA_VESTIDO}    xpath://div[@class='productinfo text-center']//p[contains(text(),'Stylish Dress')] 
${NOME_SEGUNDO_PRODUTO_CATEGORIA_VESTIDO}    Stylish Dress   
${ID_TERCEIRO_PRODUTO_CATEGORIA_VESTIDO}    xpath://div[@class='productinfo text-center']//p[contains(text(),'Rose Pink Embroidered Maxi Dress')] 
${NOME_TERCEIRO_PRODUTO_CATEGORIA_VESTIDO}    Rose Pink Embroidered Maxi Dress



################################################################################### 
# Elementos e valores página categoria top
###################################################################################

${ID_PAGINA_CATEGORIA_TOP}    xpath://h2[normalize-space()='Women - Tops Products']
${NOME_PAGINA_CATEGORIA_TOP}    WOMEN - TOPS PRODUCTS
${TITULO_PAGINA_CATEGORIA_TOP}    Automation Exercise - Tops Products
${ID_PRIMEIRO_PRODUTO_CATEGORIA_TOP}    xpath://div[@class='productinfo text-center']//p[contains(text(),'Blue Top')]    
${NOME_PRIMEIRO_PRODUTO_CATEGORIA_TOP}    Blue Top    
${ID_SEGUNDO_PRODUTO_CATEGORIA_TOP}    xpath://div[@class='productinfo text-center']//p[contains(text(),'Winter Top')]    
${NOME_SEGUNDO_PRODUTO_CATEGORIA_TOP}    Winter Top       
${ID_TERCEIRO_PRODUTO_CATEGORIA_TOP}    xpath://div[@class='productinfo text-center']//p[contains(text(),'Summer White Top')]     
${NOME_TERCEIRO_PRODUTO_CATEGORIA_TOP}    Summer White Top










