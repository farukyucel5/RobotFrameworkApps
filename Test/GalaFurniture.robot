*** Settings ***
Library         SeleniumLibrary
Resource        ../Resourse/Keywords/HomePage.robot
Resource        ../Resourse/Keywords/RegisteredPage.robot
Variables       ../Resourse/TestData/TestData.py

Test Setup      Open Browser    ${URL}    ${BROWSER}


*** Test Cases ***
Create a new account
    Maximize Browser Window
    Click the create link
    Uyelik formunu doldur
