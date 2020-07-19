#language:pt
#uft-8

Funcionalidade: Cadastrar usuário
	Eu como novo usuário do Zé Delivery 
	Quero realizar o cadastro no site
	Para realizar a compra de produtos

@register @regression
Cenário: Realizar cadastro
	Dado que acesse a pagina de cadastro
	Quando realizar o cadastro 
	Então devo ter acesso para comprar produtos
