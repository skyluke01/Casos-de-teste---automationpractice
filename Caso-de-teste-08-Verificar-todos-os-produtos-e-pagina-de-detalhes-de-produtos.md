# 📋 Caso de Teste: Verificar todos os produtos e a página de detalhes do produto

---

## 👤 História de Usuário
* **Como** um visitante do site Automation Exercise,
* **Quero** navegar até a lista de produtos e abrir os detalhes de um item específico,
* **Para que** eu possa visualizar informações detalhadas (como nome, categoria, preço, disponibilidade, condição e marca) antes de decidir realizar uma compra.

---

## 📝 Descrição Detalhada
Esta funcionalidade permite que qualquer usuário acesse a página com o catálogo completo de produtos do site, verifique a listagem geral e selecione um produto específico para visualizar suas informações detalhadas.

### 🎯 Objetivo de Negócio
Garantir que o catálogo de produtos esteja acessível e que as páginas de detalhe apresentem todas as informações essenciais do produto de forma correta para o consumidor.

### 🔧 Requisitos Técnicos
* Navegação correta para a rota de listagem de produtos (/products)
* Exibição de elementos e listagem de produtos vindos da base de dados
* Redirecionamento e renderização da página de detalhes do produto selecionado

---

## ✅ Critérios de Aceite

* **Critério 1: Acesso à Página de Produtos**  
  * **Dado** que estou na página inicial do site,  
  * **Quando** clico no botão "Products",  
  * **Então** devo ser redirecionado para a página de todos os produtos ("ALL PRODUCTS") e visualizar a listagem de produtos.
 
* **Critério 2: Acesso aos Detalhes do Produto**
  * **Dado** que estou na página de listagem de produtos,  
  * **Quando** clico em "View Product" no primeiro produto da lista  
  * **Então** devo ser redirecionado para a página de detalhes do produto e visualizar informações como nome, categoria, preço, disponibilidade, condição e marca.
    
---

## 🧪 Roteiro de Teste

### Pré-condições
* Navegador web compatível instalado (Chrome, Firefox, Safari, Edge)
* Conexão com internet ativa

### Passos do Teste
1. Abrir o navegador web
2. Navegar para a URL (https://www.automationexercise.com)
3. Verificar se a página home está visível e carregada corretamente
4. Localizar e clicar no botão "Products" no menu superior
5. Verificar se o utilizador é redirecionado para a página "ALL PRODUCTS" com sucesso
6. Verificar se a lista de produtos está visível na página
7. Clicar no botão/link "View Product" do primeiro produto da lista
8. Verificar se o utilizador é redirecionado para a página de detalhes do produto
9. Verificar se os detalhes do produto estão visíveis: nome, categoria, preço, disponibilidade, condição e marca

### Pós-condições
* Navegador pode ser fechado
* O sistema retorna ao estado inicial ou mantém-se na navegação

---

## 🎯 Resultado Esperado

### Resultado Geral
* **✅ Sucesso:** O fluxo de navegação pelo catálogo e consulta de detalhes de um produto funciona perfeitamente, exibindo todas as informações exigidas sem falhas visuais ou de carregamento.

### Resultados Específicos por Etapa
* **Etapa 1-3 (Acesso ao Site):** A página inicial do Automation Exercise carrega completamente; todos os elementos visuais estão visíveis; não há erros de carregamento.
* **Etapa 4-6 (Navegação para Produtos):** O redirecionamento ocorre corretamente para a página "ALL PRODUCTS" e a listagem de produtos é apresentada de forma clara.
* **Etapa 7-9 (Detalhes do Produto):** O clique em "View Product" direciona para a página correta do item, exibindo detalhadamente o nome, categoria, preço, disponibilidade, condição e marca.

### Critérios de Sucesso Global
* Todos os redirecionamentos funcionam corretamente
* A página de detalhes carrega todas as informações do produto especificadas

### Casos de Falha ❌
O teste falha se:
* A página de produtos não carregar ou a listagem estiver vazia
* O botão "View Product" não redirecionar para a página correta
* Alguma das informações essenciais do produto (preço, categoria, marca, etc.) não estiver visível na página de detalhes
* Ocorrer qualquer erro de sistema (500, 404, timeout, etc.)
