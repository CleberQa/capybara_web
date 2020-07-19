Dado('que acesse a pagina de cadastro') do
  @login.load
  @login.older
  @login.access_login_register
end

Quando('realizar o cadastro') do
  @register.register_email
  @register.create_account(DATA['register']['name'], DATA['register']['password'], DATA['register']['age'])
  @register.validate_later_sms
end

Então('devo ter acesso para comprar produtos') do
  expect(@login.text_name.text).to eq(MSG['user']['name_register'])
  expect(@login.btn_menu.text).to eq(MSG['menu']['txt_menu'])
end
