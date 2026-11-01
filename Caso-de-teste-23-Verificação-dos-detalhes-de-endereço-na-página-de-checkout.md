# 📋 Caso de Teste: Verificar detalhes de endereço na página de checkout

## 👤 História de Usuário
* **Como** um visitante no site Automation Exercise,
* **Quero** realizar meu cadastro e prosseguir para o checkout com produtos no carrinho 
* **Para que** eu possa verificar se os meus dados de endereço e cobrança preenchidos no cadastro são carregados automaticamente e corretamente na página de finalização do pedido.

---

## 📝 Descrição Detalhada
Esta funcionalidade valida a persistência e o mapeamento dos dados cadastrais do usuário. Permite que um novo visitante crie a sua conta e, ao realizar uma compra, garanta que as informações de endereço de entrega e cobrança informadas no registro sejam repassadas de forma idêntica e automática para a tela de checkout

### 🎯 Objetivo de Negócio
Garantir a integridade dos dados cadastrais do usuário ao longo do fluxo de compra, proporcionando uma experiência fluida onde o cliente não precisa redigitar suas informações de endereço e cobrança no momento do checkout.

### 🔧 Requisitos Técnicos

* Persistência e recuperação dos dados de perfil do usuário logado no banco de dados
* Associação correta do endereço cadastrado às tabelas de envio (Shipping Address) e cobrança (Billing Address) na etapa de checkout (/checkout)
* Renderização dinâmica dos dados nos campos correspondentes da página de finalização de pedido


---

## ✅ Critérios de Aceite

* **Critério 1: Acesso à Página de Login**  
  * **Dado** que estou na página inicial do site,  
  * **Quando** clico no botão "Signup / Login",  
  * **Então** devo ser redirecionado para a página de cadastro/login e visualizar "New User Signup".

* **Critério 2: Cadastro e Login automático**  
  * **Dado** que estou na página de cadastro/login,  
  * **Quando** preencho os campos no formulário de cadastro, clico no botão "Sign Up" e depois no botão "Continue",  
  * **Então** devo ser autenticado automáticamente pelo sistema e visualizar meu nome no topo da página.

* **Critério 3: Redirecionamento para checkout e Verificação de Endereço**  
  * **Dado** que estou autenticado no sistema com produtos no carrinho,  
  * **Quando** clico em "Proceed To Checkout", 
  * **Então** devo ser redirecionado para a página de checkout e visualizar os dados de endereço de entrega e cobrança idênticos aos preenchidos no momento do cadastro.

---

## 🧪 Roteiro de Teste

### Pré-condições
* Navegador web compatível instalado (Chrome, Firefox, Safari, Edge)
* Conexão com internet ativa
* Email novo/válido para o cadastro

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
5. Preencha todos os campos em "Signup" e crie a conta
6. Verificar "ACCOUNT CREATED" e clicar no botão "Continue"
7. Verificar "Logged in as 'nome da conta'" no top da página
8. Adicionar produtos ao carrinho
9. Clicar no botão "Cart"
10. Verificar que a página do carrinho está visível e carregada corretamente
11. Clicar em "Proceed To Checkout"
12. Verificar se os detalhes de endereço são os mesmos dados preenchidos da hora da criação da conta
13. Verificar se os detalhes do endereço de cobrança são os mesmos dados preenchidos da hora da criação da conta
14. Digitar detalhes de pagamento: (Nome no cartão, número do cartão, CVC, data de vencimento)

### Pós-condições
* Navegador pode ser fechado

---

## 🎯 Resultado Esperado

### Resultado Geral
* **✅ Sucesso:**  O fluxo completo de cadastro, adição de produtos ao carrinho, acesso ao checkout e conferência dos dados de endereço e cobrança (validando que correspondem perfeitamente aos informados no registro) ocorre sem erros.

### Resultados Específicos por Etapa
* **Etapa 1-3 (Acesso ao Site):** A página inicial do Automation Exercise carrega completamente; todos os elementos visuais estão visíveis; não há erros de carregamento.
* **Etapa 4-7 (Cadastro):** O botão "Signup / Login" é encontrado e clicável; o preenchimento do formulário ocorre com sucesso; o login automático funciona através do botão "Continue" e exibe "Logged in as 'nome da conta'" no topo.
* **Etapa 8-10 (Carrinho):** Os produtos são adicionados e a página do carrinho é exibida corretamente.
* **Etapa 11-14 (Verificação de Endereço):** O botão "Proceed To Checkout" redireciona corretamente para a página de checkout, onde os blocos de detalhes do endereço de entrega e de cobrança refletem fielmente os dados informados no cadastro.

### Critérios de Sucesso Global
* Nenhuma mensagem de erro é exibida durante todo o fluxo
* Todos os redirecionamentos funcionam corretamente
* Todas as validações de dados funcionam adequadamente
* Os dados de endereço do cadastro são persistidos e recuperados corretamente no checkout

### Casos de Falha ❌
O teste falha se:
* Qualquer página não carregar corretamente
* Elementos da interface não estiverem visíveis ou funcionais
* O cadastro falhar ou a mensagem de sucesso do cadastro não for visualizada
* Os produtos não forem adicionados ao carrinho
* Os dados de endereço e/ou cobrança exibidos no checkout estiverem divergentes dos dados submetidos na hora do cadastro
* Ocorrer qualquer erro de sistema (500, 404, timeout, etc.)
