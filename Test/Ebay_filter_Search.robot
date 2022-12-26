*** Settings ***
Documentation       Basic search Functionality

Resource            ../Resourse/Keywords/CommonFunctionality.robot
Resource            ../Resourse/Keywords/EbayUserDefinedKeywords.robot


*** Test Cases ***
Ebay fiter test
    [Documentation]    This test case verify the filtered data
    [Tags]    functional

    Starting test case
    Verify search results
    Filter results by condition
    Verify filter results
    Tear down the test

