@all_questions

Feature: Sandhya loves reading books, non-fiction, especially on her Kindle. So Karan’s planning to gift her a book that’s been on her wishlist for some time now.
The name of the book is  “A Brief History of Everyone Who Ever Lived” and is available on Amazon for the lowest price.
 He would like to paperback edition so his daughter and he can write a lovely message for Sandhya.
 Since RBI requires OTP for online transactions, you can take him till the payment gateway and he’ll take it from there.

  Scenario: Search for Book with title A Brief History of Everyone Who Ever Lived

    Given Karan Visits "amazon" website
    And Karan would like to search for "A Brief History of Everyone Who Ever Lived"
    And He clicks on "Paperback" link
    Then I should see "A Brief History of Everyone Who Ever Lived: The Human Story Retold Through Our Genes" as Product title
    Then I click on Add to cart
    Then I should see Add to cart confirmation page
