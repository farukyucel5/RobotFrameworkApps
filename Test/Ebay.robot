*** Settings ***
Documentation       Basic search Functionality

Library             SeleniumLibrary


*** Variables ***
${link to go}       https://www.ebay.com/
${searchBox}        //input[@placeholder='Search for anything']
${submit button}    //input[@id='gh-btn']
${text}             40,000+ results for mobile


*** Test Cases ***
Verify basic search functionality for ebay
    [Documentation]    this test verifies the basic search for ebay
    [Tags]    functional

    Starting test case
    Verify search results
    Tear down the test


*** Keywords ***
Starting test case
    Open Browser    ${link to go}    chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10 seconds

Verify search results
    Input Text    ${searchBox}    mobile
    Press Keys    ${submit button}    Return
    Page Should Contain    ${text}

Tear down the test
    Sleep    2s
    Close Browser

