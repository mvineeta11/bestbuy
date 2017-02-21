require_relative 'base_page'

class Cart < BasePage
  link(:remove_item_from_cart, class:'remove-link')
end