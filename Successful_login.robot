*** Settings ***
Documentation  Login Feature
Resource  Resources/keywords.robot
Variables  Resources/TestData/Testdata.py


*** Test Cases ***
User Logs in successfully
    Given user opens Chrome browser with URL ${automation_url}
    And user waits for 4sec
    And user enters user as user
    And user waits for 4sec
    And user enters user as pass
    And user clicks button login
    And user waits for 5sec
    Then user waits until Welcome to Our Travel Blog is visible
