Language: ptBr

*** Configurações ***
Recurso    ../../resource/cadastro/cadastro_realizado.keywords.resource

Suite Setup    Abrir navegador
Suite Teardown    Fechar navegador

*** Casos De Teste ***

Acesso à página de cadastro
    [Documentação]    Verifica se o usuário consegue acessar a página de cadastro.
    Dado que estou na página inicial do site
    Quando clico no botão "Signup / Login"
    Então devo ser redirecionado para a página de cadastro/login e visualizar o formulário "New User Signup!"

Validação Inicial (Nome e Email)
    [Documentation]    Verifica se o usuário consegue avançar para o formulário completo de cadastro ao inserir um nome e email válidos.
    Dado que estou na página de cadastro/login
    Quando preencho as credenciais de cadastro com nome e email   ${NOME}    ${EMAIL}
    E clico no botão "Signup"
    Então devo avançar para o formulário completo "ENTER ACCOUNT INFORMATION"

Preenchimento de Dados da Conta
    [Documentation]    Verifica se o usuário consegue preencher os dados da conta no formulário de cadastro.
    Dado que estou no formulário "ENTER ACCOUNT INFORMATION"
    Quando preencho todos os campos obrigatórios do formulário de cadastro  ${SENHA_FORMULARIO_CADASTRO}  ${DIA_NASCIMENTO_FORMULARIO}  ${MES_NASCIMENTO_FORMULARIO}  ${ANO_NASCIMENTO_FORMULARIO}    
    Então devo poder selecionar opções de newsletter e ofertas especiais

Preenchimento de Dados de Endereço e Finalização do Cadastro
    [Documentation]    Verifica se o usuário consegue preencher os dados de endereço no formulário de cadastro.
    Dado que preenchi os dados da conta
    Quando preencho informações de endereço completo  ${PRIMEIRO_NOME}  ${ULTIMO_NOME}  ${EMPRESA}  ${ENDERECO}  ${PAIS}  ${ESTADO}  ${CIDADE}  ${CEP}  ${CELULAR}
    E clico no botão "Create Account"
    Então devo poder finalizar o cadastro e visualizar a mensagem de sucesso


Login Automático
    [Documentation]    Verifica se o usuário é automaticamente autenticado após a criação da conta.
    Dado que minha conta foi criada com sucesso
    Quando clico em "Continue"
    Então devo estar automaticamente logado e visualizar "Logged in as [nome do usuário]"

Exclusão de Conta
    [Documentation]    Verifica se o usuário consegue excluir sua conta após o login.
    Dado que estou logado no sistema
    Quando clico em "Delete Account"
    Então minha conta deve ser removida e devo visualizar "ACCOUNT DELETED!"
    [Teardown]    Fechar navegador

Acesso à Página de Cadastro (Email Duplicado)
    [Documentação]    Verifica se o sistema exibe uma mensagem de erro ao tentar realizar o cadastro com email já existente.
    [Setup]    Abrir navegador
    Dado que estou na página inicial do site
    Quando clico no botão "Signup / Login"
    Então devo ser redirecionado para a página de cadastro/login e visualizar o formulário "New User Signup!"

Validação (Email duplicado)

    Dado que estou na página de cadastro/login
    Quando preencho as credenciais de cadastro com nome e email   ${NOME}    ${EMAIL_EXISTENTE}
    E clico no botão "Signup"
    Então o sistema deve informar "Email Address already exist!"

Acesso à Página de Cadastro (Email em branco)
    [Documentação]    Verifica se o sistema exibe uma mensagem de erro ao tentar realizar o cadastro com email já existente.
    [Setup]    Abrir navegador
    Dado que estou na página inicial do site
    Quando clico no botão "Signup / Login"
    Então devo ser redirecionado para a página de cadastro/login e visualizar o formulário "New User Signup!"

Validação (Email em branco)

    Dado que estou na página de cadastro/login
    Quando preencho as credenciais de cadastro com nome e email   ${NOME}    ${EMAIL_EM_BRANCO}
    E clico no botão "Signup"
    Então não devo ser redirecionado para o formulário completo "ENTER ACCOUNT INFORMATION"

Acesso à Página de Cadastro (Nome em branco)
    [Documentação]    Verifica se o sistema exibe uma mensagem de erro ao tentar realizar o cadastro com email já existente.
    [Setup]    Abrir navegador
    Dado que estou na página inicial do site
    Quando clico no botão "Signup / Login"
    Então devo ser redirecionado para a página de cadastro/login e visualizar o formulário "New User Signup!"

Validação (Nome em branco)

    Dado que estou na página de cadastro/login
    Quando preencho as credenciais de cadastro com nome e email   ${NOME_EM_BRANCO}    ${EMAIL}
    E clico no botão "Signup"
    Então não devo ser redirecionado para o formulário completo "ENTER ACCOUNT INFORMATION"

Acesso à Página de Cadastro (Nome e email em branco)
    [Documentação]    Verifica se o sistema exibe uma mensagem de erro ao tentar realizar o cadastro com email já existente.
    [Setup]    Abrir navegador
    Dado que estou na página inicial do site
    Quando clico no botão "Signup / Login"
    Então devo ser redirecionado para a página de cadastro/login e visualizar o formulário "New User Signup!"

Validação (Nome e email em branco)

    Dado que estou na página de cadastro/login
    Quando preencho as credenciais de cadastro com nome e email   ${NOME_EM_BRANCO}    ${EMAIL_EM_BRANCO}
    E clico no botão "Signup"
    Então não devo ser redirecionado para o formulário completo "ENTER ACCOUNT INFORMATION"