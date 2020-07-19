class Login < SitePrism::Page
  set_url 'https://www.ze.delivery/'
  element :btn_age_yes, '#age-gate-button-yes'
  element :btn_welcome_login, '#welcome-button-sign-in'
  element :btn_login_email, '#login-home-email-button-sign-in'
  element :email_field, '#login-mail-input-email'
  element :password_field, '#login-mail-input-password'
  element :btn_submit_login, '#login-mail-button-sign-in'
  element :text_name, '.css-dd5a5i-textBase-UserCard'
  element :btn_menu, '.css-6e10nj-textBase-account'

  def older
    btn_age_yes.click
  end

  def access_login_register
    btn_welcome_login.click
  end

  def access_by_email
    btn_login_email.click
  end

  def login(user, pass)
    email_field.set(user)
    password_field.set(pass)
    btn_submit_login.click
  end
end
