# 📋 Caso de Teste: Fazer Pedido: Cadastro durante a finalização da compra

---

## 👤 História de Usuário
* **Como** um visitante do site Automation Exercise,
* **Quero** escolher meus produtos, prosseguir para o checkout, criar minha conta durante o processo, preencher o pedido e efetuar o pagamento,
* **Para que** eu possa concluir a compra com sucesso sem precisar me cadastrar previamente antes de escolher os produtos.

---

## 📝 Descrição Detalhada
Esta funcionalidade permite que o usuário navegue pelo site, escolha os produtos desejados e inicie o processo de compra (Checkout). Ao perceber que precisa estar logado, o sistema permite que ele crie a sua conta ali mesmo no fluxo, retornando em seguida para concluir a entrega, inserir os dados de pagamento e finalizar o pedido com sucesso.

### 🎯 Objetivo de Negócio
Garantir um fluxo de conversão fluido (guest to registered user checkout), permitindo que o cliente finalize sua compra de forma prática ao mesmo tempo em que realiza o seu cadastro na plataforma.

### 🔧 Requisitos Técnicos
* Persistência dos itens do carrinho durante o fluxo de redirecionamento para login/registro
* Gestão de formulários de cadastro, endereço, comentários e dados de cartão de crédito (Payment Gateway)
* Geração correta de ordem de compra e exibição da mensagem de sucesso (Your order has been placed successfully!)

---

## ✅ Critérios de Aceite

* **Critério 1: Início do Checkout e Necessidade de Registro**  
  * **Dado** que tenho produtos no carrinho", 
  * **Quando** clico em "Proceed To Checkout",
  * **Então** devo ver a opção de login/registro para concluir o pedido.

* **Critério 2: Criação de Conta e Retorno ao Carrinho**  
  * **Dado** que realizei o cadastro com sucesso e estou logado, 
  * **Quando** retorno ao carrinho e clico novamente em "Proceed To Checkout",
  * **Então** consigo visualizar os detalhes do endereço e revisar o pedido.

* **Critério 3: Conclusão do Pagamento e Pedido Realizado**  
  * **Dado** que preenchi os dados do pedido e de pagamento, 
  * **Quando** clico em "Pay and Confirm Order",
  * **Então** o sistema deve exibir a mensagem de sucesso "Your order has been placed successfully!".
    
---

## 🧪 Roteiro de Teste

### Pré-condições
* Navegador web compatível instalado (Chrome, Firefox, Safari, Edge)
* Conexão com internet ativa
* Pelo menos um produto adicionado ao carrinho de compras

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
2. Navegar para a URL (https://www.automationexercise.com)
3. Verificar se a página home está visível e carregada corretamente
4. Adicionar produtos ao carrinho
5. Clicar no botão "Cart"
6. Verificar se a página do carrinho está visível e carregada corretamente
7. Clicar em "Proceed To Checkout"
8. Clicar no botão "Register/Login"
9. Preencha todos os campos em "Sign Up" e crie a conta
10. Verificar mensagem "ACCOUNT CREATED" e clicar no botão "Continue"
11. Verificar "Logged in as 'nome da conta'" no top da página
12. Clicar no botão "Cart"
13. Clicar em "Proceed To Checkout"
14. Verificar detalhes do endereço e revisar o pedido
15. Digitar uma descrição na area de comentarios e clicar em "Place Order"
16. Digitar os detalhes de pagamento (Nome no cartão, número do cartão, CVC, data de vencimento)
17. Clicar no botão "Pay and Confirm Order"
18. Verificar mensagem de sucesso 'Your order has been placed successfully!'

### Pós-condições
* Navegador pode ser fechado
* Pedido registrado no sistema

---

## 🎯 Resultado Esperado

### Resultado Geral
* **✅ Sucesso:** O fluxo completo de compra com registro intermediário é executado perfeitamente, desde a escolha dos produtos, cadastro do usuário, revisão de endereço, inserção de dados de pagamento até a confirmação do pedido..

### Resultados Específicos por Etapa
* **Etapa 1-6 (Início e Carrinho):** A página carrega bem; o produto é adicionado; o carrinho exibe os itens corretamente.
* **Etapa 7-11 (Cadastro durante o Checkout):** O sistema redireciona para o login/registro; cria a conta com sucesso; faz o login automático; exibindo o nome do usuário no topo.
* **Etapa 12-15 (Revisão e Endereço):** Ao retornar ao checkout; os dados de entrega e os produtos aparecem corretos; permitindo adicionar observações e avançar para o pagamento.
* **Etapa 16-18 (Pagamento e Sucesso)** Os campos do cartão são aceitos, a ordem é processada e a mensagem 'Your order has been placed successfully!' é apresentada de forma clara.

### Critérios de Sucesso Global
* Os produtos do carrinho não são perdidos durante o fluxo de cadastro
* O redirecionamento entre as telas de carrinho, login e checkout funciona sem falhas
* A transação de pagamento é concluída com a mensagem de sucesso

### Casos de Falha ❌
O teste falha se:
* Qualquer página não carregar corretamente
* O carrinho for esvaziado após o cadastro do usuário
* O botão "Proceed To Checkout" não redirecionar corretamente
* Ocorrer erro na validação dos dados de pagamento
* A mensagem de sucesso do pedido não for exibida
* Ocorrer qualquer erro de sistema (500, 404, timeout, etc.)
