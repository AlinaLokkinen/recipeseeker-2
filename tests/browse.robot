*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    http://localhost:5173/categories
${browser}    chrome

*** Test Cases ***
Page opens
    Open Browser    ${url}    ${browser}
    Wait Until Page Contains    Browse recipes by category
    Close Browser

Page contains list of categories
    Open Browser    ${url}    ${browser}
    Wait Until Page Contains    Browse recipes by category
    Page Should Contain Element    locator=categoryList
    Close Browser

List of recipes opens when category is pressed
    Open Browser    ${url}    ${browser}
    Wait Until Page Contains    Browse recipes by category
    Click Button    Beef
    Wait Until Page Contains    Beef recipes
    Close Browser