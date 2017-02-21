When(/^I search for items that I would like to buy$/) do
on(Welcome).search_for 'laptop'
end

Then(/^a list of related items is displayed$/) do
  on(Welcome) do |welcome_page|
    welcome_page.should_contain_text 'All Laptops'
    count_text = welcome_page.result_count
    count_size = count_text.size
    count = count_text[1..count_size-2].to_i
    expect(count).to be > 1
  end
end

And(/^I add selected items to cart$/) do
  on(SearchResults) do |results|
    results.products[1].add_to_cart
    results.cancel_popup
  end
end

Then(/^items are successfully added to cart$/) do
count_text = on(Cart).total_items_in_cart
  total_count = count_text.to_i
  expect(total_count).to eq 2
end

When(/^I remove items from the cart$/) do
  on(Cart).remove_item_from_cart
end

Then(/^items are removed successfully$/) do
  on(Cart).should_contain_text 'Your Cart is empty'
end