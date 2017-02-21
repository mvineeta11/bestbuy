When(/^I choose to create a gift registry$/) do
  on(Welcome) do |welcome_page|
    welcome_page.wait_until(10,'Cannot create account'){
      welcome_page.text.include? 'Account'
    }
    welcome_page.choose_to_create_account
    welcome_page.choose_to_create_registry
  end
end

And(/^I enter registry details$/) do
  on(GiftRegistry).create_gift_registry_for 'John','Williams','02/28/2017'
  #on(ReceiverDetails).send_gifts_to 'John', 'Williams','1801 E 12th st','apt 1418','Cleveland','OH - Ohio','44115','8603784455'
  on(ReceiverDetails).submit_credentials
  on(RegisterVisibility).register_visibility_details
end

Then(/^I successfully create my gift registry$/) do
  on(RegistryManagement).should_contain_text 'My Registry'
end

Given(/^I am on Registry Management page$/) do
  on(RegistryManagement)
end

When(/^I delete gift registry$/) do
  on(RegistryManagement).goto_edit_registry_page
  on(EditRegistry) do |edit_registry_page|
    edit_registry_page.delete_gift_registry
    edit_registry_page.confirm_registry_deletion
  end
end

Then(/^I successfully delete my gift registry$/) do
  on(Profile).should_contain_text 'Steve'
end