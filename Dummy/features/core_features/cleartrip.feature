@all_questions

Feature: Book a Cheapest Flight from Bangalore to Delhi
Karan’s wife Sandhya is currently on a business trip in Delhi.
Their wedding anniversary is two weeks from now.
So Karan is planning to surprise his wife by wishing her in person.

@cleartrip
Scenario: Search flights from Bangalore to Delhi
  Given Karan Visits "cleartrip" website
  Then Karan clicks on "RoundTrip"
  Then Karan selects from place as "Bangalore"
  Then Karan selects to place as "Delhi"
  Then Karan selects  from date as "30/05/2019"
  Then Karan selects to date as "31/05/2019"
  Then Karan selects the no of adults as "1"
  Then Karan selects the no of children as "1"
  Then Karan clicks on search flights
  Then Karan selects Cheapest flight from the list
  Then Karan click on Book flight
  Then Booking should be successfully completed

@cleartrip1
Scenario: Karan should not be allowed to Navigate to flights list page, if return date is not entered

  Given Karan Visits "cleartrip" website
  Then Karan clicks on "RoundTrip"
  Then Karan selects from place as "Bangalore"
  Then Karan selects to place as "Delhi"
  Then Karan selects  from date as "30/05/2019"
  Then Karan clicks on search flights
  Then Karan should not be allowed to proceed to next page

  Scenario: Karan should not be allowed to navigate to flights list page, if departure date is not entered

    Given Karan Visits "cleartrip" website
    Then Karan clicks on "RoundTrip"
    Then Karan selects from place as "Bangalore"
    Then Karan selects to place as "Delhi"
    Then Karan selects to date as "31/05/2019"
    Then Karan clicks on search flights
    Then Karan should not be allowed to proceed to next page

  Scenario: Karan should not be allowed to navigate to flights list page, if departure place is not entered

    Given Karan Visits "cleartrip" website
    Then Karan clicks on "RoundTrip"
    Then Karan selects to place as "Delhi"
    Then Karan selects  from date as "30/05/2019"
    Then Karan selects to date as "31/05/2019"
    Then Karan clicks on search flights
    Then Karan should not be allowed to proceed to next page

  Scenario: Karan should not be allowed to navigate to flights list page, if return place is not entered

    Given Karan Visits "cleartrip" website
    Then Karan clicks on "RoundTrip"
    Then Karan selects from place as "Bangalore"
    Then Karan selects  from date as "30/05/2019"
    Then Karan selects to date as "31/05/2019"
    Then Karan clicks on search flights
    Then Karan should not be allowed to proceed to next page
