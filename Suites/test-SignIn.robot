*** Settings ***
Resource        ../POM/home/home.robot
Resource        ../POM/signIn/signIn.robot
Test Setup      Open Flight Application
Test Teardown   Close Flight Application   

*** Variables ***
${VALID_USERNAME}       support@ngendigital.com
${VALID_PASSWORD}       abc123
${INVALID_USERNAME}     support@ngendigital.con
${INVALID_PASSWORD}     invalidd
${BLANK_USERNAME}
${BLANK_PASSWORD}
${TEXT_ALERT}           Invalid username/password


*** Test Cases ***
Successfuly Signing In With Valid Credential
    Verify Home Page Loaded
    Click Sign In Button On Home
    Input Username                    ${VALID_USERNAME}
    Input User Password               ${VALID_PASSWORD}
    Click Sign In Button
    Verify Login Success

Failed Sign In With Blank Username And Valid Password
    Verify Home Page Loaded
    Click Sign In Button On Home
    Input Username                    ${BLANK_USERNAME}
    Input User Password               ${VALID_PASSWORD}
    Click Sign In Button
    Wait Until Page Contains          ${ALERT_TEXT}

Failed Login With Valid Username And Blank Password
    Verify Home Page Loaded
    Click Sign In Button On Home
    Input Username                    ${VALID_USERNAME}
    Input User Password               ${BLANK_PASSWORD}
    Click Sign In Button
    Wait Until Page Contains          ${ALERT_TEXT}

Failed Login With an Invalid Username And Password
    Verify Home Page Loaded
    Click Sign In Button On Home
    Input Username                    ${INVALID_USERNAME}
    Input User Password               ${INVALID_PASSWORD}
    Click Sign In Button
    Wait Until Page Contains          ${ALERT_TEXT}

Failed Login With a Valid Username And Invalid Password
    Verify Home Page Loaded
    Click Sign In Button On Home
    Input Username                    ${VALID_USERNAME}
    Input User Password               ${INVALID_PASSWORD}
    Click Sign In Button
    Wait Until Page Contains          ${ALERT_TEXT}

Failed Login With an Invalid Username And Valid Password
    Verify Home Page Loaded
    Click Sign In Button On Home
    Input Username                    ${INVALID_USERNAME}
    Input User Password               ${VALID_PASSWORD}
    Click Sign In Button
    Wait Until Page Contains          ${ALERT_TEXT}

Failed Login With Both Empty Username And Password
    Verify Home Page Loaded
    Click Sign In Button On Home
    Input Username                    ${BLANK_USERNAME}
    Input User Password               ${BLANK_PASSWORD}
    Click Sign In Button
    Wait Until Page Contains          ${ALERT_TEXT}