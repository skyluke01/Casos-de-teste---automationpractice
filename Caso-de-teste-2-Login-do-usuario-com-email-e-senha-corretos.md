# 📋 Caso de Teste: Login do usuário com email e senha corretos

---

## 👤 História de Usuário
* **Como** um usuário já cadastrado no Automation Exercise,
* **Quero** poder entrar na minha conta de usuário,
* **Para que** eu possa acessar funcionalidades exclusivas, fazer compras e receber ofertas personalizadas.

---

## 📝 Descrição Detalhada
Esta funcionalidade permite que usuários com contas cadastradas no sistema façam login. O usuário fornece email e senha. O sistema deve validar as informações, fazer login na conta e mostrar que o usuário está na sua conta.

### 🎯 Objetivo de Negócio
Fazer com que o usuário consiga facilmente entrar em sua conta e ter acesso a todas as funcionalidades do site.

### 🔧 Requisitos Técnicos
* Validação de email e senha
* Criptografia de senha

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

* **Critério 3: Exclusão de Conta (Opcional para Teste)**  
  * **Dado** que estou logado no sistema,  
  * **Quando** clico em "Delete Account", 
  * **Então** minha conta deve ser removida e devo visualizar "ACCOUNT DELETED!".

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
9. Clicar no botão "Delete Account" no menu superior
10. Verificar se a mensagem "Account Deleted" está visível

### Pós-condições
* Conta de teste logada e removida com sucesso
* Navegador pode ser fechado
* Sistema retorna ao estado inicial

---

## 🎯 Resultado Esperado

### Resultado Geral
* **✅ Sucesso:** O fluxo completo de login de usuário deve ser executado sem erros, desde o acesso à página inicial até a confirmação de exclusão da conta.

### Resultados Específicos por Etapa
* **Etapa 1-3 (Acesso ao Site):** A página inicial do Automation Exercise carrega completamente; todos os elementos visuais estão visíveis; não há erros de carregamento.
* **Etapa 4-5 (Navegação para Login):** O botão "Signup / Login" é encontrado e clicável; redirecionamento ocorre corretamente; o formulário "Login to your account" é exibido.
* **Etapa 6-8 (Login):** Os campos aceitam texto; o botão "Login" fica habilitado; o sistema processa a solicitação sem erros de credenciais.
* **Etapa 9-10 (Conta Logada):** O sistema realiza o login; aparece "Logged in as [nome do usuário]"; a opção "Delete Account" fica disponível.
* **Etapa 11-13 (Exclusão da Conta):** O botão "Delete Account" funciona; exibe "ACCOUNT DELETED!"; o sistema retorna ao estado de deslogado e remove os dados.

### Critérios de Sucesso Global
* [x] Nenhuma mensagem de erro é exibida durante todo o fluxo
* [x] Todos os redirecionamentos funcionam corretamente
* [x] Todas as validações de dados funcionam adequadamente
* [x] O usuário consegue fazer login em menos de 2 minutos
* [x] A interface está responsiva e carrega em tempo aceitável (< 3 segundos por página)
* [x] Dados são persistidos corretamente no banco de dados
* [x] A exclusão da conta remove todos os dados do sistema

### Casos de Falha ❌
O teste falha se:
* Qualquer página não carregar corretamente
* Mensagens de validação esperadas não aparecem
* Elementos da interface não estiverem visíveis ou funcionais
* A conta não for logada após a submissão dos dados
* A exclusão da conta falhar ou não remover os dados
* Ocorrer qualquer erro de sistema (500, 404, timeout, etc.)
