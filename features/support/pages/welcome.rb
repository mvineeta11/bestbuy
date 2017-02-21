require_relative 'base_page'

class Welcome < BasePage
  page_url BASE_URL

  link(:choose_to_create_account, id:'profileMenuWrap1')
  link(:goto_account_creation_page, text:'Create a My Best Buy Account')
  span(:close_pop_up, text:'×')
  span(:result_count, class:'value-result-count')
  link(:choose_to_create_registry, text:'Registry')


  def search_for(item_name)
    self.search_bar = item_name
    search
  end
end