*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${searchBox}        //input[@placeholder='Search for anything']
${submit button}    //input[@id='gh-btn']
${text}             results for mobile
${condition}        //span[text()='Condition']
${filter new}       (//span[text()='New'])[2]
${verifyNew}        //div[text()='New']


*** Keywords ***
Verify search results
    Input Text    ${searchBox}    mobile
    Press Keys    ${submit button}    Return
    Page Should Contain    ${text}

Filter results by condition
    Mouse Over    ${condition}
    Click Element    ${condition}
    Mouse Down    ${filter new}
    Click Element    ${filter new}

Verify filter results
    Element Should Contain    ${verifyNew}    New

