# 📋 Caso de Teste: Verificar inscrição na página do carrinho

---

## 👤 História de Usuário
* **Como** um visitante do site Automation Exercise,
* **Quero** me inscrever através da página do carrinho,
* **Para que** possa receber atualizações e notícias sobre o site.

---

## 📝 Descrição Detalhada
Esta funcionalidade permite que qualquer usuário realize a inscrição para receber atualizações, novidades e ofertas do site inserindo seu endereço de e-mail na seção de rodapé da página do carrinho.

### 🎯 Objetivo de Negócio
Capturar leads e endereços de e-mail dos visitantes para engajamento de marketing, garantindo que o canal de comunicação via newsletter funcione corretamente.

### 🔧 Requisitos Técnicos
* Funcionalidade de rolagem de página até o rodapé (scroll down)
* Campo de input de e-mail e botão de submissão (arrow button) validados no frontend
* Mensagem de feedback de sucesso exibida de forma dinâmica após o envio

---

## ✅ Critérios de Aceite

* **Critério 1: Navegação para o carrinho**  
  * **Dado** que estou na página inicial do site, 
  * **Quando** clico no botão "Cart",
  * **Então** devo ser redirecionado para página do carrinho e ver o texto "Shopping Cart".

* **Critério 2: Inscrição para atualizações e notícias sobre o site**  
  * **Dado** que estou na página do carrinho, 
  * **Quando** desço para o final da página e insiro meu e-mail na seção "SUBSCRIPTION",
  * **Então** devo conseguir visualizar a mensagem de sucesso "You have been successfully subscribed!".
    
---

## 🧪 Roteiro de Teste

### Pré-condições
* Navegador web compatível instalado (Chrome, Firefox, Safari, Edge)
* Conexão com internet ativa
* Endereço de e-mail válido para teste

### Dados de Teste
* **Email:** `johnteste@gmail.com`

### Passos do Teste
1. Abrir o navegador web
2. Navegar para a URL (https://www.automationexercise.com)
3. Verificar se a página home está visível e carregada corretamente
4. Identificar e clicar no botão "Cart"
5. Verificar se a página do carrinho está visível e carregada corretamente
6. Rolar a página até seu rodapé
7. Verificar se o texto "SUBSCRIPTION" está visível
8. Digitar o email no campo "Your email adress" e clicar no botão da seta
9. Verificar se mensagem de sucesso "You have been successfully subscribed!" está visível

### Pós-condições
* Navegador pode ser fechado

---

## 🎯 Resultado Esperado

### Resultado Geral
* **✅ Sucesso:** O fluxo é executado perfeitamente desde o acesso à página inicial, botão "Cart" redireciona para pagina do carrinho, rolagem até o rodapé, preenchimento do e-mail e exibição da mensagem de sucesso da inscrição.

### Resultados Específicos por Etapa
* **Etapa 1-3 (Acesso ao Site):** A página inicial do Automation Exercise carrega completamente; todos os elementos visuais estão visíveis; não há erros de carregamento.
* **Etapa 4-5 (Navegação para o carrinho):** O redirecionamento ocorre corretamente para a página correspondente; "Shopping Cart" está visível.
* **Etapa 6-7 (Rolar até o rodapé):** A rolagem da página ocorre sem travamentos e a seção com o título "SUBSCRIPTION" é exibida corretamente. .
* **Etapa 6-8 (Inscrição)** O campo de e-mail aceita a digitação, o botão de submissão responde ao clique e a mensagem de sucesso "You have been successfully subscribed!" aparece na tela.

### Critérios de Sucesso Global
* Todos os redirecionamentos funcionam corretamente
* A rolagem da página (scroll down) funciona corretamente até o rodapé
* A inscrição valida e processa o e-mail corretamente
* A mensagem de sucesso é exibida de forma clara ao usuário

### Casos de Falha ❌
O teste falha se:
* Qualquer página não carregar corretamente
* O botão "Cart" não redireciona para a página correta
* O título "SUBSCRIPTION" não estiver visível no rodapé
* O botão de submissão não responder ou a mensagem de sucesso não for exibida após a inscrição
* Ocorrer qualquer erro de sistema (500, 404, timeout, etc.)
