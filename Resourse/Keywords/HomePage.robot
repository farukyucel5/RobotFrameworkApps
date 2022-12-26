*** Settings ***
Library         SeleniumLibrary
Variables       ../Locators/Locator.py


*** Keywords ***
Click the create link
    Click Link    ${createAccountLink}
    Sleep    3s

Confirm the sign up
    Element Should Be Visible    ${logoutBtn}
    Sleep    3s
    

