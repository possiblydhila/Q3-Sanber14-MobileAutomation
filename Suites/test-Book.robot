*** Settings ***
Resource        ../POM/home/home.robot
Resource        ../POM/signIn/signIn.robot
Resource        ../POM/book/book.robot
Test Setup      Open Flight Application
Test Teardown   Close Flight Application   


*** Test Cases ***

Successfuly Data Book
    Berhasil Login 
    Click Book Button on Home
    Choose Country      Toronto
    Choose City         Paris 
    Choose Class        First
    Choose Start Date   01 Agustus 2019
    Choose End Date       26 Agustus 2019
    Hotel
    Moredate
    Book