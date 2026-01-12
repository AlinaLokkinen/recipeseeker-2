*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    http://localhost:5173/randomizer
${browser}    chrome

*** Test Cases ***
Check For Dropdown List
    Open Browser    ${url}    ${browser}
    Page Should Contain List    categoryDropdown
    Close Browser

Choose Category From Dropdown List
    Open Browser    ${url}    ${browser}
    Wait Until Page Contains Element    locator=categoryDropdown
    Click Element    locator=categoryDropdown  
    Select From List By Index    categoryDropdown    1
    Click Element    locator=categoryDropdown
    List Selection Should Be    categoryDropdown    Chicken
    Close Browser

Check For Button
    Open Browser    ${url}    ${browser}
    Wait Until Page Contains Element    locator=randomizerButton
    Close Browser

