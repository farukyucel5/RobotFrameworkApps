*** Settings ***
Documentation       Gala furniture website test case

Library             SeleniumLibrary
Resource            ../Resourse/Keywords/HomePage.robot
Resource            ../Resourse/Keywords/RegisteredPage.robot
Resource            ../Resourse/Keywords/LoginPage.robot

Test Setup          Open Browser    ${URL}    ${BROWSER}


*** Test Cases ***
Create a new account
    Maximize Browser Window
    Click the create link
    Uyelik formunu doldur
    Logout should be visible

login test
    [Documentation]    log in with a valid email and password
    Maximize Browser Window
    Click log in link
    pass in valid email and password    ${emailStr}    ${passwordStr}

