Dado('que acesse a busca de produtos') do
  @login.load
  @login.older
end

Quando('realizar a busca de uma bebida para o meu endereço') do
  @search.search_address(DATA['search']['address'])
  @search.input_address_complement(DATA['search']['number'], DATA['search']['complement'])
  @search.view_products
end

Então('devo visualizar os produtos que entregam no meu endereço') do
  expect(@search.txt_type.text).to eq(DATA['search']['drink'])
end
