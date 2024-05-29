*** Settings ***
Resource        ../base.robot
Resource        ../home/home.robot
Variables       book-locators.yaml

*** Keywords ***
Verify Book Page
    Wait Until Element Is Visible     ${verify-book}    timeout=5s
