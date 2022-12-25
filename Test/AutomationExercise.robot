*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${BaseUrl}          https://automationexercise.com/
${testElement1}     //*[text()=' Test Cases']


*** Test Cases ***
test01
    Open Browser    ${BaseUrl}    chrome
    Maximize Browser Window

    Sleep    3s

    Get WebElement    ${testElement1}
    Click Element    ${testElement1}

    Sleep    2s

    Close Browser

