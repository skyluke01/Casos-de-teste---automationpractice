Language: ptBr

*** Configurações ***
Recurso    ../../resource/cadastro/cadastro_realizado.keywords.resource
Recurso    ../../resource/formulario_contato/formulario_contato.keywords.resource

Suite Setup    Abrir navegador
Suite Teardown    Fechar navegador

*** Casos De Teste ***

Acesso à Página de Contato
    [Documentação]    
    Dado que estou na página inicial do site
    Quando clico no botão "Contact us"
    Então devo ser redirecionado para a página de contato e verificar o texto "CONTACT US"

Envio Bem-Sucedido do Formulário

    Dado que estou no formulário "GET IN TOUCH"
    Quando preencho todos os campos obrigatórios do formulário de contato    ${NOME}    ${EMAIL}    ${ASSUNTO}    ${MENSAGEM}    ${CAMINHO_IMAGEM}
    E clico em "Submit" e confirmo no navegador
    Então o sistema deve exibir a mensagem de sucesso "Success! Your details have been submitted successfully."

Acesso à Página de Contato (Envio Sem o Email)
    [Documentação]    
    Dado que estou na página inicial do site
    Quando clico no botão "Contact us"
    Então devo ser redirecionado para a página de contato e verificar o texto "CONTACT US"

Envio sem campo obrigatório (Envio sem Email)

    Dado que estou no formulário "GET IN TOUCH"
    Quando preencho todos os campos obrigatórios do formulário de contato    ${NOME}    ${EMAIL_EM_BRANCO}    ${ASSUNTO}    ${MENSAGEM}    ${CAMINHO_IMAGEM}
    E clico em "Submit"
    Então o sistema não deve me redirecionar para outra página 