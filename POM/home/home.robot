*** Settings ***
Resource        ../base.robot
Variables       home-locators.yaml

*** Keywords ***
Verify Home Page Loaded
    Wait Until Element Is Visible        ${login-button}    timeout=5s

Click Sign In Button On Home
    Click Element                        ${login-button}
