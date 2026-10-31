# 📋 Caso de Teste: Adicionar análise a um produto

## 👤 História de Usuário
* **Como** um usuário do site Automation Exercise,
* **Quero** fazer a análise de um produto,
* **Para que** outros usuários possam ter uma informação baseado em alguem que adquiriu o produto.

---

## 📝 Descrição Detalhada
Esta funcionalidade permite que qualquer usuário acesse a página de detalhes de um produto, preencha o formulário de avaliação (Write Your Review) com seu nome, e-mail e comentário, e envie a análise com sucesso para exibição na plataforma.

### 🎯 Objetivo de Negócio
Incentivar o engajamento dos clientes e fornecer prova social/avaliações reais sobre os produtos, auxiliando outros visitantes na tomada de decisão de compra.

### 🔧 Requisitos Técnicos
* Validação de campos obrigatórios no formulário de avaliação (Name, Email, Add review)
* Validação de formato de e-mail no envio da review
* Exibição dinâmica da mensagem de sucesso (Thank you for your review.) após o envio

---

## ✅ Critérios de Aceite

* **Critério 1: Acesso à Página de Produtos**  
  * **Dado** que estou na página inicial do site,  
  * **Quando** clico no botão "Products",  
  * **Então** devo ser redirecionado para a página de todos os produtos e visualizar "ALL PRODUCTS".

* **Critério 2: Redirecionamento para Página do Produto Selecionado**  
  * **Dado** que estou na página de todos os produtos,  
  * **Quando** escolho o produto e clico em "View Product",  
  * **Então** devo ser redirecionado para a página do produto selecionado e visualizar seus detalhes.

* **Critério 3: Adicionando Análise**  
  * **Dado** que estou na página do produto selecionado,  
  * **Quando** preencho todos os campos em "Write Your Review" (nome, email e sua análise) e clicar no botão "Submit", 
  * **Então** devo visualizar a mensagem "Thank your for your review".

---

## 🧪 Roteiro de Teste

### Pré-condições
* Navegador web compatível instalado (Chrome, Firefox, Safari, Edge)
* Conexão com internet ativa
* Produtos previamente cadastrados no sistema

### Dados de Teste
* **Nome:** John Teste
* **Email:** `johnteste@gmail.com`
* **Review:** Ótimo produto, recomendo a todos

### Passos do Teste
1. Abrir o navegador web
2. Navegar para a URL [Automation Exercise](http://automationexercise.com)
3. Verificar que a página inicial está visível e carregada corretamente
4. Clicar no botão "Products"
5. Verificar se o usuário é redirecionado para a página de todos os produtos corretamente
6. Clicar no botão "View Product"
7. Verificar se "Write Your Review" está visível
8. Digitar nome, email e a analise
9. Clicar no botão "Submit"
10. Verificar a mensagem de sucesso "Thank your for your review".

### Pós-condições
* Navegador pode ser fechado
* A análise é registrada no sistema para o respectivo produto

---

## 🎯 Resultado Esperado

### Resultado Geral
* **✅ Sucesso:** O fluxo completo de avaliação de um produto é executado sem erros, desde o acesso ao catálogo, abertura dos detalhes do item, preenchimento e envio da review até a exibição da mensagem de sucesso.

### Resultados Específicos por Etapa
* **Etapa 1-5 (Acesso ao Catálogo):** A página inicial carrega corretamente; o clique em "Products" redireciona para a listagem geral de itens.
* **Etapa 6-7 (Detalhes do Produto):** O botão "View Product" direciona para a página específica do item, exibindo a seção de comentários e o formulário "Write Your Review".
* **Etapa 8-10 (Envio e Confirmação):** Os campos aceitam a digitação dos dados de teste, o botão "Submit" processa a requisição e a mensagem de agradecimento pela avaliação é apresentada com sucesso.

### Critérios de Sucesso Global
* Nenhuma mensagem de erro é exibida durante todo o fluxo
* Todos os redirecionamentos funcionam corretamente
* Mensagem de sucesso visível e correta após envio da review

### Casos de Falha ❌
O teste falha se:
* Qualquer página não carregar corretamente
* O formulário de review não aceitar os dados ou o botão "Submit" falhar
* A mensagem de sucesso não for exibida após submeter a avaliação
* Ocorrer qualquer erro de sistema (500, 404, timeout, etc.)
