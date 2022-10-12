*** Settings ***
Library   AppiumLibrary
Resource    Resources/Keywords.robot

Suite Setup   Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Test Tab Family Faith Window
    [Tags]    Automation

    Open App
    Page Home E-hub
    # NGG-TC-150
    Home-Faith
    # NGG-TC-151
    Tab Family - Faith - Enter To Libraries
    # NGG-TC-152
    Tab Family - Faith - Christian Library - Enter to Purposes