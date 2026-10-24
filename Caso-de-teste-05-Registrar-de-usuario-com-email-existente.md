# 📋 Caso de Teste: Registrar usuário com email já existente no sistema

## 👤 História de Usuário
* **Como** um novo visitante do site Automation Exercise,
* **Quero** tentar me cadastrar utilizando um email que já possui uma conta ativa no sistema,
* **Para que** o sistema impeça a duplicação de cadastros e me informe o erro adequadamente.

---

## 📝 Descrição Detalhada
Esta funcionalidade valida a restrição do sistema de não permitir duas contas cadastradas com o mesmo endereço de e-mail. Ao tentar se registrar com um e-mail já existente, o sistema deve bloquear o avanço e exibir uma mensagem de erro clara.

### 🎯 Objetivo de Negócio
Garantir a integridade dos dados na base de usuários e evitar contas duplicadas ou conflitos de autenticação.

### 🔧 Requisitos Técnicos
- Validação de unicidade de email no banco de dados do sistema.

---

## ✅ Critérios de Aceite

* **Critério 1: Acesso à Página de Cadastro**  
  * **Dado** que estou na página inicial do site,  
  * **Quando** clico no botão "Signup / Login",  
  * **Então** devo ser redirecionado para a página de cadastro/login e visualizar o formulário "New User Signup!".

* **Critério 2: Validação  (Email duplicado)**  
  * **Dado** que estou no formulário "New User Signup!",  
  * **Quando** preencho um nome válido e um email válido que existe no sistema e clico em "Signup",  
  * **Então** o sistema deve informar "Email Address already exist!".

---

## 🧪 Roteiro de Teste

### Pré-condições
* Navegador web compatível instalado (Chrome, Firefox, Safari, Edge)
* Conexão com internet ativa
* Email válido e já cadastrado previamente no sistema

### Dados de Teste
* **Nome:** John Teste
* **Email:** `johnteste@gmail.com`

### Passos do Teste
1. Abrir o navegador web
2. Navegar para a URL (http://automationexercise.com)
3. Verificar que a página inicial está visível e carregada corretamente
4. Localizar e clicar no botão "Signup / Login" no menu superior
5. Verificar que o texto "New User Signup!" está visível na página
6. Preencher o campo "Name" com o nome de teste
7. Preencher o campo "Email Address" com o email de teste já existente
8. Clicar no botão "Signup"
9. Erro de verificação "Email Address already exist!" está visível

### Pós-condições
* Navegador pode ser fechado
* Sistema permanece na mesma tela de cadastro (Sem avançar para o formulário de cadastro)

---

## 🎯 Resultado Esperado

### Resultado Geral
*  **✅ Sucesso:** O sistema identifica corretamente que o e-mail informado já está em uso, bloqueia a criação de uma nova conta duplicada e exibe a mensagem de erro esperada, sem quebrar a aplicação.

### Resultados Específicos por Etapa
* **Etapa 1-3 (Acesso ao Site):** A página inicial do Automation Exercise carrega completamente; todos os elementos visuais estão visíveis; não há erros de carregamento.
* **Etapa 4-5 (Navegação para Cadastro):** O botão "Signup / Login" é encontrado e clicável; redirecionamento ocorre corretamente; o formulário "New User Signup!" é exibido.
* **Etapa 6-8 (Submissão de Cadastro):** Os campos aceitam a digitação e o botão "Signup" processa a requisição com sucesso.
* **Etapa 9 (Validação do Erro):** A mensagem exata "Email Address already exist!" aparece destacada na interface, impedindo que o fluxo avance para a tela de preenchimento de dados da conta.


### Critérios de Sucesso Global
* A mensagem de erro é exibida de forma clara e legível
* O sistema não permite a criação de contas duplicadas
* A interface responde adequadamente ao envio de dados já existentes

### Casos de Falha ❌
O teste falha se:
* Qualquer página não carregar corretamente
* O sistema permitir avançar para o preenchimento de dados mesmo com um e-mail já existente
* Elementos da interface não estiverem visíveis ou funcionais
* Ocorrer qualquer erro de sistema (500, 404, timeout, etc.)
