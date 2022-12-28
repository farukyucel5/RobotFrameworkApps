*** Settings ***
Library         SeleniumLibrary
Variables       ../Locators/Locator.py
Variables       ../TestData/TestData.py


*** Keywords ***
pass in valid email and password
    [Arguments]    ${emailStr}    ${passwordStr}
    Input Text    ${emailInput}    ${emailStr}
    Input Password    ${passwordInput}    ${passwordStr}


    Click Button    ${signUpBtn}

