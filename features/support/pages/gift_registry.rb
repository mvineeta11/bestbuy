require_relative 'base_page'

class GiftRegistry < BasePage
  link(:goto_create_registry_page, class:'registry-header__create')
  text_field(:co_registrant_first_name, name:'co-registrant-first-name')
  text_field(:co_registrant_last_name, name:'co-registrant-last-name')
  text_field(:wedding_date, name:'occasion-date')
  button(:submit_details, class:'btn-primary')

  def create_gift_registry_for(first_name,last_name,wedding_date)
    goto_create_registry_page
    self.co_registrant_first_name = first_name
    self.co_registrant_last_name = last_name
    self.wedding_date = wedding_date
    submit_details
  end
end