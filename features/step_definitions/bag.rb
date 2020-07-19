Dado('que escolha uma bebida') do
  @login.load
  @login.older
  step 'realizar a busca de uma bebida para o meu endereço'
  @product.select_product
end

Quando('adicionar o item na sacola') do
  @product.select_amount
  @product.btn_add_product
  @product.btn_finish_order
  @login.access_by_email
  step 'realizar login'
  @product_text = @product.text_product
  @subtotal = @product.text_subtotal
  @price = @product.text_total_price
end

Então('devo ter a bebida adicionada') do
  expect(@product.name_product.text).to eq @product_text
  expect(@product.text_subtotal).to eq @subtotal
  expect(@product.text_total_price).to eq @price
  print "Produto: #{@product_text}, SubTotal: #{@subtotal}, Valor Total: #{@price}"
end
