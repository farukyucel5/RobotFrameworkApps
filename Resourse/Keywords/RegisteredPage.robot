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

    ${fake3}    FakerLibrary.Email
    Input Text    ${email}    ${fake3}
    ${fake4}    FakerLibrary.Password    
    Input Password    ${password}    ${passwordStr}

    Click Button    ${createButonu}

