*** Settings ***
Library   AppiumLibrary
Resource    Resources/Keywords.robot

Suite Setup   Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Test Tab Family My Schedule Window
    [Tags]    Automation

    Open App
    Page Home E-hub
    # NGG-TC-138
    Home - My Schedule
     # NGG-TC-139
    Navigation between Months - My Schedule
    # NGG-TC-140
    Select days in the monthly calendar - My Schedule
    # NGG-TC-142
    Clic on days in the monthly calendar - My Schedule
    # NGG-TC-144
    Back to today - My Schedule
     # NGG-TC-146
    Select and enter to Activities - My Schedule
     # NGG-TC-148
    Register activity - My Schedule
    # NGG-TC-147
    Enter and unregister in an activity - My Schedule

