*** Settings ***
Library         SeleniumLibrary
Variables       ../Locators/Locator.py


*** Keywords ***
Click the create link
    Click Link    ${createAccountLink}
    Sleep    3s

Logout should be visible
    Element Should Be Visible    ${logoutBtn}
    Sleep    3s
Click log in link
    Click Link    ${loginBtn}    
    

