require_relative 'base_page'

class WishList < BasePage
  div(:start_wishlist_creation, class:'create-list__bkgd spinnable')
  text_field(:list_name, class:'form-control create-list__list-name js-list-name')
  button(:confirm_list_name, class:'btn btn-link btn-link_hyperlink js-save create-list__button')
  div(:goto_recommend_items_page, class:'create-list sidebar__item sidebar__item_majorDivider')
  span(:go_to_settings, text:'Settings')

  def create_wish_list_with(list_name)
    self.list_name = list_name
    confirm_list_name
  end


end