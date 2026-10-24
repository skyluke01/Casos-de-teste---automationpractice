# 📋 Caso de Teste: Login do usuário com email e senha corretos

---

## 👤 História de Usuário
* **Como** um usuário autenticado no Automation Exercise,
* **Quero** poder encerrar (fazer logout) a minha sessão atual,
* **Para que** outras pessoas não possam acessar a minha conta ou realizar ações em meu nome em dispositivos compartilhados.

---

## 📝 Descrição Detalhada
Esta funcionalidade permite que um usuário que já esteja logado no sistema encerre a sua sessão de forma segura. Ao acionar a opção de logout, o sistema deve destruir o token/sessão ativa, limpar os dados de autenticação e redirecionar o usuário de volta para a tela de login.

### 🎯 Objetivo de Negócio
Garantir a segurança e a privacidade do usuário, assegurando que o acesso à conta seja finalizado corretamente após o uso da aplicação.

### 🔧 Requisitos Técnicos
* Invalidação de sessão/token no servidor
* Limpeza de dados de autenticação no cliente (cookies, localStorage ou sessionStorage)
* Bloqueio de acesso a páginas protegidas após o encerramento da sessão

---

## ✅ Critérios de Aceite

* **Critério 1: Acesso à Página de Login**  
  * **Dado** que estou na página inicial do site,  
  * **Quando** clico no botão "Signup / Login",  
  * **Então** devo ser redirecionado para a página de cadastro/login e visualizar o formulário "Login to your account".

* **Critério 2: Validação de Login (Email e Senha)**  
  * **Dado** que estou no formulário "Login to your account!",  
  * **Quando** preencho um email valido e sua senha,  
  * **Então** devo avançar para a página inicial e visualizar o "Logged in as [nome do usuário]".

* **Critério 3: Logout da Conta **  
  * **Dado** que estou logado no sistema,  
  * **Quando** clico em "Logout", 
  * **Então** devo ser desconectado da minha conta e ser redirecionado a tela de login.

---

## 🧪 Roteiro de Teste

### Pré-condições
* Navegador web compatível instalado (Chrome, Firefox, Safari, Edge)
* Conexão com internet ativa
* Conta registrada com email e senha validos

### Dados de Teste
* **Email:** `johnteste@gmail.com`
* **Senha:** `SenhaForte@123`

### Passos do Teste
1. Abrir o navegador web
2. Navegar para a URL [Automation Exercise](https://www.automationexercise.com)
3. Verificar se a página home está visível e carregada corretamente
4. Localizar e clicar no botão "Signup / Login" no menu superior
5. Verificar se "Login to your account" está visível na página
6. Digite o email e senha corretos
7. Aperte o botão "Login"
8. Verificar se está aparecendo "Logged in as (nome do usuario)"
9. Clicar no botão "Logout" no menu superior
10. Verificar se foi redirecionado para a tela de login

### Pós-condições
* Conta de teste deslogada
* Navegador pode ser fechado
* Sistema retorna a pagina de login

---

## 🎯 Resultado Esperado

### Resultado Geral
* **✅ Sucesso:** O fluxo completo de logout de usuário deve ser executado sem erros, desde o acesso à página inicial até o logout e ser redirecionado a página de login.

### Resultados Específicos por Etapa
* **Etapa 1-3 (Acesso ao Site):** A página inicial do Automation Exercise carrega completamente; todos os elementos visuais estão visíveis; não há erros de carregamento.
* **Etapa 4-5 (Navegação para Login):** O botão "Signup / Login" é encontrado e clicável; redirecionamento ocorre corretamente; o formulário "Login to your account" é exibido.
* **Etapa 6-8 (Login):** Os campos aceitam texto; o botão "Login" fica habilitado; o sistema processa a solicitação sem erros de credenciais.
* **Etapa 9-10 (Conta Logada):** O sistema realiza o login; aparece "Logged in as [nome do usuário]"; a opção "Delete Account" fica disponível.
* **Etapa 11-13 (Logout da Conta):** O botão "Logout" funciona; o sistema retorna ao estado de deslogado redirecionando a página de login.

### Critérios de Sucesso Global
* [x] Nenhuma mensagem de erro é exibida durante todo o fluxo
* [x] Todos os redirecionamentos funcionam corretamente
* [x] Todas as validações de dados funcionam adequadamente
* [x] O usuário consegue fazer login em menos de 2 minutos
* [x] A interface está responsiva e carrega em tempo aceitável (< 3 segundos por página)
* [x] Dados são persistidos corretamente no banco de dados
* [x] O Logout da conta retorna o estado de deslogado e redireciona a pagina de login

### Casos de Falha ❌
O teste falha se:
* Qualquer página não carregar corretamente
* Mensagens de validação esperadas não aparecem
* Elementos da interface não estiverem visíveis ou funcionais
* A conta não for logada após a submissão dos dados
* O Logout da conta falhar e não redirecionar para a pagina de login
* Ocorrer qualquer erro de sistema (500, 404, timeout, etc.)
