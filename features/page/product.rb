class Product < SitePrism::Page
  element :select_card, '#product-card', match: :first
  element :select_amount_6, '#add-amount-6'
  element :add_product, '#add-product'
  element :finish_order, '#finish-order'
  element :product, '.css-xsvw85-productTitle'
  element :subtotal, '#subtotal'
  element :total, '#total-price'
  element :name_product, '.css-xsvw85-productTitle'

  def select_product
    select_card.click
  end

  def select_amount
    select_amount_6.click
  end

  def btn_add_product
    add_product.click
  end

  def btn_finish_order
    finish_order.click
  end

  def text_product
    product.text
  end

  def text_subtotal
    subtotal.text
  end

  def text_total_price
    total.text
  end
end
