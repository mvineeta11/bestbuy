require_relative 'base_page'

class SearchResults < BasePage

  page_sections(:products, Product, class:'list-item')
  link(:cancel_popup, class:'go-to-cart')

end