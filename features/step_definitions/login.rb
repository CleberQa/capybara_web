Dado('que acesse a pagina inicial') do
  @login.load
  @login.older
  @login.access_login_register
  @login.access_by_email
end

Quando('realizar login') do
  @login.login(AUTH['login']['username'], AUTH['login']['password'])
end

Então('devo ter a conta logado com sucesso') do
  expect(@login.text_name.text).to eq(MSG['user']['name_login'])
  expect(@login.btn_menu.text).to eq(MSG['menu']['txt_menu'])
end

Dado('que acesse esqueci minha senha') do
  @login.load
  @login.older
  @login.access_login_register
  @login.access_by_email
end

Quando('iformar o email') do
  expect(page).to have_content(MSG['recover']['txt_label'])
  @resetPass.send_forgot_password(AUTH['login']['username'])
end

Então('devo visualizar uma mensagem que o link foi enviado para o email') do
  expect(page).to have_content(MSG['recover']['msg_email_recover'])
end
