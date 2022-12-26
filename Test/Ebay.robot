*** Settings ***
Documentation       Basic search Functionality

Resource            ../Resourse/Keywords/CommonFunctionality.robot
Resource            ../Resourse/Keywords/EbayUserDefinedKeywords.robot

Test Setup          Starting test case
Test Teardown       Tear down the test


*** Test Cases ***
Verify basic search functionality for ebay
    [Documentation]    this test verifies the basic search for ebay
    [Tags]    functional
    Verify search results

