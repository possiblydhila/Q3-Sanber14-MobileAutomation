*** Settings ***
Resource        ../base.robot
Resource        ../home/home.robot
Variables       signIn-locators.yaml

*** Keywords ***
Verify Sign In Page
    Element Should Be Visible         ${verify-homepage}
Input Username
    Verify Sign In Page 
    [Arguments]                       ${username}   
    Input Text                        ${username-input}   ${username}

Input User Password 
    [Arguments]                       ${password}   
    Input Text                        ${password-input}   ${password}

Click Sign In Button
    Click Element                     ${sign-in-button}

Verify Login Success
    Element Should Be Visible         ${verify-sign-in}