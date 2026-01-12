*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    http://localhost:5173/categories/Beef
${browser}    chrome


*** Test Cases ***
Recipe opens
    Open Browser    ${url}    ${browser}
    Wait Until Page Contains    Beef recipes
    Click Button    locator=r1
    Wait Until Page Contains    Ingredients
    Sleep    2s
    Close Browser

Page contains link to categorylist
    Open Browser    ${url}    ${browser}
    Wait Until Page Contains    Beef recipes
    Click Button    locator=r1
    Wait Until Page Contains    Ingredients
    Page Should Contain Link    Beef
    Close Browser

Categorylist opens when link is clicked
    Open Browser    ${url}    ${browser}
    Wait Until Page Contains    Beef recipes
    Click Button    locator=r1
    Wait Until Page Contains    Ingredients
    Click Link    Beef
    Wait Until Page Contains    Beef recipes
    Close Browser

Page contains image
    Open Browser    ${url}    ${browser}
    Wait Until Page Contains    Beef recipes
    Click Button    locator=r1
    Wait Until Page Contains    Ingredients
    Page Should Contain Image    img1
    Close Browser