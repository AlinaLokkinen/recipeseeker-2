*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    http://localhost:5173/ 
${browser}    chrome

*** Test Cases ***
Open Front Page
    Open Browser    ${url}    ${browser}
    Page Should Contain    Recipe Seeker
    Close Browser

Check For Buttons
    Open Browser    ${url}    ${browser}
    Page Should Contain Button    RANDOM
    Page Should Contain Button    BROWSE
    Close Browser

Click On Random Button
    Open Browser    ${url}    ${browser}
    Click Button    locator=RANDOM
    Wait Until Page Contains  Can't decide? Let Recipe Seeker choose for you!
    Close Browser

Click on Browse Button
    Open Browser    ${url}    ${browser}
    Click button    locator=BROWSE
    Wait Until Page Contains  Browse recipes by category
    Close Browser

