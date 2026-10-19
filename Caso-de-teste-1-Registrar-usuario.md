# 📋 Caso de Teste: Registrar usuário

## 👤 História de Usuário
* **Como** um novo visitante do site Automation Exercise,
* **Quero** poder criar uma conta de usuário com meus dados pessoais,
* **Para que** eu possa acessar funcionalidades exclusivas, fazer compras e receber ofertas personalizadas.

---

## 📝 Descrição Detalhada
Esta funcionalidade permite que novos usuários se cadastrem no sistema através de um fluxo completo de registro. O usuário fornece informações básicas (nome e email), preenche dados da conta (senha, data de nascimento) e informações adicionais (endereço, telefone). O sistema deve validar as informações, criar a conta e confirmar o sucesso do cadastro.

### 🎯 Objetivo de Negócio
Aumentar a base de usuários registrados e coletar informações relevantes para marketing e personalização da experiência de compra.

### 🔧 Requisitos Técnicos
* Validação de email único no sistema
* Criptografia de senha
* Campos obrigatórios e opcionais claramente identificados
* Suporte a múltiplos países no cadastro de endereço
* Sistema de opt-in para newsletter e ofertas

---

## ✅ Critérios de Aceite

* **Critério 1: Acesso à Página de Cadastro**  
  * **Dado** que estou na página inicial do site,  
  * **Quando** clico no botão "Signup / Login",  
  * **Então** devo ser redirecionado para a página de cadastro/login e visualizar o formulário "New User Signup!".

* **Critério 2: Validação Inicial (Nome e Email)**  
  * **Dado** que estou no formulário "New User Signup!",  
  * **Quando** preencho um nome válido e um email válido que não existe no sistema,  
  * **Então** devo avançar para o formulário completo "ENTER ACCOUNT INFORMATION".

* **Critério 3: Preenchimento de Dados da Conta**  
  * **Dado** que estou no formulário "ENTER ACCOUNT INFORMATION",  
  * **Quando** preencho todos os campos obrigatórios (título, senha, data de nascimento), 
  * **Então** devo poder selecionar opções de newsletter e ofertas especiais.

* **Critério 4: Preenchimento de Dados de Endereço**  
  * **Dado** que preenchi os dados da conta, 
  * **Quando** preencho informações de endereço completo (nome, sobrenome, empresa, endereço, país, estado, cidade, CEP, telefone), 
  * **Então** devo poder finalizar o cadastro clicando em "Create Account".

* **Critério 5: Confirmação de Cadastro**  
  * **Dado** que submeti o formulário completo de cadastro,  
  * **Quando** o sistema processa as informações com sucesso,
  * **Então** devo visualizar a mensagem "ACCOUNT CREATED!" e poder continuar.

* **Critério 6: Login Automático**  
  * **Dado** que minha conta foi criada com sucesso, 
  * **Quando** clico em "Continue",  
  * **Então** devo estar automaticamente logado e visualizar "Logged in as [nome do usuário]".

* **Critério 7: Exclusão de Conta (Opcional para Teste)**  
  * **Dado** que estou logado no sistema, 
  * **Quando** clico em "Delete Account", 
  * **Então** minha conta deve ser removida e devo visualizar "ACCOUNT DELETED!".

---

## 🧪 Roteiro de Teste

### Pré-condições
* Navegador web compatível instalado (Chrome, Firefox, Safari, Edge)
* Conexão com internet ativa
* Email válido e não cadastrado no sistema

### Dados de Teste
* **Nome:** John Teste
* **Email:** `johnteste@gmail.com`
* **Senha:** `SenhaForte@123`
* **Data de Nascimento:** 10/10/1988
* **Empresa:** TesteCompany
* **Endereço:** Rua do teste 1504
* **País:** United States
* **Estado:** Florida
* **Cidade:** Miami
* **Zipcode:** 47562000
* **Telefone:** (54) 965580700

