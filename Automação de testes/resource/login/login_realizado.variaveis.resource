Language: ptBr

*** Variáveis ***

################################################################################### 
# Links
###################################################################################
${URL_PAGINA_LOGIN}    https://automationexercise.com/login
${URL_PAGINA_INICIAL}    https://automationexercise.com

################################################################################### 
# Elementos e valores página de login
###################################################################################

${URL_LOGIN}    https://automationexercise.com/login
${ID_NOME_PAGINA_LOGIN}    //*[@id="form"]/div/div/div[1]/div/h2
${CAMPO_EMAIL}    css:input[data-qa="login-email"]
${CAMPO_SENHA}    css:input[data-qa="login-password"]
${BOTAO_LOGIN}    css:button[data-qa="login-button"]
${BOTAO_MENU_LOGIN}    css:a[href="/login"]
${BOTAO_MENU_LOGOUT}    css:a[href="/logout"]

${CAMPO_MENSAGEM_ERRO}    css:p[style*="color: red;"]
${MENSAGEM_ERRO_LOGIN}    Your email or password is incorrect!

${EMAIL}    johnteste@gmail.com
${SENHA}    SenhaForte123@
${EMAIL_INVALIDO}    usuarioinvalido@gmail.com
${SENHA_INVALIDA}    SenhaFraca123
${EMAIL_EM_BRANCO}    ${EMPTY}
${SENHA_EM_BRANCO}    ${EMPTY}

${NOME_PAGINA_LOGIN}    Login to your account
${TITULO_PAGINA_LOGIN}    Automation Exercise - Signup / Login

################################################################################### 
# Elementos e valores página logada
###################################################################################

${ID_NOME_PAGINA_INICIAL}    //*[@id="slider-carousel"]/div/div[1]/div[1]/h1
${NOME_PAGINA_INICIAL}    AutomationExercise
${TITULO_PAGINA_INICIAL}    Automation Exercise



