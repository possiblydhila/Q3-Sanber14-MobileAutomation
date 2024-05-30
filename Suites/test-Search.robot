*** Settings ***
Resource        ../POM/home/home.robot
Resource        ../POM/signIn/signIn.robot
Resource        ../POM/search/search.robot
Test Setup      Open Flight Application
Test Teardown   Close Flight Application  

*** Variables ***
${VALID_USERNAME}           support@ngendigital.com
${VALID_PASSWORD}           abc123
${EMPTY_FLIGHT_NUMBER}      

*** Keywords ***
Successfuly Signing In With Valid Credential
    Verify Home Page Loaded
    Click Sign In Button On Home
    Verify Sign In Page
    Input Username                            ${VALID_USERNAME}
    Input User Password                        ${VALID_PASSWORD}
    Click Sign In Button
    Verify Login Success

Search For A Flight Number 
    [Arguments]                                 ${flight_number}
    Click Search Menu
    Input Flight Number                         ${flight_number}  
    Click Search Button
    IF   '${flight_number}' != 'CADX2214'
        Alert Toast Popped Up  
    END

*** Test Cases ***
Successfully Search For A Valid Flight Number
    Successfuly Signing In With Valid Credential
    Search For A Flight Number                    CADX2214

Failed To Search For Invalid Flight Number
    Successfuly Signing In With Valid Credential
    Search For A Flight Number                    invalidnumber
    Alert Toast Popped Up  

Failed To Search With An Empty Flight Number
    Successfuly Signing In With Valid Credential
    Search For A Flight Number                    ${EMPTY_FLIGHT_NUMBER}
    Alert Toast Popped Up