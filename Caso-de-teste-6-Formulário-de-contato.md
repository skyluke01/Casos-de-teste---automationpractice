# 📋 Caso de Teste: Envio de Formulário de Contato (Contact Us Form)

---

## 👤 História de Usuário
* **Como** um visitante do site Automation Exercise,
* **Quero** preencher e enviar o formulário de contato com meus dados, mensagem e um arquivo anexo,
* **Para que** eu possa entrar em contato com o suporte ou administração do site e obter retorno sobre minhas solicitações ou dúvidas.

---

## 📝 Descrição Detalhada
Esta funcionalidade permite que qualquer usuário acesse a parte de contato do site, preencha as informações necessárias (nome, e-mail, assunto e mensagem), faça o upload de um ficheiro opcional e envie o formulário com sucesso, recebendo uma confirmação visual.

### 🎯 Objetivo de Negócio
Garantir o canal de comunicação aberto e funcional entre os utilizadores e a equipe do site, assegurando que as mensagens e ficheiros são submetidos sem falhas.

### 🔧 Requisitos Técnicos
* Validação de campos obrigatórios no formulário de contacto
* Suporte a upload de arquivos/documentos
* Tratamento de pop-up de confirmação (alerta do navegador)

---

## ✅ Critérios de Aceite

* **Critério 1: Acesso à Página de Contato**  
  * **Dado** que estou na página inicial do site,  
  * **Quando** clico no botão "Contact us",  
  * **Então** devo ser redirecionado para a página de contato e verificar o texto "GET IN TOUCH".

* **Critério 2: Envio Bem-Sucedido do Formulário**  
  * **Dado** que estou no formulário "GET IN TOUCH",  
  * **Quando** preencho todos os campos obrigatórios, anexo um ficheiro e clico em "Submit" confirmando o alerta, 
  * **Então** o sistema deve exibir a mensagem de sucesso "Success! Your details have been submitted successfully.".

---

## 🧪 Roteiro de Teste

### Pré-condições
* Navegador web compatível instalado (Chrome, Firefox, Safari, Edge)
* Conexão com internet ativa
* Um ficheiro de teste válido no computador para upload (ex: .txt ou .png)

### Dados de Teste
* **Nome:** John Teste 
* **Email:** `johnteste@gmail.com`
* **Assunto:** Suporte Geral
* **Mensagem:** Olá, gostaria de tirar uma dúvida sobre os produtos disponíveis na loja.
* **Ficheiro Anexo:** `exemplo.txt`

### Passos do Teste
1. Abrir o navegador web
2. Navegar para a URL [Automation Exercise](https://www.automationexercise.com)
3. Verificar se a página home está visível e carregada corretamente
4. Localizar e clicar no botão "Contact Us" no menu superior
5. Verificar se o texto "GET IN TOUCH" está visível na página
6. Preencher os campos "Name", "Email", "Subject" e "Message" com os dados de teste
7. Fazer o upload de um ficheiro no campo correspondente
8. Clicar no botão "Submit" e aceitar o pop-up de confirmação do navegador
9. Clicar no botão "OK" no alerta de confirmação
10. Verificar que a mensagem de sucesso "Success! Your details have been submitted successfully." está visível
11. Clicar no botão "Home" e verificar que retornou à página inicial com sucesso

### Pós-condições
* Navegador pode ser fechado
* O formulário é limpo e o sistema retorna ao estado inicial

---

## 🎯 Resultado Esperado

### Resultado Geral
* **✅ Sucesso:** O fluxo de contato é executado perfeitamente desde o acesso à página, preenchimento, submissão com alerta e retorno à página inicial, confirmando o registo da mensagem.

### Resultados Específicos por Etapa
* **Etapa 1-3 (Acesso ao Site):** A página inicial do Automation Exercise carrega completamente; todos os elementos visuais estão visíveis; não há erros de carregamento.
* **Etapa 4-5 (Navegação para Contacto):** O redirecionamento ocorre corretamente e o título "GET IN TOUCH" é exibido na interface.
* **Etapa 6-8 (Preenchimento e Submissão):** Os campos aceitam a digitação, o ficheiro é anexado com sucesso e o botão "Submit" aciona o alerta de confirmação.
* **Etapa 9-10 (Confirmação do Envio):** Após clicar em OK no alerta, a mensagem verde de sucesso "Success! Your details have been submitted successfully." é apresentada de forma clara
* **Etapa 11 (Retorno à Home):** O botão "Home" direciona o utilizador de volta à página principal do site sem falhas.

### Critérios de Sucesso Global
* A mensagem de sucesso é exibida corretamente após a submissão
* Todos os redirecionamentos funcionam corretamente
* O upload do ficheiro ocorre sem erros de compatibilidade ou tamanho

### Casos de Falha ❌
O teste falha se:
* Qualquer página não carregar corretamente
* O upload do ficheiro falhar ou for rejeitado indevidamente
* A mensagem de sucesso não for exibida após submeter o formulário
* O botão "Home" não redirecionar de volta para a página inicial
* Ocorrer qualquer erro de sistema (500, 404, timeout, etc.)
