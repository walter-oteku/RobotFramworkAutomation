*** Settings ***
Documentation  Login Functionality

Resource  Common.robot
Variables  TestData/Testdata.py


*** Keywords ***
user opens ${browser} browser with URL ${site_url}
    Common.open normal browser ${site_url} ${browser} 

user clicks button ${buttonName}
    Common.click button ${buttonName}

user enters ${credentials} as ${credentialsfield}
    [Tags]  Login
    Common.enters field ${credentialsfield} enter ${credentials}

user waits until ${Text} is visible
    Common.wait for visibility ${Text}


user clicks link ${linkName}
    Common.clicks link ${linkName}

user waits for ${time}
    Common.wait seconds ${time}

user inputs ${inputValue} as ${inputField}
    Common.input field ${inputField} enter ${inputValue}

verify data exists ${data}
    Common.verify exists ${data}

verify option exists ${option}
    Common.verifies exists ${option}

user selects button ${value1}
    Common.select button ${value1}


