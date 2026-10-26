# 📋 Caso de Teste: Adicionar item ao carrinho

---

## 👤 História de Usuário
* **Como** um visitante do site Automation Exercise,
* **Quero** adicionar itens ao carrinho,
* **Para que** possa verificar seus preços, a quantidade e o preço total dos itens adicionados.

---

## 📝 Descrição Detalhada
Esta funcionalidade permite que qualquer usuário consiga navegar pelo catálogo de produtos, adicionar itens selecionados ao carrinho de compras e verificar seus respectivos preços, quantidades e o valor total.

### 🎯 Objetivo de Negócio
Garantir o correto funcionamento do fluxo de compras e do carrinho, permitindo que os clientes acumulem produtos e visualizem claramente os valores antes de prosseguirem para o checkout.

### 🔧 Requisitos Técnicos
* Funcionalidade de (hover/mouse over) sobre os produtos para exibição do botão "Add to cart"
* Gestão de estado do carrinho de compras (armazenamento de múltiplos itens, cálculo de quantidade e preço total)
* Redirecionamento correto entre a página de catálogo e a página do carrinho (/view_cart)

---

## ✅ Critérios de Aceite

* **Critério 1: Navegação para pagina de produts**  
  * **Dado** que estou na página inicial do site, 
  * **Quando** clico no botão "Products",
  * **Então** devo ser redirecionado para página dos produtos e ver o texto "ALL PRODUCTS".

* **Critério 2: Adição de itens e redirecionamento para o carrinho**  
  * **Dado** que estou na página de produtos, 
  * **Quando** adiciono os produtos e clico em "View Cart",
  * **Então** devo ser redirecionado para a página do carrinho.

* **Critério 3: Verificação de itens no carrinho**  
  * **Dado** que estou na página do carrinho, 
  * **Quando** Verifico os itens no carrinho ,
  * **Então** devo conseguir visualizar seus respectivos preços, quantidade e valor total.
    
---

## 🧪 Roteiro de Teste

### Pré-condições
* Navegador web compatível instalado (Chrome, Firefox, Safari, Edge)
* Conexão com internet ativa
* Itens previamente cadastrados no banco de dados(ex: Tshirt, Top)


### Passos do Teste
1. Abrir o navegador web
2. Navegar para a URL (https://www.automationexercise.com)
3. Verificar se a página home está visível e carregada corretamente
4. Identificar e clicar no botão "Products"
5. Verificar se a página de produtos está visível e carregada corretamente
6. Passar o cursor sobre o primeiro produto e clicar "Add to cart"
7. Clicar no botão "Continue Shopping"
8. Passar o cursor sobre o segundo produto e clicar "Add to cart"
9. Clicar em "View Cart"
10. Verificar se ambos os produtos foram adicionados ao carrinho
11. Verificar seus respectivos preços, quantidade e valor total 

### Pós-condições
* Navegador pode ser fechado

---

## 🎯 Resultado Esperado

### Resultado Geral
* **✅ Sucesso:** O fluxo é executado perfeitamente desde o acesso à página inicial, navegação para a listagem de produtos, adição bem-sucedida de múltiplos itens ao carrinho e exibição correta dos dados de preços e quantidades.

### Resultados Específicos por Etapa
* **Etapa 1-3 (Acesso ao Site):** A página inicial do Automation Exercise carrega completamente; todos os elementos visuais estão visíveis; não há erros de carregamento.
* **Etapa 4-5 (Navegação para produtos):** O redirecionamento ocorre corretamente para a página correspondente; "ALL Products" está visível.
* **Etapa 6-8 (Adição de itens e pop-up):** O sistema permite adicionar o primeiro e o segundo item ao carrinho através do modal, mantendo a navegação ativa.
* **Etapa 9-11 (Verificação do carrinho)** O redirecionamento para o carrinho exibe ambos os itens adicionados, com suas respectivas quantidades, preços unitários/totais calculados corretamente..

### Critérios de Sucesso Global
* Todos os redirecionamentos funcionam corretamente
* Os itens selecionados são adicionados com precisão ao carrinho de compras
* Os cálculos de preço e quantidade são apresentados de forma clara ao usuário

### Casos de Falha ❌
O teste falha se:
* Qualquer página não carregar corretamente
* O botão "Products" não redireciona para a página correta
* Os itens não forem adicionados ao carrinho
* O botão "View Cart" não redirecionar para o carrinho
* Ocorrer qualquer erro de sistema (500, 404, timeout, etc.)
