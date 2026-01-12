*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    http://localhost:5173/
${browser}    chrome

*** Test Cases ***
Check that 'randomizer' page contains navbar
    Open Browser    ${url}    ${browser}
    Click Button    RANDOM
    Page Should Contain Element    navbar
    Close Browser

Check that 'browse' page contains navbar
    Open Browser    ${url}    ${browser}
    Click Button    BROWSE
    Wait Until Page Contains    Browse recipes by category
    Page Should Contain Element    navbar
    Close Browser

Navbar button 'RANDOM' takes to randomizer
    Open Browser    ${url}    ${browser}
    Click Button    BROWSE
    Wait Until Page Contains Element    navbar
    Click Button    RANDOM
    Wait Until Page Contains    Can't decide? Let Recipe Seeker choose for you!
    Close Browser

Navbar button 'BROWSE' takes to randomizer
    Open Browser    ${url}    ${browser}
    Click Button    RANDOM
    Wait Until Page Contains Element    navbar
    Click Button    BROWSE
    Wait Until Page Contains    Browse recipes by category
    Close Browser
