# 📋 Caso de Teste: Login do usuário com email e senha incorretos

---

## 👤 História de Usuário
* **Como** um usuário já cadastrado no Automation Exercise,
* **Quero** que o sistema valide minhas credenciais de acesso,
* **Para que** o acesso seja negado caso insira dados incorretos ou deixe campos em branco, garantindo a segurança da conta.

---

## 📝 Descrição Detalhada
Esta funcionalidade valida o comportamento do sistema quando um usuário tenta fazer login utilizando dados incorretos ou incompletos (como e-mail inválido, senha incorreta ou campos em branco). O sistema deve impedir o login e exibir mensagens de erro apropriadas.

### 🎯 Objetivo de Negócio
Garantir a segurança da aplicação, impedindo acessos não autorizados e fornecendo feedback claro ao usuário quando houver erros de preenchimento.

### 🔧 Requisitos Técnicos
* Validação de formato e existencia do email no banco de dados
* Validação de campos obrigatórios não preenchidos
* Exibição de mensagens de erro padronizadas

---

## ✅ Critérios de Aceite

* **Critério 1: Acesso à Página de Login**  
  * **Dado** que estou na página inicial do site,  
  * **Quando** clico no botão "Signup / Login",  
  * **Então** devo ser redirecionado para a página de cadastro/login e visualizar o formulário "Login to your account".

* **Critério 2: Erro com Credenciais Incorretas**  
  * **Dado** que estou no formulário "Login to your account!",  
  * **Quando** preencho um email valido e uma senha invalidos/incorretos e clico em Login,  
  * **Então** devo visualizar a mensagem de erro *"Your email or password is incorrect!"*..

* **Critério 3: Validação de Campos em Branco**  
  * **Dado** que estou no formulário "Login to your account!",  
  * **Quando** tento enviar o formulário com ambos os campos (e-mail e senha) em branco e com apenas um dos campos em branco, 
  * **Então** o sistema deve impedir e solicitar o preenchimento dos campos obrigatórios.

---

## 🧪 Roteiro de Teste

### Pré-condições
* Navegador web compatível instalado (Chrome, Firefox, Safari, Edge)
* Conexão com internet ativa

### Dados de Teste
* **Email Invalido:** `Erroteste@gmail.com`
* **Senha:** `SenhaErrada@123`
* **Campos em Branco:** Deixar os campos vazios

### Passos do Teste 1 : Login com E-mail e Senha Incorretos
1. Abrir o navegador web
2. Navegar para a URL(http://automationexercise.com)
3. Verificar que a página inicial está visível e carregada corretamente
4. Localizar e clicar no botão "Signup / Login" no menu superior
5. Verificar se "Login to your account" está visível na página
6. Digitar um e-mail incorreto e uma senha incorreta nos respectivos campos
7. Clicar no botão "Login"
8. Verificar se a mensagem de erro *"Your email or password is incorrect!"* está visível

### Passos do Teste 2 : Login com Campos em Branco
1. Acessar a página de login seguindo os passos 1 a 5 acima.
2. Manter os campos de e-mail e senha completamente em branco(fazer o mesmo com apenas um dos campos em branco).
3. Clicar no botão "Login".
4. Verificar se o sistema impede o avanço e exibe um alerta de campo obrigatório.

### Pós-condições
* Conta de teste logada e removida com sucesso
* Navegador pode ser fechado
* Sistema retorna ao estado inicial

---

## 🎯 Resultado Esperado

### Resultado Geral
* **✅ Sucesso:** O sistema trata adequadamente todas as tentativas de login invalidas, impedindo o acesso e exibindo as mensagens de erro correspondentes.

### Resultados Específicos por Etapa
*  A página inicial do Automation Exercise carrega completamente; todos os elementos visuais estão visíveis; não há erros de carregamento.
*  é encontrado e clicável; redirecionamento ocorre corretamente; o formulário "Login to your account" é exibido.
*  Os campos aceitam a digitação dos dados incorretos.
*  Ao submeter, o sistema processa a verificação e identifica que as credenciais não conferem.
*  O usuário **não** é redirecionado para a página logada e o menu continua mostrando a opção de login.

### Critérios de Sucesso Global
* [x] Nenhuma mensagem de erro de sistema (crash, tela branca, erro 500) é exibida ao submeter dados incorretos.
* [x] Todos os redirecionamentos funcionam corretamente
* [x] Todas as validações de dados funcionam adequadamente
* [x] A interface está responsiva e carrega em tempo aceitável (< 3 segundos por página)

### Casos de Falha ❌
O teste falha se:
* O sistema permitir o login com dados incorretos ou em branco.
* A mensagem de erro esperada não for exibida.
* Ocorrer erro de sistema (crash, 500, etc.) em vez de tratar a validação.
