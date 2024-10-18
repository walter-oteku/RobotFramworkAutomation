*** Settings ***
Documentation  Login Feature
Resource  Resources/keywords.robot
Variables  Resources/TestData/Testdata.py


*** Test Cases ***
User Searches a product successfully
    Given user opens Chrome browser with URL ${search_url}
    And user waits for 10sec
    And user enters Blue Top as search
    And user waits for 10sec
    And user clicks button submit_search
    And user waits for 10sec
    And verify data exists Blue Top
    Then user waits until Blue Top is visible
