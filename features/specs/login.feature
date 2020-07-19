#language:pt
#uft-8

Funcionalidade: Realizar login
	Eu como usuário do Zé Delivery 
	Quero acessar minha conta pelo site com email e senha
	Para visualizar os dados de compra e os dados pessoais

@login @regression
Cenário: Login
	Dado que acesse a pagina inicial
	Quando realizar login 
	Então devo ter a conta logado com sucesso

@reset_pass @regression
Cenário: Recuperar senha
	Dado que acesse esqueci minha senha
	Quando iformar o email 
	Então devo visualizar uma mensagem que o link foi enviado para o email
