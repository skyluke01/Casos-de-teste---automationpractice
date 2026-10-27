# 📋 Caso de Teste: Verificar quantidade do produto no carrinho

---

## 👤 História de Usuário
* **Como** um visitante do site Automation Exercise,
* **Quero** clicar em qualquer produto na página inicial,
* **Para que** eu possa alterar a quantidade desejada e adicioná-lo ao carrinho com a quantidade correta.

---

## 📝 Descrição Detalhada
Esta funcionalidade permite que o usuário visualize os detalhes de um produto escolhido na página inicial, altere o campo de quantidade desejada antes da compra e valide se o carrinho reflete exatamente essa quantidade selecionada.

### 🎯 Objetivo de Negócio
Garantir que o sistema processe corretamente a quantidade personalizada informada pelo cliente na página de detalhes, refletindo-a de forma exata no carrinho de compras.

### 🔧 Requisitos Técnicos
* Funcionalidade de incremento/decremento no campo de input de quantidade (quantity input) na página de detalhes do produto (/product_details)
* Atualização e persistência da quantidade selecionada ao submeter o produto para o carrinho
* Redirecionamento correto entre a página de detalhes e a visualização do carrinho (/view_cart)

---

## ✅ Critérios de Aceite

* **Critério 1: Navegação para página de detalhes do produto**  
  * **Dado** que estou na página inicial do site, 
  * **Quando** clico em "View Product" em qualquer produto,
  * **Então** devo ser redirecionado para página dos detalhes do produto e ver sua foto, preço, disponibilidade, condição, marca e campo de quantidade.

* **Critério 2: Mudando a quantidade do produto e adicionando ao carrinho**  
  * **Dado** que estou na página de detalhes do produto, 
  * **Quando** mudo a quantidade do produto e clico em "Add to cart" ,
  * **Então** devo receber a confirmação de que o produto foi adicionado e poder clicar em "View Cart" para ir ao carrinho

* **Critério 3: Verificação da quantidade do item no carrinho**  
  * **Dado** que estou na página do carrinho, 
  * **Quando** Verifico a quantidade do item adicionado,
  * **Então** devo ver se essa quantidade corresponde exatamente ao valor definido anteriormente na página de detalhes.
    
---

## 🧪 Roteiro de Teste

### Pré-condições
* Navegador web compatível instalado (Chrome, Firefox, Safari, Edge)
* Conexão com internet ativa
* Produtos visíveis e disponíveis na página inicial do site

### Dados de Teste
* Quantidade Definida: 4

### Passos do Teste
1. Abrir o navegador web
2. Navegar para a URL (https://www.automationexercise.com)
3. Verificar se a página home está visível e carregada corretamente
4. Clicar no botão "View Product" em qualquer produto da página inicial
5. Verificar se a página de detalhes do produto está visível e carregada corretamente
6. Aumentar a quantidade do produto para 4
7. Clicar no botão "Add to cart"
8. Clicar no botão "View Cart"
9. Verificar se o produto no carrinho está mostrando exatamente a quantidade definida (4)

### Pós-condições
* Navegador pode ser fechado

---

## 🎯 Resultado Esperado

### Resultado Geral
* **✅ Sucesso:** O fluxo é executado perfeitamente desde o acesso à home, abertura dos detalhes do produto, alteração da quantidade desejada, adição ao carrinho e conferência de que a quantidade foi computada corretamente.

### Resultados Específicos por Etapa
* **Etapa 1-3 (Acesso ao Site):** A página inicial do Automation Exercise carrega completamente; todos os elementos visuais estão visíveis; não há erros de carregamento.
* **Etapa 4-5 (Detalhes do Produto):** O clique em "View Product" redireciona com sucesso para a página de detalhes do item selecionado.
* **Etapa 6-8 (Alteração e Adição):** O campo de quantidade aceita o valor estipulado (4), e o botão "Add to cart" junto com o "View Cart" funcionam sem falhas.
* **Etapa 9 (Verificação no carrinho)** O carrinho exibe o produto escolhido refletindo exatamente a quantidade configurada (4).

### Critérios de Sucesso Global
* Todos os redirecionamentos funcionam corretamente
* O produto é adicionado ao carrinho com a quantidade personalizada informada pelo usuário

### Casos de Falha ❌
O teste falha se:
* Qualquer página não carregar corretamente
* O campo de quantidade não permitir a alteração do valor
* O produto não for adicionado ao carrinho
* A quantidade exibida no carrinho for divergente do valor que foi configurado (ex: manter quantidade 1 por padrão)
* Ocorrer qualquer erro de sistema (500, 404, timeout, etc.)
