require_relative 'base_page'

class EditRegistry < BasePage
  link(:delete_gift_registry, class:'settings-page__delete-button')
  button(:confirm_registry_deletion, class:'js-confirm')
end