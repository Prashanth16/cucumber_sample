class SearchBook

  include Capybara::DSL
  include Capybara::Node::Matchers

  def search_for_book(book_name)
    sleep 5
    find('#twotabsearchtextbox').set(book_name)
    find('.nav-search-submit .nav-input').click
  end

  def click_on_paperback_link(type_of_book)
    sleep 2
    collect_all = all('.a-size-base .a-link-normal',:text => type_of_book)
    collect_all[0].click
  end

  def check_if_book_title_exists?(book_title)
    sleep 2
    find('#productTitle').text
  end

  def click_on_add_cart
    find("#add-to-cart-button").click
  end

  def booking_confirmation_message
    confirmation_message = find('#huc-v2-order-row-confirm-text').text
    confirmation_message.include?("Added to Cart")
  end
end
