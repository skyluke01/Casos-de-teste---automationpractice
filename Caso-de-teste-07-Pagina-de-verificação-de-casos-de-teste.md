# 📋 Caso de Teste: Página de verificação de casos de teste

---

## 👤 História de Usuário
* **Como** um visitante do site Automation Exercise,
* **Quero** entrar e ver a página de casos de teste,
* **Para que** eu possa treinar casos de teste e automação de teste.

---

## 📝 Descrição Detalhada
Esta funcionalidade permite que qualquer usuário acesse a página de casos de teste do site através do menu principal, visualizando a lista de cenários de teste disponíveis para estudo e prática de automação.

### 🎯 Objetivo de Negócio
Disponibilizar um repositório prático de exemplos de testes para os usuários, auxiliando no aprendizado e na validação de habilidades em testes manuais e de automação.

### 🔧 Requisitos Técnicos
* Carregamento correto da rota/página de casos de teste (/test_cases)
* Renderização adequada dos elementos visuais e títulos da página

---

## ✅ Critérios de Aceite

* **Critério 1: Acesso à Página de Casos de teste**  
  * **Dado** que estou na página inicial do site,  
  * **Quando** clico no botão "Test Cases",  
  * **Então** devo ser redirecionado para a página de casos de teste e ver o texto "TEST CASES".
    
---

## 🧪 Roteiro de Teste

### Pré-condições
* Navegador web compatível instalado (Chrome, Firefox, Safari, Edge)
* Conexão com internet ativa

### Passos do Teste
1. Abrir o navegador web
2. Navegar para a URL (https://www.automationexercise.com)
3. Verificar se a página home está visível e carregada corretamente
4. Localizar e clicar no botão "Test Cases" no menu superior
5. Verificar se o usuário é redirecionado para a pagina de casos de teste
6. Verificar se "TEST CASES" está visível

### Pós-condições
* Navegador pode ser fechado

---

## 🎯 Resultado Esperado

### Resultado Geral
* **✅ Sucesso:** O fluxo é executado perfeitamente desde o acesso à página inicial (home) até o redirecionamento e visualização correta da página de casos de teste.

### Resultados Específicos por Etapa
* **Etapa 1-3 (Acesso ao Site):** A página inicial do Automation Exercise carrega completamente; todos os elementos visuais estão visíveis; não há erros de carregamento.
* **Etapa 4-6 (Navegação para Casos de Teste):** O redirecionamento ocorre corretamente para a página correspondente e o título "TEST CASES" é exibido com destaque na interface.

### Critérios de Sucesso Global
* Todos os redirecionamentos funcionam corretamente
* A página carrega dentro do tempo esperado e sem falhas visuais

### Casos de Falha ❌
O teste falha se:
* Qualquer página não carregar corretamente
* O botão "Test Cases" não redirecionar para a página correta
* O título "TEST CASES" não estiver visível
* Ocorrer qualquer erro de sistema (500, 404, timeout, etc.)
