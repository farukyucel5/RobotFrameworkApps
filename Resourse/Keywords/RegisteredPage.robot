*** Settings ***
Library         SeleniumLibrary
Library         FakerLibrary
Variables       ../Locators/Locator.py
Variables       ../TestData/TestData.py


*** Keywords ***
Uyelik formunu doldur
    ${fake}    FakerLibrary.Name
    Input Text    ${firstname}    ${fake}
    ${fake2}    FakerLibrary.Last Name
    Input Text    ${lastname}    ${fake2}

    Input Text    ${email}    ${emailStr}
    Input Password    ${password}    ${passwordStr}

    Click Button    ${createButonu}

