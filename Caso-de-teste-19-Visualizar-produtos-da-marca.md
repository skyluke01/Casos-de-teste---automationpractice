# 📋 Caso de Teste: Visualizar produtos da marca

---

## 👤 História de Usuário
* **Como** um visitante do site Automation Exercise,
* **Quero** visualizar os produtos de uma determinada marca,
* **Para que** possa filtrar os produtos e ter maior facilidade para encontrar o que desejo.

---

## 📝 Descrição Detalhada
Esta funcionalidade permite que qualquer usuário consiga filtrar os produtos através das marcas localizadas na barra lateral esquerda, facilitando a navegação e a localização de itens específicos no site.

### 🎯 Objetivo de Negócio
Garantir o correto funcionamento da navegação através das marcas, permitindo que o usuário encontre rapidamente os produtos desejados e otimize sua experiência de compra.

### 🔧 Requisitos Técnicos
* Funcionalidade dos links das marcas na barra lateral esquerda
* Redirecionamento correto entre páginas de diferentes marcas (/brand_products/...)
* Renderização dinâmica do título correspondente à marca selecionada

---

## ✅ Critérios de Aceite

* **Critério 1: Redirecionamento a página de categorias**  
  * **Dado** que estou na página inicial do site, 
  * **Quando** localizo e clico no botão "Products" no menu superior,
  * **Então** devo ser redirecionado para a página de produtos e visualizar todos os produtos.
 
* **Critério 2: Redirecionamento a página de uma marca**  
  * **Dado** que estou na página de produtos, 
  * **Quando** localizo e clico em uma marca na barra lateral esquerda,
  * **Então** devo ser redirecionado para a página da marca e visualizar os produtos filtrados junto com o título correspondente.

* **Critério 3: Redirecionamento de uma página da marca para a outra**  
  * **Dado** que estou na página de uma marca, 
  * **Quando** localizo e clico em outra marca,
  * **Então** devo ser redirecionado para a nova página de marca selecionada e ver seus respectivos produtos filtrados.

---

## 🧪 Roteiro de Teste

### Pré-condições
* Navegador web compatível instalado (Chrome, Firefox, Safari, Edge)
* Conexão com internet ativa
* Marcas e produtos previamente cadastrados no sistema


### Passos do Teste
1. Abrir o navegador web
2. Navegar para a URL (https://www.automationexercise.com)
3. Clicar no botão "Products"
4. Verificar se a página de produtos está visível e carregada corretamente
5. Verificar se as marcas estão visíveis na barra lateral esquerda
6. Clicar em qualquer nome de marca
7. Verificar se o usuário é redirecionado para a marca da página correta e os seus produtos estão visíveis
8. Na barra lateral esquerda, clicar no link de qualquer outra marca"
9. Verificar se o usuário é redirecionado a página daquela marca e os seus produtos estão visíveis

### Pós-condições
* Navegador pode ser fechado

---

## 🎯 Resultado Esperado

### Resultado Geral
* **✅ Sucesso:** O fluxo é executado perfeitamente desde o acesso à página inicial, redirecionamento para a página de produtos, seleção de uma marca na barra lateral, redirecionamento com exibição dos títulos corretos e transição fluida entre diferentes marcas.

### Resultados Específicos por Etapa
* **Etapa 1-4 (Acesso aos produtos):** A página inicial carrega bem, o botão "Products" redireciona corretamente para o catálogo geral.
* **Etapa 5-7 (Visualização primeira marca):** As marcas aparecem na barra lateral esquerda; ao clicar em uma delas, o sistema redireciona para a página específica exibindo os produtos daquela marca.
* **Etapa 8-9 (Alternância entre marcas)** O sistema permite selecionar uma nova marca e redireciona instantaneamente para a nova página de produtos filtrados.

### Critérios de Sucesso Global
* Todos os redirecionamentos de marcas funcionam corretamente
* A barra lateral esquerda exibe as marcas de forma interativa e acessível
* Os títulos das páginas de marcas correspondem exatamente ao item selecionado

### Casos de Falha ❌
O teste falha se:
* Qualquer página não carregar corretamente
* As marcas não forem visíveis no menu lateral esquerdo
* Os links das marcas não redirecionarem para a página correta ou não atualizarem o título de produtos
* Ocorrer qualquer erro de sistema (500, 404, timeout, etc.)
