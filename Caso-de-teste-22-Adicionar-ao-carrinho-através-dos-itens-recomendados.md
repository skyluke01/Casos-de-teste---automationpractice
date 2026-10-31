# 📋 Caso de Teste: Adicionar produtos ao carrinho através dos itens recomendados

## 👤 História de Usuário
* **Como** um usuário do site Automation Exercise,
* **Quero** adicionar ao carrinho itens recomendados,
* **Para que** eu possa encontrar produtos de meu interesse com facilidade e agilizar o meu processo de compra.

---

## 📝 Descrição Detalhada
Esta funcionalidade permite que qualquer usuário localize a seção de produtos recomendados (Recommended Items) no rodapé da página inicial, adicione um desses itens diretamente ao carrinho de compras e valide a sua presença na página de visualização do carrinho.
### 🎯 Objetivo de Negócio
Garantir o correto funcionamento da vitrine de itens recomendados, facilitando a descoberta de produtos complementares e incentivando a conversão de vendas diretamente da página inicial.

### 🔧 Requisitos Técnicos
* Funcionalidade de exibição dinâmica da seção Recommended Items no rodapé
* Ação do botão "Add to Cart" nos produtos do carrossel/seção de recomendação
* Modal de confirmação e redirecionamento correto para a página do carrinho (/view_cart)

---

## ✅ Critérios de Aceite

* **Critério 1: Visualização dos Itens Recomendados**  
  * **Dado** que estou na página inicial do site,  
  * **Quando** rolo a página até o rodapé,  
  * **Então** devo conseguir visualizar a seção e o título "RECOMMENDED ITEMS".

* **Critério 2: Adição de Item Recomendado ao Carrinho**  
  * **Dado** que estou visualizando os itens recomendados na página inicial,  
  * **Quando** clico no botão "Add to Cart" de um produto recomendado e seleciono "View Cart",  
  * **Então** devo ser redirecionado para a página do carrinho e visualizar o produto adicionado com sucesso.

---

## 🧪 Roteiro de Teste

### Pré-condições
* Navegador web compatível instalado (Chrome, Firefox, Safari, Edge)
* Conexão com internet ativa
* Produtos recomendados configurados e visíveis no rodapé da página inicial

### Passos do Teste
1. Abrir o navegador web
2. Navegar para a URL [Automation Exercise](http://automationexercise.com)
3. Verificar que a página inicial está visível e carregada corretamente
4. Descer até o final da página
5. Verificar se "RECOMMENDED ITEMS" está visível
6. Clicar em "Add to Cart" no produto recomendado
7. Clicar no botão "View Cart"
8. Verificar se aquele produto está visível no carrinho

### Pós-condições
* Navegador pode ser fechado
* Produto permanece adicionado no carrinho

---

## 🎯 Resultado Esperado

### Resultado Geral
* **✅ Sucesso:** O fluxo completo é executado sem erros, desde o acesso à página inicial, rolagem até o rodapé, localização dos itens recomendados, adição do produto ao carrinho e conferência de que ele aparece listado corretamente na tela do carrinho.

### Resultados Específicos por Etapa
* **Etapa 1-5 (Itens Recomendados):** A página inicial carrega corretamente, descida até o fim da página e verificação se "RECOMMENDED ITENS" está visível
* **Etapa 6-8 (Adição e Verificação):** Adicionar um dos produtos recomendados ao carrinho através do botão "Add to Cart", redirecionamento para a página do carrinho através do botão "View Cart", verificação se o produto adicionado está visível no carrinho

### Critérios de Sucesso Global
* Nenhuma mensagem de erro é exibida durante todo o fluxo
* Todos os redirecionamentos funcionam corretamente
* O item selecionado através das recomendações é adicionado com precisão ao carrinho

### Casos de Falha ❌
O teste falha se:
* Qualquer página não carregar corretamente
* A seção "RECOMMENDED ITEMS" não estiver visível no rodapé
* O botão "Add to Cart" do item recomendado não funcionar ou não exibir o modal de confirmação
* O produto não aparecer listado na página do carrinho após a adição
* Ocorrer qualquer erro de sistema (500, 404, timeout, etc.)
