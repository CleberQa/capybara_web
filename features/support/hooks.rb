Before do
  @login = Login.new
  @register = Register.new
  @resetPass = ResetPassword.new
  @search = Search.new
  @product = Product.new
end

require_relative 'helper.rb'

After do |scenario|
  @helper = Helper.new
  @nome = name = scenario.name.tr(' ', '_').downcase
  @helper.take_screenshot(@nome, 'screenshots/test_failed') if scenario.failed?
  unless @helper.take_screenshot(@nome, 'screenshots/test_passed')
  end
end
