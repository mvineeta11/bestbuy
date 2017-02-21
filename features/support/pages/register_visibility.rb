require_relative 'base_page'

class RegisterVisibility < BasePage
  checkbox(:visible_on_rigistry_website, class:'js-privacy-myRegistry')
  checkbox(:visible_on_myknot_website, class:'js-privacy-theKnot')
  button(:create_registry, class:'btn-primary')

  def register_visibility_details
    visible_on_rigistry_website_element.click
    visible_on_myknot_website_element.click
    create_registry
  end
end