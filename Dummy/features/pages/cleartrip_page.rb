class SearchFlight
  include Capybara::DSL
	include Capybara::Node::Matchers

def visit_site(site_name)
  visit "https://www.#{site_name}.com"
end

def type_of_trip
  choose 'Round trip'
end

def search_for_from_place(from_city_name)
  page.find('#FromTag').set(from_city_name)
  page.find('.row.content').click
end

def search_for_to_place(to_city_name)
  page.find('#ToTag').set(to_city_name)
  page.find('.row.content').click
end

def set_departure_date(from_date)
  page.has_css?("#DepartDate")
  sleep 10
  page.find("#DepartDate").set(from_date)
  page.find('.row.content').click
end


def set_return_date(to_date)
  page.has_css?("#ReturnDate")
  sleep 10
  page.find("#ReturnDate").set(to_date)
  page.find('.row.content').click
end

def select_no_of_adults(no_of_adults)
  page.has_css?("#Adults")
  page.find('#Adults').find(:xpath, 'option[1]').select_option
end

def select_no_of_children(no_of_children)
  page.has_css?("#Childrens")
  page.find('#Childrens').find(:xpath, 'option[1]').select_option
end

def click_on_search_flights
  page.has_css?("#SearchBtn")
  page.find("#SearchBtn").click
end

def select_lowest_flight_from_list
   page.has_css?('.current.sortAsc')
end

def book_flight
  page.has_css?('.booking.fRight')
  page.find('.booking.fRight').click
end

def error_message
  page.find('#homeErrorMessage').text
end

def inline_error_message
  page.find('.errorLabel').text
end

def success_message_on_booking
  page.find('.pageTitle').text
end

end
