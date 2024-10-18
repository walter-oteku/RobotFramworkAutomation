*** Settings ***
Documentation  Login Feature
Resource  Resources/keywords.robot
Variables  Resources/TestData/Testdata.py


*** Test Cases ***
User Logs in successfully
    Given user opens Chrome browser with URL ${automation_url}
    And user waits for 10sec
    And user enters user as user
    And user waits for 10sec
    And user enters user as pass
    And user clicks button login
    And user waits for 10sec
    Then user waits until Welcome to Our Travel Blog is visible
#    And user clicks button Log out
#    Then user waits until Test login is visible

Navigate to Home Page
    When user clicks link Home
    And user waits for 10sec
    Then user waits until Welcome to Our Travel Blog is visible
    And user waits for 10sec
    And verify data exists Adventure Awaits



Navigate to User Page
    When user clicks link User
    And user waits for 10sec
    Then user waits until Get in Touch is visible
    And user waits for 10sec
    And verify data exists If you have any questions, comments, or just want to say hello, please don't hesitate to reach out to us. We'd love to hear from you!

Navigate to Album Page
    When user clicks link Album
    And user waits for 10sec
    Then user waits until Introduction is visible
    And user waits for 10sec
    And verify data exists Visual Elements

Navigate to Photo Page
    When user clicks link Photo
    And user waits for 10sec
    Then user waits until Relax and Unwind is visible
    And user waits for 10sec
    And verify data exists Experience the thrill of traveling to unknown territories.



#User Searches for an Album or Photo
#
#    # Reuse Login steps
#    Given user opens Chrome browser with URL ${automation_url}
#    And user waits for 10sec
#    And user enters ${Username} as username
#    And user waits for 10sec
#    And user enters ${Password} as password
#    And user clicks button submit
#    And user waits until Logged In Successfully is visible
#
#    # Navigate to Album or Photo page
#    When user clicks on Album page link
#    Then user waits until Album page content is visible
#
#    # Perform search
#    When user enters "Vacation" into the search box
#    And user clicks on Search button
#    Then user waits until search results are visible
#    And user verifies that search results contain "Vacation"


# User logs out 
#     Given user selects button Profile
#     When user selects button Logout
#     And user terminates browser



