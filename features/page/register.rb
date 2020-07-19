class Register < SitePrism::Page
  element :register, '#login-home-link-dont-have-account'
  element :btn_register_email, '.css-16rb6l9-buttonBase-primaryButton-mailButton-IconButton'
  element :name_field, '#signup-email-input-name'
  element :email_field, '#signup-email-input-email'
  element :password_field, '#signup-email-input-password'
  element :document_field, '#signup-email-input-document'
  element :phone_field, '#signup-email-input-phone'
  element :age_field, '#signup-email-input-age'
  element :bnt_singup, '#signup-email-button-signUp'
  element :btn_validate_later, '#link-validate-later'
  element :txt_label, '.css-jeax9w-text'

  def register_email
    register.click
    btn_register_email.click
  end

  def create_account(name, pass, age)
    name_field.set(name)
    email_field.set(Faker::Internet.email)
    password_field.set(pass)
    document_field.set(Faker::CPF.numeric)
    phone_field.set(Faker::PhoneNumber.phone_number)
    age_field.set(age)
    bnt_singup.click
  end

  def validate_later_sms
    btn_validate_later.click
  end
end
