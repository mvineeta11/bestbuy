Given(/^I am on the Best Buy website$/) do
  visit(Welcome)
  on(Welcome) do |welcome_page|
    welcome_page.close_pop_up_element.click
    welcome_page.wait_until(10,'Cannot create account'){
      welcome_page.text.include? 'Account'
    }
  end
end

And(/^I don't have an account$/) do
  on(Welcome) do |welcome_page|
   # welcome_page.close_pop_up_element.click
    welcome_page.choose_to_create_account
    #welcome_page.should_contain_text 'Create a My Best Buy Account'
  end
end

When(/^I proffer valid details$/) do
  on(Welcome).goto_account_creation_page
  on(NewAccount).create_new_account "Steve",'Jobs','ashok.chadalavada@gmail.com','stevejobs1120','stevejobs1120','8603784497'
end

Then(/^I successfully create a Best Buy account$/) do
on(Profile).should_contain_text 'Steve'
end