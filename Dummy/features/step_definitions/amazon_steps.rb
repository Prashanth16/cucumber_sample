Then(/^Karan would like to search for "([^"]*)"$/) do |book_name|
  @app.search_book.search_for_book(book_name)
end

And(/^He clicks on "([^"]*)" link$/) do |type_of_book|
  @app.search_book.click_on_paperback_link(type_of_book)
end

Then(/^I should see "([^"]*)" as Product title$/) do |book_title|
  expect(@app.search_book.check_if_book_title_exists?(book_title)).to eq (book_title)
end

Then(/^I click on Add to cart$/) do
  @app.search_book.click_on_add_cart
end

Then(/^I should see Add to cart confirmation page$/) do
  sleep 2
  expect(@app.search_book.booking_confirmation_message).to be true
end
