# 📋 Caso de Teste: Procurar produtos e verificar se continuaram no carrinho após o login.

---

## 👤 História de Usuário
* **Como** um usuário do site Automation Exercise,
* **Quero** procurar produtos e adicionar ao carrinho antes de fazer login,
* **Para que** eu não tenha a necessidade de logar antes de escolher os meus produtos e não perca minha seleção ao me autenticar.

---

## 📝 Descrição Detalhada
Esta funcionalidade permite que qualquer usuário consiga pesquisar e selecionar produtos, adicionando-os ao carrinho de compras antes de estar autenticado. O sistema deve garantir que, após o usuário realizar o login, os produtos adicionados anteriormente permaneçam salvos no seu carrinho.

### 🎯 Objetivo de Negócio
Garantir o correto funcionamento da sessão do carrinho de compras durante a transição de um usuário visitante para um usuário autenticado, evitando a perda de itens selecionados e melhorando a experiência de conversão.

### 🔧 Requisitos Técnicos
* Funcionalidade de busca de produtos via barra de pesquisa (Search Product)
* Persistência e associação do carrinho de compras anônimo ao perfil do usuário após a autenticação (Session/Cart merging or persistence)
* Redirecionamento correto entre as páginas de catálogo, carrinho e login (/login, /view_cart)

---

## ✅ Critérios de Aceite

* **Critério 1: Redirecionamento a página de produtos**  
  * **Dado** que estou na página inicial do site, 
  * **Quando** localizo e clico no botão "Products" no menu superior,
  * **Então** devo ser redirecionado para a página de produtos e visualizar todos os produtos.
 
* **Critério 2: Seleção de produtos**  
  * **Dado** que estou na página de produtos, 
  * **Quando** realizo uma busca por termo, adiciono os produtos encontrados ao carrinho e clico em "Cart",
  * **Então** devo ser redirecionado para a página do carrinho e visualizar os produtos selecionados.

* **Critério 3: Login**  
  * **Dado** que tenho itens no carrinho como visitante, 
  * **Quando** clico em "Signup/Login", preencho as credenciais e entro na conta
  * **Então** devo ser autenticado com sucesso e visualizar "Logged in as [nome do usuário]".

* **Critério 4: Verificação**  
  * **Dado** que estou logado no sistema, 
  * **Quando** clico em Cart no menu superior,
  * **Então** devo ser redirecionado para o carrinho e verificar se os produtos selecionados antes do login ainda continuam presentes.

---

## 🧪 Roteiro de Teste

### Pré-condições
* Navegador web compatível instalado (Chrome, Firefox, Safari, Edge)
* Conexão com internet ativa
* Produtos previamente cadastrados no sistema
* Conta de usuário previamente cadastrada no sistema para teste de login

### Dados de Teste
* **Termo de Busca:** Top (ou outro produto disponível)
* **Email:** `johnteste@gmail.com`
* **Senha:** `SenhaForte@123`


### Passos do Teste
1. Abrir o navegador web
2. Navegar para a URL (https://www.automationexercise.com)
3. Clicar no botão "Products"
4. Verificar se a página de produtos está visível e carregada corretamente
5. Digitar o nome do produto e clicar no botão de busca
6. Verificar se "SEARCHED PRODUCTS" está visível
7. Verificar se todos os produtos relacionados a busca estão visíveis
8. Adicionar esses produtos ao carrinho
9. Clicar no botão "Cart" e verificar se os produtos estão visíveis no carrinho
10. Clicar no botão "Signup/Login" e enviar detalhes de login
11. Novamente vá para a página de carrinho
12. Verificar se os produtos adicionados antes de efetuar o login ainda estão visíveis no carrinho 

### Pós-condições
* Navegador pode ser fechado

---

## 🎯 Resultado Esperado

### Resultado Geral
* **✅ Sucesso:** O fluxo é executado perfeitamente desde o acesso à home, busca e adição de produtos como visitante, visualização no carrinho, login na plataforma e confirmação de que os itens persistiram após a autenticação.

### Resultados Específicos por Etapa
* **Etapa 1-4 (Acesso aos produtos):** A página inicial carrega bem e o botão "Products" redireciona corretamente para o catálogo geral.
* **Etapa 5-9 (Seleção de produtos e redirecionamento para o carrinho):** A pesquisa pelo nome do produto funciona, os itens são adicionados com sucesso e aparecem listados ao acessar o carrinho.
* **Etapa 10-12 (Login e Persistência)** O login é efetuado com sucesso exibindo o usuário autenticado; ao reabrir o carrinho, os produtos adicionados anteriormente continuam salvos e visíveis.

### Critérios de Sucesso Global
* Todos os redirecionamentos de marcas funcionam corretamente
* Os produtos do carrinho não são perdidos ou esvaziados durante o fluxo de login
* A sessão do carrinho vincula-se corretamente ao usuário autenticado

### Casos de Falha ❌
O teste falha se:
* Qualquer página não carregar corretamente
* Os produtos do carrinho forem perdidos ou o carrinho ficar vazio após o login
* O redirecionamento dos botões (Products, Cart, Signup/Login) não funcionar corretamente
* Ocorrer qualquer erro de sistema (500, 404, timeout, etc.)
