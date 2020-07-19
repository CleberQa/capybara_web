#language:pt
#uft-8

Funcionalidade: Buscar produtos
	Eu como usuário do Zé Delivery 
	Quero realizar busca de produtos no meu endereço
	Para ter uma boa bebida gelada em casa

@search @regression
Cenário: Realizar busca de uma bebida 
	Dado que acesse a busca de produtos
	Quando realizar a busca de uma bebida para o meu endereço
	Então devo visualizar os produtos que entregam no meu endereço