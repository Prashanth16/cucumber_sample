Given(/^Karan Visits "([^"]*)" website$/) do |visit_site|
  @app.search_flight.visit_site(visit_site)
end

Then(/^Karan clicks on "([^"]*)"$/) do |type_of_trip|
  @app.search_flight.type_of_trip
end

Then(/^Karan selects from place as "([^"]*)"$/) do |city_name|
  from_city_name = city_name
  @app.search_flight.search_for_from_place(from_city_name)
  sleep 10
end

Then(/^Karan selects to place as "([^"]*)"$/) do |city_name|
  to_city_name = city_name
  @app.search_flight.search_for_to_place(to_city_name)
  sleep 10
end

Then(/^Karan selects  from date as "([^"]*)"$/) do |date|
  from_date = date
  @app.search_flight.set_departure_date(from_date)
  sleep 10
end

Then(/^Karan selects to date as "([^"]*)"$/) do |date|
to_date = date
@app.search_flight.set_return_date(to_date)
sleep 10
end

Then(/^Karan selects the no of adults as "([^"]*)"$/) do |no_of_adults|
 no_of_adults = no_of_adults
 @app.search_flight.select_no_of_adults(no_of_adults)
 sleep 10
end

Then(/^Karan selects the no of children as "([^"]*)"$/) do |no_of_children|
  no_of_children = no_of_children
  @app.search_flight.select_no_of_children(no_of_children)
  sleep 15
end

Then(/^Karan clicks on search flights$/) do
  @app.search_flight.click_on_search_flights
  sleep 5
end

Then(/^Karan selects Cheapest flight from the list$/) do
   sleep 25
   @app.search_flight.select_lowest_flight_from_list
end

Then(/^Karan click on Book flight$/) do
   @app.search_flight.book_flight
end

Then(/^Booking should be successfully completed$/) do
  expect(@app.search_flight.success_message_on_booking).to eq ("Book in four simple steps")
end

Then(/^Karan should not be allowed to proceed to next page$/) do
  expect(@app.search_flight.error_message).to eq ("Sorry, but we can't continue until you fix everything that's marked in RED")
  expect(@app.search_flight.inline_error_message).to eq ("You missed this")
end
