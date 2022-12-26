*** Settings ***
Library         SeleniumLibrary
Library         FakerLibrary
Variables       ../Locators/Locator.py


*** Keywords ***
Uyelik formunu doldur
    ${fake}    FakerLibrary.Name
    Input Text    ${firstname}    ${fake}

