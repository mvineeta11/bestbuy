Given(/^I have a Best Buy account$/) do
  visit(Welcome)
  on(Welcome) do |welcome_page|
    welcome_page.close_pop_up_element.click
    welcome_page.wait_until(10,'Cannot login'){
      welcome_page.text.include? 'Account'
    }
    welcome_page.choose_to_create_account
    welcome_page.go_to_sign_in
  end
end

When(/^I login with valid credentials$/) do
  on(Login).login_with 'vinni.mandava92@gmail.com','stevejobs1120'
end

Then(/^I successfully login$/) do
  on(Welcome).should_contain_text 'Hi, Steve'
end