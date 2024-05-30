*** Settings ***
Resource        ../POM/home/home.robot
Resource        ../POM/signIn/signIn.robot
Resource        ../POM/signOut/signOut.robot
Test Setup      Open Flight Application
Test Teardown   Close Flight Application   


*** Variables ***
${VALID_USERNAME}       support@ngendigital.com
${VALID_PASSWORD}       abc123

*** Test Cases ***
# Expected Success Back to Sign In Page, Actual Failed (Bug)
Successfuly Signed Out From Flight Page
    Verify Home Page Loaded
    Click Sign In Button On Home
    Verify Sign In Page
    Input Username                    ${VALID_USERNAME}
    Input User Password               ${VALID_PASSWORD}
    Click Sign In Button
    Verify Login Success
    Click Sign Out Button 
    Verify Sign In Page