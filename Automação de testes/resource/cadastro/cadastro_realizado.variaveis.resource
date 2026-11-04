Language: ptBr

*** Variáveis ***

################################################################################### 
# Links
###################################################################################
${URL_PAGINA_CADASTRO}    https://automationexercise.com/login
${URL_PAGINA_INICIAL}    https://automationexercise.com
${URL_FORMULARIO_CADASTRO}    https://automationexercise.com/signup
${URL_CONTA_CRIADA}    https://automationexercise.com/account_created
${URL_CONTA_EXCLUIDA}    https://automationexercise.com/delete_account

################################################################################### 
# Elementos e valores página de cadastro
###################################################################################

${ID_NOME_PAGINA_CADASTRO}    //*[@id="form"]/div/div/div[3]/div/h2
${CAMPO_NOME_INICIAL}    css:input[data-qa="signup-name"]
${CAMPO_EMAIL_INICIAL}    css:input[data-qa="signup-email"]
${BOTAO_CADASTRO}    css:button[data-qa="signup-button"]

${ID_MENSAGEM_ERRO_CADASTRO}    //*[@id="form"]/div/div/div[3]/div/form/p
${CAMPO_MENSAGEM_ERRO}    css:p[style*="color: red;"]
${MENSAGEM_ERRO_CADASTRO}    Email Address already exist!

${NOME}    John Teste
${EMAIL}    johnteste2@gmail.com
${EMAIL_EXISTENTE}    johnteste@gmail.com
${NOME_EM_BRANCO}    ${EMPTY}
${EMAIL_EM_BRANCO}    ${EMPTY}

${NOME_PAGINA_CADASTRO}    New User Signup!
${TITULO_PAGINA_CADASTRO}    Automation Exercise - Signup / Login

################################################################################### 
# Elementos e valores página do formulario de cadastro
###################################################################################
${ID_NOME_PAGINA_FORMULARIO}    //*[@id="form"]/div/div/div/div/h2/b
${NOME_PAGINA_FORMULARIO}    ENTER ACCOUNT INFORMATION
${TITULO_PAGINA_FORMULARIO}    Automation Exercise - Signup

${NOME_FORMULARIO_CADASTRO}    John Teste
${EMAIL_FORMULARIO_CADASTRO}    johnteste2@gmail.com
${SENHA_FORMULARIO_CADASTRO}    SenhaForte123!
${DIA_NASCIMENTO_FORMULARIO}    15
${MES_NASCIMENTO_FORMULARIO}    8
${ANO_NASCIMENTO_FORMULARIO}    1990
${PRIMEIRO_NOME}    John
${ULTIMO_NOME}    Teste
${EMPRESA}    Teste Company
${ENDERECO}    Rua Teste, 123
${PAIS}    United States
${ESTADO}    Teste State
${CIDADE}    Teste City
${CEP}    12345
${CELULAR}    +5511999999999

${ID_NOME_FORMULARIO}    name 
${ID_SENHA_FORMULARIO}    password
${ID_DIA_NASCIMENTO}    days
${ID_MES_NASCIMENTO}    months   
${ID_ANO_NASCIMENTO}    years
${ID_NEWSLETTER}    newsletter
${ID_OFERTAS_ESPECIAIS}    optin
${ID_PRIMEIRO_NOME}    first_name
${ID_ULTIMO_NOME}    last_name
${ID_EMPRESA}    company  
${ID_ENDERECO}    address1
${ID_PAIS}    country
${ID_ESTADO}    state
${ID_CIDADE}    city
${ID_CEP}    zipcode
${ID_CELULAR}    mobile_number
${BOTAO_CRIAR_CONTA}    css:button[data-qa="create-account"]

################################################################################### 
# Elementos e valores página de conta criada
###################################################################################
${ID_MENSAGEM_SUCESSO_CADASTRO}    //*[@id="form"]/div/div/div/h2/b
${MENSAGEM_SUCESSO_CADASTRO}    ACCOUNT CREATED!
${TITULO_PAGINA_CONTA_CRIADA}    Automation Exercise - Account Created
${BOTAO_CONTINUAR}    css:a[data-qa="continue-button"]

################################################################################### 
# Elementos e valores página inicial
###################################################################################
${ID_NOME_PAGINA_INICIAL}    //*[@id="slider-carousel"]/div/div[1]/div[1]/h1
${NOME_PAGINA_INICIAL}    AutomationExercise
${TITULO_PAGINA_INICIAL}    Automation Exercise
${BOTAO_MENU_CADASTRO}    css:a[href="/login"]
${BOTAO_EXCLUIR_CONTA}    css:a[href="/delete_account"]
${NOME_USUARIO_LOGADO}    //*[@id="header"]/div/div/div/div[2]/div/ul/li[10]/a
${MENSAGEM_USUARIO_LOGADO}    Logged in as ${NOME}

################################################################################### 
# Elementos e valores página conta excluída
###################################################################################
${ID_MENSAGEM_SUCESSO_EXCLUSAO}    //*[@id="form"]/div/div/div/h2/b
${MENSAGEM_SUCESSO_EXCLUSAO}    ACCOUNT DELETED!
${TITULO_PAGINA_CONTA_EXCLUIDA}    Automation Exercise - Account Created     #este título é o mesmo da página de conta criada por algum bug do sistema, mas a mensagem de sucesso é diferente.
