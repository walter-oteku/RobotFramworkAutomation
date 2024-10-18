*** Settings ***
Library     SeleniumLibrary    
Library     String


*** Variables ***
${JSPath}=      document.querySelector('messsage-format').shadowRoot
...             .querySelector('')


*** Keywords ***
Open normal Browser ${site_url} ${browser}
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].EdgeOptions()    sys, selenium.webdriver
    
    Create WebDriver    ${browser}    options=${options}
    Maximize Browser Window
    Go to   ${site_url}


click button ${buttonName}
    Click Element  //a[text()='${buttonName}']|//button[@*='${buttonName}']|//a[normalize-space()='${buttonName}']|//input[@*='${buttonName}']|//button[text()='${buttonName}']|//span[normalize-space()='${buttonName}']|//div[@*='${buttonName}']

enters field ${credentialsfield} enter ${credentials}
    Input Text
    ...    //input[@*='${credentialsfield}']|//textarea[@*='${credentialsfield}']|//select[@*='${credentialsfield}']|//select[@id='${credentialsfield}']
    ...    ${credentials}

wait for visibility ${Text}
    Wait Until Page Contains Element
    ...    //*[text()='${Text}']|//*[normalize-space()='${Text}']|//*[@id='${Text}']|//i[@class='${Text}']
    ...    100
    ...    none

clicks link ${linkName}
    Click Element    //a[@*='${linkName}']|//a[normalize-space()='${linkName}']

wait seconds ${time}
    Sleep    ${time}

input field ${inputField} enter ${inputValue}
    Input Text
    ...    //input[@*='${inputField}']|//textarea[@*='${inputField}']|//select[@*='${inputField}']
    ...    ${inputValue}

user unselect Frame
    Unselect Frame

verify exists ${data}
    Page Should Contain Element    //span[normalize-space()="${data}"]|//*[text()="${data}"]

verifies exists ${option}
    Element Text Should Be    dom:${JSPath}    ${option}

select button ${value1}
    Click Element    //a[normalize-space()='${value1}']

*** Settings ***
Library  SeleniumLibrary



