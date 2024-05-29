*** Settings ***
Resource        ../base.robot
Variables       home-locators.yaml

*** Keywords ***
Verify Home Page Loaded
    Element Should Be Visible            ${verify-homepage}

Click Sign In Button On Home
    Click Element                        ${login-button}
