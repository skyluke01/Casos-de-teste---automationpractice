# 📋 Caso de Teste: Fazer pedido: Login antes da compra

## 👤 História de Usuário
* **Como** um usuário cadastrado no site Automation Exercise,
* **Quero** fazer o login na minha conta antes de iniciar a compra,
* **Para que** eu possa realizar a navegação, adicionar produtos ao carrinho e finalizar pedido já autenticado no sistema.

---

## 📝 Descrição Detalhada
Esta funcionalidade permite que usuários já cadastrados no sistema previamente façam login em sua conta. Ao fazer login, ele pode adicionar produtos ao carrinho, prosseguir para o checkout, revisar os dados, inserir as informações de pagamento e concluir a compra com sucesso.

### 🎯 Objetivo de Negócio
Garantir o fluxo de ponta a ponta onde o usuário realiza o login, executa a compra de produtos e finaliza o pedido de forma integrada.

### 🔧 Requisitos Técnicos
* Validação de credenciais de acesso(email e senha) na tela de login (/login)
* Gestão de sessão de usuário autenticado
* Gestão de carrinho e transação de pagamento no checkout

---

## ✅ Critérios de Aceite

* **Critério 1: Acesso à Página de Login**  
  * **Dado** que estou na página inicial do site,  
  * **Quando** clico no botão "Signup / Login",  
  * **Então** devo ser redirecionado para a página de cadastro/login e visualizar "Login to your account".

* **Critério 2: Login**  
  * **Dado** que estou na página de cadastro/login,  
  * **Quando** preencho os campos email e password e entro na conta,  
  * **Então** devo visualizar meu nome no topo da página.

* **Critério 3: Conclusão do Pedido no Checkout**  
  * **Dado** que estou logado e tenho produtos no carrinho,  
  * **Quando** avanço para o checkout, reviso o pedido, insiro o pagamento e confirmo, 
  * **Então** o sistema deve exibir a mensagem de sucesso "Your order has been placed successfully!".

---

## 🧪 Roteiro de Teste

### Pré-condições
* Navegador web compatível instalado (Chrome, Firefox, Safari, Edge)
* Conexão com internet ativa
* Conta cadastrada no sistema

### Dados de Teste
* **Email:** `johnteste@gmail.com`
* **Senha:** `SenhaForte@123`
* Comentários do Pedido: Entrega rápida, por favor.
* Dados do Cartão: Nome: John T. / Número: 4242 4242 4242 4242 / CVC: 123 / Exp: 12/28

### Passos do Teste
1. Abrir o navegador web
2. Navegar para a URL [Automation Exercise](http://automationexercise.com)
3. Verificar que a página inicial está visível e carregada corretamente
4. Localizar e clicar no botão "Signup / Login" no menu superior
5. Preencha os campos email e password e clicar no botão "Login" 
6. Verificar "Logged in as 'nome da conta'" no top da página
7. Adicionar produtos ao carrinho
8. Clicar no botão "Cart"
9. Verificar que a página do carrinho está visível e carregada corretamente
10. Clicar em "Proceed To Checkout"
11. Verificar detalhes de endereço e revisar seu pedido
12. Digitar a descrição na área de texto para comentários e clicar em "Place Order"
13. Digitar detalhes de pagamento: (Nome no cartão, número do cartão, CVC, data de vencimento)
14. Clicar no botão "Pay and Confirm Order"
15. Verificar mensagem de sucesso "Your order has been placed successfully!"

### Pós-condições
* Navegador pode ser fechado
* Pedido registrado no sistema

---

## 🎯 Resultado Esperado

### Resultado Geral
* **✅ Sucesso:**  O fluxo completo com login prévio e compra é executado perfeitamente, desde login até a confirmação do pagamento do pedido.

### Resultados Específicos por Etapa
* **Etapa 1-3 (Acesso ao Site):** A página inicial do Automation Exercise carrega completamente; todos os elementos visuais estão visíveis; não há erros de carregamento.
* **Etapa 4-5 (Navegação para Cadastro):** O botão "Signup / Login" é encontrado e clicável; redirecionamento ocorre corretamente; "Login to your account" é exibido.
* **Etapa 6-10 (Login):** preencher email e senha e clicar em "Login"; visualizar "Logged in as 'nome da conta'.
* **Etapa 11-13 (Carrinho):** Os produtos são adicionados e a página do carrinho é exibida corretamente.
* **Etapa 14-18 (Checkout e pagamento):** O checkout processa o endereço, aceita os comentários, valida o cartão e submete o pagamento.
* **Etapa 19 (Confirmação):** A mensagem "Your order has been placed successfully!" é exibida na tela.

### Critérios de Sucesso Global
* Nenhuma mensagem de erro é exibida durante todo o fluxo
* Todos os redirecionamentos funcionam corretamente
* Todas as validações de dados funcionam adequadamente
* O usuário consegue efetuar o login
* A interface está responsiva e carrega em tempo aceitável (< 3 segundos por página)
* Dados são persistidos corretamente no banco de dados
* A transação de pagamento é concluída com a mensagem de sucesso

### Casos de Falha ❌
O teste falha se:
* Qualquer página não carregar corretamente
* Mensagens de validação esperadas não aparecerem
* Elementos da interface não estiverem visíveis ou funcionais
* O login falhar 
* Os produtos não forem adicionados ao carrinho
* Ocorrer erro na validação dos dados de pagamento
* A mensagem de sucesso do pedido não for exibida
* Ocorrer qualquer erro de sistema (500, 404, timeout, etc.)
