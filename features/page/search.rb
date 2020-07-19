class Search < SitePrism::Page
  element :search_field, '#fake-address-search-input'
  element :input_txt, '#address-search-input-address'
  element :result_address, '.css-10klw3m', match: :first
  element :input_number_address, '#address-details-input-number'
  element :input_complement, '#address-details-input-complement'
  element :btn_continue, '#address-details-button-continue'
  element :txt_type, '.css-l9heuk-shelfTitle', match: :first

  def search_address(address)
    search_field.click
    input_txt.set(address)
    result_address.click
  end

  def input_address_complement(number, comp)
    input_number_address.set(number)
    input_complement.set(comp)
  end

  def view_products
    btn_continue.click
  end
end
