*** Settings ***
Documentation       Common keywords

Library             SeleniumLibrary


*** Variables ***
${link to go}       https://www.ebay.com/


*** Keywords ***
Starting test case
    Open Browser    ${link to go}    chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10 seconds

Tear down the test
    Sleep    2s
    Close Browser

