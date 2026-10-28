# 📋 Caso de Teste: Remover Produto do carrinho

---

## 👤 História de Usuário
* **Como** um visitante do site Automation Exercise,
* **Quero** Remover itens do carrinho,
* **Para que** possa retirar itens indesejados antes de finalizar uma compra.

---

## 📝 Descrição Detalhada
Esta funcionalidade permite que qualquer usuário consiga remover itens selecionados do carrinho de compras através do botão de exclusão dedicado, garantindo a atualização imediata da listagem.

### 🎯 Objetivo de Negócio
Garantir o correto funcionamento do fluxo de remoção de itens do carrinho, permitindo que os clientes possam gerenciar livremente os produtos indesejados antes de avançarem para o checkout.

### 🔧 Requisitos Técnicos
* Funcionalidade do botão de remoção (X button) interativo em cada linha do produto no carrinho (/view_cart)
* Atualização dinâmica da interface e do estado do carrinho após a exclusão do item
* Redirecionamento correto e persistência dos itens restantes na listagem

---

## ✅ Critérios de Aceite

* **Critério 1: Adição de item ao carrinho**  
  * **Dado** que estou na página inicial do site, 
  * **Quando** adiciono itens ao carrinho e clico em "Cart" no menu superior,
  * **Então** devo ser redirecionado para página do carrinho e ver os produtos adicionados.

* **Critério 2: remoção de item do carrinho**  
  * **Dado** que estou na página do carrinho, 
  * **Quando** clico no botão "X" ao lado do item que desejo remover,
  * **Então** o item deve ser removido instantaneamente da listagem do carrinho.

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
4. Adicionar produtos ao carrinho
5. Clicar no botão "Cart" no menu superior
6. Verificar se a pagina do carrinho está visível e carregada corretamente
7. Clicar no botão "X" correspondente a determinado produto
8. Verificar se aquele produto foi removido do carrinho 

### Pós-condições
* Navegador pode ser fechado
* Item removido da listagem do carrinho

---

## 🎯 Resultado Esperado

### Resultado Geral
* **✅ Sucesso:** O fluxo é executado perfeitamente desde o acesso à página inicial, adição de itens ao carrinho, visualização na tela de carrinho e remoção bem-sucedida do produto desejado

### Resultados Específicos por Etapa
* **Etapa 1-3 (Acesso ao Site):** A página inicial do Automation Exercise carrega completamente; todos os elementos visuais estão visíveis; não há erros de carregamento.
* **Etapa 4-6 (Adição de itens e Acesso ao carrinho):** O sistema permite adicionar itens e redireciona corretamente para a página do carrinho através do menu superior.
* **Etapa 7-8 (Remoção de item)** O clique no botão "X" remove o produto de forma imediata, atualizando a visualização do carrinho sem o item excluído.

### Critérios de Sucesso Global
* Todos os redirecionamentos funcionam corretamente
* Os itens selecionados são adicionados com precisão ao carrinho de compras
* O item é removido corretamente e de forma dinâmica do carrinho

### Casos de Falha ❌
O teste falha se:
* Qualquer página não carregar corretamente
* O botão "Cart" não redireciona para a página correta
* Os itens não forem adicionados ao carrinho
* O botão "X" não funcionar ou o item não for removido corretamente do carrinho
* Ocorrer qualquer erro de sistema (500, 404, timeout, etc.)
