*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Front Page
    Open Browser    url=http://localhost:5173/    browser=chrome
    Page Should Contain    Recipe Seeker
    Close Browser

Check For Buttons
    Open Browser    url=http://localhost:5173/    browser=chrome
    Page Should Contain Button    RANDOM
    Page Should Contain Button    BROWSE
    Close Browser

Click On Random Button
    Open Browser    url=http://localhost:5173/    browser=chrome
    Click Button    locator=RANDOM
    Page Should Contain    Can't decide? Let Recipe Seeker choose for you!
    Close Browser

Click on Browse Button
    Open Browser    url=http://localhost:5173/    browser=chrome
    Click button    locator=BROWSE
    Wait Until Page Contains  Browse recipes by category
    # Page Should Contain    Browse recipes by category
    Close Browser

