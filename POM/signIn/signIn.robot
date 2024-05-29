*** Settings ***
Resource        ../base.robot
Resource        ../home/home.robot
Variables       signIn-locators.yaml

*** Keywords ***
Verify Sign In Page
    Wait Until Element Is Visible     ${verify-sign-in-page}    timeout=5s
Input Username
    [Arguments]                       ${username}   
    Input Text                        ${username-input}   ${username}

Input User Password 
    [Arguments]                       ${password}   
    Input Text                        ${password-input}   ${password}

Click Sign In Button
    Click Element                     ${sign-in-button}

Verify Login Success
    Wait Until Element Is Visible     ${verify-sign-in}    timeout=5s