*** Settings ***
Documentation  Login Feature
Resource  Resources/keywords.robot
Variables  Resources/TestData/Testdata.py


*** Test Cases ***
Test Unsuccessful Login
   Given user opens Chrome browser with URL ${automation_url}
   When user enters test as user
   And user enters 1234 as pass
   And user clicks button submit
   And user waits for 5sec
   Then verify data exists Invalid Username and Password Combination
