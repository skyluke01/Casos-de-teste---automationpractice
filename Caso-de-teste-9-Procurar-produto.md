# 📋 Caso de Teste: Procurar produto

---

## 👤 História de Usuário
* **Como** um visitante do site Automation Exercise,
* **Quero** entrar na página de produtos e utilizar a barra de pesquisa,
* **Para que** eu possa encontrar rapidamente o produto desejado através do seu nome.

---

## 📝 Descrição Detalhada
Esta funcionalidade permite que qualquer usuário acesse a seção de produtos do site através do menu principal, digite o nome de um item na barra de pesquisa e localize os resultados correspondentes na listagem.

### 🎯 Objetivo de Negócio
Garantir que a ferramenta de busca funcione com precisão, permitindo que os clientes encontrem os itens desejados de forma rápida e eficiente.

### 🔧 Requisitos Técnicos
* Funcionalidade de input de texto no campo de busca (Search Product)
* Requisição e filtragem correta dos produtos na base de dados com base no termo digitado
* Renderização do título e da listagem de "SEARCHED PRODUCTS"

---

## ✅ Critérios de Aceite

* **Critério 1: Acesso à Página de Produtos**  
  * **Dado** que estou na página inicial do site, 
  * **Quando** clico no botão "Products",
  * **Então** devo ser redirecionado para a página de produtos e ver o texto "ALL PRODUCTS".

* **Critério 2: Procurar Produto**  
  * **Dado** que estou na página de produtos,  
  * **Quando** digito o nome do produto em "Search Product" e clico para pesquisar, 
  * **Então** devo conseguir visualizar o título "SEARCHED PRODUCTS" e todos os produtos correspondentes àquele nome.
    
---

## 🧪 Roteiro de Teste

### Pré-condições
* Navegador web compatível instalado (Chrome, Firefox, Safari, Edge)
* Conexão com internet ativa
* Existência de produtos cadastrados que possam ser pesquisados (ex: "Top", "Shirt", "Jeans")

### Passos do Teste
1. Abrir o navegador web
2. Navegar para a URL (https://www.automationexercise.com)
3. Verificar se a página home está visível e carregada corretamente
4. Localizar e clicar no botão "Products" no menu superior
5. Verificar se o usuário é redirecionado para a pagina de produtos e "ALL PRODUCTS" está visível
6. Digitar o nome do produto no campo "Search Product" e clicar no botão da lupa
7. Verificar se "SEARCHED PRODUCTS" está visível
8. Verificar se todos os produtos relacionados a busca estão visíveis

### Pós-condições
* Navegador pode ser fechado

---

## 🎯 Resultado Esperado

### Resultado Geral
* **✅ Sucesso:** O fluxo é executado perfeitamente desde o acesso à página inicial (home), navegação para o catálogo, submissão da busca e exibição correta dos produtos filtrados.

### Resultados Específicos por Etapa
* **Etapa 1-3 (Acesso ao Site):** A página inicial do Automation Exercise carrega completamente; todos os elementos visuais estão visíveis; não há erros de carregamento.
* **Etapa 4-5 (Navegação para Página de Produtos):** O redirecionamento ocorre corretamente para a página correspondente e o título "ALL PRODUCTS" é exibido com destaque na interface.
* **Etapa 6-8 (Buscar produtos)** A pesquisa é processada com sucesso, exibindo o título "SEARCHED PRODUCTS" e listando apenas os itens correspondentes ao termo digitado.

### Critérios de Sucesso Global
* Todos os redirecionamentos funcionam corretamente
* A busca por produtos informa todos os produtos relacionados aquela busca
* A página carrega dentro do tempo esperado e sem falhas visuais

### Casos de Falha ❌
O teste falha se:
* Qualquer página não carregar corretamente
* O botão "Products" não redirecionar para a página correta
* O título "SEARCHED PRODUCTS" não for exibido após a pesquisa
* Os produtos exibidos não corresponderem ao termo buscado
* Ocorrer qualquer erro de sistema (500, 404, timeout, etc.)
