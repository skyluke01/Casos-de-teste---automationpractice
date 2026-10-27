# 📋 Caso de Teste: Fazer pedido: Cadastro antes da compra

## 👤 História de Usuário
* **Como** um novo visitante do site Automation Exercise,
* **Quero** criar uma conta com meus dados pessoais antes de iniciar a compra,
* **Para que** eu possa realizar a navegação, adicionar produtos ao carrinho e finalizar pedido já autenticado no sistema.

---

## 📝 Descrição Detalhada
Esta funcionalidade permite que novos usuários se cadastrem no sistema previamente através de um fluxo completo de registro. Com a conta criada e o usuário logado, ele pode adicionar produtos ao carrinho, prosseguir para o checkout, revisar os dados, inserir as informações de pagamento e concluir a compra com sucesso.

### 🎯 Objetivo de Negócio
Garantir o fluxo de ponta a ponta onde o usuário realiza o cadastro inicial antecipado, executa a compra de produtos e finaliza o pedido de forma integrada.

### 🔧 Requisitos Técnicos
* Validação de cadastro e sessão de usuário ativa
* Gestão de carrinho e transação de pagamento no checkout

---

## ✅ Critérios de Aceite

* **Critério 1: Acesso à Página de Cadastro**  
  * **Dado** que estou na página inicial do site,  
  * **Quando** clico no botão "Signup / Login",  
  * **Então** devo ser redirecionado para a página de cadastro/login e visualizar o formulário "New User Signup!".

* **Critério 2: Cadastro e Autenticação**  
  * **Dado** que estou na página de cadastro/login,  
  * **Quando** preencho o formulário de cadastro e crio a conta,  
  * **Então** devo visualizar a mensagem "ACCOUNT CREATED!", fazer o login e ver meu nome no topo da página.

* **Critério 3: Conclusão do Pedido no Checkout**  
  * **Dado** que estou logado e tenho produtos no carrinho,  
  * **Quando** avanço para o checkout, reviso o pedido, insiro o pagamento e confirmo, 
  * **Então** o sistema deve exibir a mensagem de sucesso "Your order has been placed successfully!".

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
* Comentários do Pedido: Entrega rápida, por favor.
* Dados do Cartão: Nome: John T. / Número: 4242 4242 4242 4242 / CVC: 123 / Exp: 12/28

### Passos do Teste
1. Abrir o navegador web
2. Navegar para a URL [Automation Exercise](http://automationexercise.com)
3. Verificar que a página inicial está visível e carregada corretamente
4. Localizar e clicar no botão "Signup / Login" no menu superior
5. Preencha todos os campos em "Sign Up" e crie a conta
6. Verificar mensagem "ACCOUNT CREATED" e clicar no botão "Continue"
7. Verificar "Logged in as 'nome da conta'" no top da página
8. Adicionar produtos ao carrinho
9. Clicar no botão "Cart"
10. Verificar que a página do carrinho está visível e carregada corretamente
11. Clicar em "Proceed To Checkout"
12. Verificar detalhes de endereço e revisar seu pedido
13. Digitar a descrição na área de texto para comentários e clicar em "Place Order"
14. Digitar detalhes de pagamento: (Nome no cartão, número do cartão, CVC, data de vencimento)
15. Clicar no botão "Pay and Confirm Order"
16. Verificar mensagem de sucesso "Your order has been placed successfully!"

### Pós-condições
* Navegador pode ser fechado
* Pedido registrado no sistema

---

## 🎯 Resultado Esperado

### Resultado Geral
* **✅ Sucesso:**  O fluxo completo com cadastro prévio e compra é executado perfeitamente, desde a criação da conta até a confirmação do pagamento do pedido.

### Resultados Específicos por Etapa
* **Etapa 1-3 (Acesso ao Site):** A página inicial do Automation Exercise carrega completamente; todos os elementos visuais estão visíveis; não há erros de carregamento.
* **Etapa 4-5 (Navegação para Cadastro):** O botão "Signup / Login" é encontrado e clicável; redirecionamento ocorre corretamente; o formulário "New User Signup!" é exibido.
* **Etapa 6-13 (Cadastro e Login):** A conta é criada, o botão continue funciona e o usuário fica logado.
* **Etapa 14-16 (Carrinho):** Os produtos são adicionados e a página do carrinho é exibida corretamente.
* **Etapa 17-21 (Checkout e pagamento):** O checkout processa o endereço, aceita os comentários, valida o cartão e submete o pagamento.
* **Etapa 22 (Confirmação):** A mensagem "Your order has been placed successfully!" é exibida na tela.

### Critérios de Sucesso Global
* Nenhuma mensagem de erro é exibida durante todo o fluxo
* Todos os redirecionamentos funcionam corretamente
* Todas as validações de dados funcionam adequadamente
* O usuário consegue completar o cadastro em menos de 5 minutos
* A interface está responsiva e carrega em tempo aceitável (< 3 segundos por página)
* Dados são persistidos corretamente no banco de dados
* A transação de pagamento é concluída com a mensagem de sucesso

### Casos de Falha ❌
O teste falha se:
* Qualquer página não carregar corretamente
* Mensagens de validação esperadas não aparecerem
* Elementos da interface não estiverem visíveis ou funcionais
* O cadastro falhar ou o usuário não ficar logado
* Os produtos não forem adicionados ao carrinho
* Ocorrer erro na validação dos dados de pagamento
* A mensagem de sucesso do pedido não for exibida
* Ocorrer qualquer erro de sistema (500, 404, timeout, etc.)
