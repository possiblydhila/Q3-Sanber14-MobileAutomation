*** Settings ***
Resource        ../base.robot
Resource        ../home/home.robot
Resource        ../signIn/signIn.robot
Variables       book-locators.yaml


*** Variables ***
${VALID_USERNAME}       support@ngendigital.com
${VALID_PASSWORD}       abc123

*** Keywords ***

Berhasil Login 
    Verify Home Page Loaded
    Click Sign In Button On Home
    Verify Sign In Page
    Input Username                    ${VALID_USERNAME}
    Input User Password               ${VALID_PASSWORD}
    Click Sign In Button
    Verify Login Success
    
Verify Book Page
    Wait Until Element Is Visible     ${verify-book}    timeout=5s

Choose Country
    [Arguments]                        ${county}
    Wait Until Element Is Visible    xpath= ${county-button}  5s
    Click Element                     xpath= ${county-button}
    Wait Until Element Is Visible     xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="${county}"]    5s
    Click Element                     xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="${county}"]

Choose City
    [Arguments]    ${city}
    Wait Until Element Is Visible    xpath= ${city-button}   5s
    Click Element                    xpath=${city-button} 
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="${city}"]    5s
    Click Element                    xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="${city}"]

Choose Class
    [Arguments]    ${class}
    Wait Until Element Is Visible    xpath=${class-button}    5s
    Click Element                    xpath=${class-button}  
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="${class}"]    5s
    Click Element                    xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="${class}"]
  
Choose Start Date
    [Arguments]    ${date}
    Wait Until Element Is Visible    xpath=${start-button}    5s
    Click Element                    xpath=${start-button}
    Wait Until Element Is Visible    xpath=//android.view.ViewGroup[@resource-id="android:id/date_picker_day_picker"]
    Click Element                    xpath=//android.view.View[@content-desc="${date}"]
    Click Element                    xpath= //android.widget.Button[@resource-id="android:id/button1"]

Choose End Date
    [Arguments]    ${date2}
    Wait Until Element Is Visible    xpath= ${end-button}    5s
    Click Element                    xpath= ${end-button}  
    Wait Until Element Is Visible    xpath=//android.view.View[@content-desc="${date2}"]    5s
    Click Element                    xpath=//android.view.View[@content-desc="${date2}"]
    Click Element                    xpath=//android.widget.Button[@text='OKE']

Flight
    Wait Until Element Is Visible    ${flight-button}    5s
    Click Element    xpath=${flight-button}

Hotel
    Wait Until Element Is Visible    ${hotel-button}    5s
    Click Element    xpath=${hotel-button}

Moredate
    Wait Until Element Is Visible    ${day-button}    5s
    Click Element    xpath=${day-button}

Book
    Click Element    ${booking-button}