### Passos do Teste
1. Abrir o navegador web
2. Navegar para a URL [Automation Exercise](http://automationexercise.com)
3. Verificar que a página inicial está visível e carregada corretamente
4. Localizar e clicar no botão "Signup / Login" no menu superior
5. Verificar que o texto "New User Signup!" está visível na página
6. Preencher o campo "Name" com o nome de teste
7. Preencher o campo "Email Address" com o email de teste
8. Clicar no botão "Signup"
9. Verificar que o texto "ENTER ACCOUNT INFORMATION" está visível
10. Selecionar um título (Mr./Mrs.)
11. Verificar que o campo "Name" está preenchido automaticamente
12. Verificar que o campo "Email" está preenchido automaticamente
13. Preencher o campo "Password" com a senha de teste
14. Selecionar a data de nascimento (dia, mês e ano)
15. Marcar o checkbox "Sign up for our newsletter!"
16. Marcar o checkbox "Receive special offers from our partners!"
17. Preencher o campo "First name"
18. Preencher o campo "Last name"
19. Preencher o campo "Company"
20. Preencher o campo "Address" (linha 1)
21. Preencher o campo "Address2" (linha 2) - opcional
22. Selecionar o "Country" no dropdown
23. Preencher o campo "State"
24. Preencher o campo "City"
25. Preencher o campo "Zipcode"
26. Preencher o campo "Mobile Number"
27. Clicar no botão "Create Account"
28. Verificar que a mensagem "ACCOUNT CREATED!" está visível
29. Clicar no botão "Continue"
30. Verificar que a mensagem "Logged in as [nome do usuário]" está visível no topo da página
31. Clicar no botão "Delete Account"
32. Verificar que a mensagem "ACCOUNT DELETED!" está visível
33. Clicar no botão "Continue"

### Pós-condições
* Conta de teste criada e removida com sucesso
* Navegador pode ser fechado
* Sistema retorna ao estado inicial

---

## 🎯 Resultado Esperado

### Resultado Geral
* **✅ Sucesso:** O fluxo completo de cadastro de usuário deve ser executado sem erros, desde o acesso à página inicial até a confirmação de exclusão da conta.

### Resultados Específicos por Etapa
* **Etapa 1-3 (Acesso ao Site):** A página inicial do Automation Exercise carrega completamente; todos os elementos visuais estão visíveis; não há erros de carregamento.
* **Etapa 4-5 (Navegação para Cadastro):** O botão "Signup / Login" é encontrado e clicável; redirecionamento ocorre corretamente; o formulário "New User Signup!" é exibido.
* **Etapa 6-8 (Cadastro Inicial):** Os campos aceitam texto; o botão "Signup" fica habilitado; o sistema processa a solicitação sem erro de email duplicado.
* **Etapa 9-16 (Preenchimento de Dados da Conta):** O título "ENTER ACCOUNT INFORMATION" é exibido; nome e email vêm preenchidos; senha e data de nascimento são aceitas; checkboxes de newsletter e ofertas funcionam.
* **Etapa 17-26 (Preenchimento de Endereço):** Todos os campos de endereço aceitam texto; o dropdown de país exibe as opções; campos numéricos aceitam formatação; endereço 2 é opcional.
* **Etapa 27-28 (Criação da Conta):** O botão "Create Account" funciona; a mensagem "ACCOUNT CREATED!" aparece de forma destacada; o botão "Continue" fica disponível.
* **Etapa 29-30 (Login Automático):** O usuário é redirecionado para a home; o sistema faz login automático; aparece "Logged in as [nome do usuário]"; a opção de apagar conta fica disponível.
* **Etapa 31-33 (Exclusão da Conta):** O botão "Delete Account" funciona; exibe "ACCOUNT DELETED!"; o sistema retorna ao estado de deslogado e remove permanentemente os dados.

### Critérios de Sucesso Global
* Nenhuma mensagem de erro é exibida durante todo o fluxo
* Todos os redirecionamentos funcionam corretamente
* Todas as validações de dados funcionam adequadamente
* O usuário consegue completar o cadastro em menos de 5 minutos
* A interface está responsiva e carrega em tempo aceitável (< 3 segundos por página)
* Dados são persistidos corretamente no banco de dados
* A exclusão da conta remove todos os dados do sistema

### Casos de Falha ❌
O teste falha se:
* Qualquer página não carregar corretamente
* Mensagens de validação esperadas não aparecerem
* Elementos da interface não estiverem visíveis ou funcionais
* A conta não for criada após submissão do formulário
* O login automático não funcionar
* A exclusão da conta falhar ou não remover os dados
* Ocorrer qualquer erro de sistema (500, 404, timeout, etc.)
