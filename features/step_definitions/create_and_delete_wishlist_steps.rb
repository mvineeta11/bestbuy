Given(/^I login with valid credentials into Best Buy website$/) do
  visit(Welcome)
  on(Welcome) do |welcome_page|
    welcome_page.close_pop_up_element.click
    welcome_page.wait_until(10,'Cannot login'){
      welcome_page.text.include? 'Account'
    }
    welcome_page.choose_to_create_account
    welcome_page.go_to_sign_in
  end
  on(Login).login_with 'vinni.mandava92@gmail.com','stevejobs1120'
end

When(/^I create a wish list$/) do
  on(Welcome) do |welcome_page|
    welcome_page.choose_to_create_account
    welcome_page.go_to_create_list_page
  end
  on(WishList) do |wishlist_page|
    wishlist_page.start_wishlist_creation_element.click
    wishlist_page.create_wish_list_with 'Favorite'
  end

end

Then(/^I successfully create a wish list$/) do
  on(WishList).should_contain_text 'Favorite'
end

When(/^I delete the wish list$/) do
  on(WishList).go_to_settings_element.click
  on(ListSettings) do |edit_list_settings_page|
    edit_list_settings_page.continue_list_deletion
    edit_list_settings_page.confirm_list_deletion
  end
end

Then(/^I successfully delete the list$/) do
  on(WishList)
end