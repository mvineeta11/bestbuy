class BasePage

  include PageObject

  text_field(:search_bar, id:'gh-search-input')
  button(:search, class:'header-search-button')
  span(:total_items_in_cart, class:'count')
  link(:go_to_sign_in, class:'action-btn')
  link(:go_to_create_list_page, text:'Lists')

  def should_contain_text(text)
    wait_until(5,"#{text} failed to appear"){
      self.text.include? text
    }
  end
end