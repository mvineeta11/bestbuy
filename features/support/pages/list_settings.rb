require_relative 'base_page'

class ListSettings < BasePage
  button(:continue_list_deletion, id:'js-delete-list')
  button(:confirm_list_deletion, text:'Yes, Delete My List')
end