class ResetPassword < SitePrism::Page
  element :btn_reset_password, '#login-email-ling-forgot-password'
  element :email_pass_field, '#recover-password-input-email'
  element :btn_send_password, '#recover-password-button-send'
  element :email_send_recover, 'h2.css-t3jqnk-title-subtitle'

  def send_forgot_password(user)
    btn_reset_password.click
    email_pass_field.set(user)
    btn_send_password.click
  end
end
