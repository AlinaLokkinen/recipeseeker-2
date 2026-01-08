*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Check For Dropdown List
    Open Browser    url=http://localhost:5173/    browser=chrome
    Click Button    RANDOM
    Page Should Contain List    categoryDropdown
    Close Browser

Choose Category From Dropdown List
    Open Browser    url=http://localhost:5173/    browser=chrome
    Click Button    RANDOM
    Wait Until Page Contains Element    locator=categoryDropdown
    Click Element    locator=categoryDropdown  
    Select From List By Index    categoryDropdown    1
    Click Element    locator=categoryDropdown
    List Selection Should Be    categoryDropdown    Chicken
    Close Browser

Check For Button
    Open Browser    url=http://localhost:5173/    browser=chrome
    Click Button    RANDOM
    Wait Until Page Contains Element    locator=randomizerButton
    Close Browser

