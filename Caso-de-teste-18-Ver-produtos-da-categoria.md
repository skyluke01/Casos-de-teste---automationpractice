# 📋 Caso de Teste: Ver produtos da categoria

---

## 👤 História de Usuário
* **Como** um visitante do site Automation Exercise,
* **Quero** clicar em uma categoria de produtos,
* **Para que** possa filtrar os produtos e ter maior facilidade para encontrar o que desejo.

---

## 📝 Descrição Detalhada
Esta funcionalidade permite que qualquer usuário consiga filtrar os produtos através das categorias e subcategorias localizadas na barra lateral esquerda, facilitando a navegação e a localização de itens específicos no site.

### 🎯 Objetivo de Negócio
Garantir o correto funcionamento da navegação por categorias, permitindo que o usuário encontre rapidamente os produtos desejados e otimize sua experiência de compra.

### 🔧 Requisitos Técnicos
* Funcionalidade dos links e expansão das categorias na barra lateral esquerda
* Redirecionamento correto entre páginas de diferentes categorias e subcategorias (/category_products/...)
* Renderização dinâmica do título correspondente à categoria selecionada

---

## ✅ Critérios de Aceite

* **Critério 1: Redirecionamento a página de categorias**  
  * **Dado** que estou na página inicial do site, 
  * **Quando** localizo e clico em uma categoria e sua subcategoria na barra lateral esquerda,
  * **Então** devo ser redirecionado para a página da categoria e visualizar os produtos filtrados junto com o título correspondente.

* **Critério 2: Redirecionamento de uma página de categoria para a outra**  
  * **Dado** que estou em uma página de categoria, 
  * **Quando** localizo e clico em outra categoria e sua subcategoria,
  * **Então** devo ser redirecionado para a nova página de categoria selecionada e ver seus respectivos produtos filtrados.

---

## 🧪 Roteiro de Teste

### Pré-condições
* Navegador web compatível instalado (Chrome, Firefox, Safari, Edge)
* Conexão com internet ativa
* Categorias e produtos previamente cadastrados no sistema


### Passos do Teste
1. Abrir o navegador web
2. Navegar para a URL (https://www.automationexercise.com)
3. Verificar se as categorias estão visíveis na barra lateral esquerda
4. Clicar na categoria "Women"
5. Clicar em qualquer link de categoria abaixo da categoria "Women", por exemplo: "Dress"
6. Verificar se a pagina da categoria está visível e confirme o texto "WOMEN - "subcategoria selecionada" PRODUCTS"
8. Na barra lateral esquerda, clicar no link de qualquer subcategoria da categoria "MEN"
9. Verificar se o usuário é redirecionado a página daquela categoria

### Pós-condições
* Navegador pode ser fechado

---

## 🎯 Resultado Esperado

### Resultado Geral
* **✅ Sucesso:** O fluxo é executado perfeitamente desde o acesso à página inicial, seleção de categorias e subcategorias na barra lateral, redirecionamento com exibição dos títulos corretos e transição fluida entre diferentes categorias.

### Resultados Específicos por Etapa
* **Etapa 1-3 (Acesso ao Site):** A página inicial do Automation Exercise carrega completamente; todos os elementos visuais estão visíveis; não há erros de carregamento.
* **Etapa 4-6 (Seleção da primeira categoria):** O sistema permite expandir/clicar na categoria "Women" e subcategoria "Dress", redirecionando para a página com os produtos filtrados e título correto.
* **Etapa 7-8 (Alternância entre categorias)** O sistema permite selecionar uma nova categoria/subcategoria (como na seção "Men") e redireciona instantaneamente para a nova página de produtos filtrados.

### Critérios de Sucesso Global
* Todos os redirecionamentos de categorias funcionam corretamente
* A barra lateral esquerda exibe as categorias de forma interativa e acessível
* Os títulos das páginas de categoria correspondem exatamente ao item selecionado

### Casos de Falha ❌
O teste falha se:
* Qualquer página não carregar corretamente
* As categorias não forem visíveis no menu lateral esquerdo
* Os links de subcategoria não redirecionarem para a página correta ou não atualizarem o título de produtos
* Ocorrer qualquer erro de sistema (500, 404, timeout, etc.)
