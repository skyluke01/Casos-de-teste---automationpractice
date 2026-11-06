Language: ptBr

*** Variáveis ***

################################################################################### 
# Links
###################################################################################
${URL_PAGINA_FORMULARIO_CONTATO}    https://automationexercise.com/contact_us
${URL_PAGINA_INICIAL}    https://automationexercise.com

################################################################################### 
# Elementos e valores página inicial
###################################################################################

${BOTAO_MENU_CONTATO}    css:a[href="/contact_us"]


################################################################################### 
# Elementos e valores página formulário de contato
###################################################################################

${CAMPO_TITULO_PAGINA_CONTATO}      css:div#contact-page h2.title
${TEXTO_TITULO_PAGINA_CONTATO}      CONTACT US
${TITULO_ABA_CONTATO}             Automation Exercise - Contact Us


${CAMPO_NOME}  css:input[data-qa="name"]
${CAMPO_EMAIL}    css:input[data-qa="email"]
${CAMPO_ASSUNTO}    css:input[data-qa="subject"]
${ID_MENSAGEM}    message
${CAMPO_IMAGEM}    css:input[name="upload_file"]
${BOTAO_SUBMIT}    name:submit

${NOME}    John Teste
${EMAIL}    johnteste@gmail.com
${ASSUNTO}    Suporte Geral
${MENSAGEM}    Olá, gostaria de tirar uma dúvida sobre os produtos disponíveis na loja.
${CAMINHO_IMAGEM}    C:/Users/LM/Documents/GitHub/Casos de teste - automationpractice/Automação de testes/resource/imagens/imagem-teste-formulario.png
${EMAIL_EM_BRANCO}    ${EMPTY}

${ID_MENSAGEM_DE_SUCESSO_FORMULARIO}    //*[@id="contact-page"]/div[2]/div[1]/div/div[2]
${CAMPO_MENSAGEM_DE_SUCESSO_FORMULARIO}    css:p[style*="color: green;"]
${MENSAGEM_DE_SUCESSO_FORMULARIO}    Success! Your details have been submitted successfully.
