#language:pt
#uft-8

Funcionalidade: Adicionar item na sacola
	Eu como usuário do Zé Delivery 
	Quero adicionar itens na sacola
	Para realizar uma futura compra dos itens

@bag @regression
Cenário: Adicionar bebida na sacola
	Dado que escolha uma bebida
	Quando adicionar o item na sacola
	Então devo ter a bebida adicionada