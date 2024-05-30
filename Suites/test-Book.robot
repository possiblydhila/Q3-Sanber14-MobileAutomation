*** Settings ***
Resource        ../POM/home/home.robot
Resource        ../POM/signIn/signIn.robot
Resource        ../POM/book/book.robot
Test Setup      Open Flight Application
Test Teardown   Close Flight Application   
Documentation   Link record https://youtu.be/JQf1K6703h8

*** Test Cases ***

Successfuly Data Book
   Berhasil Login 
   Click Book Button on Home
   Choose Country      Toronto
   Choose City         London 
   Choose Class        First
   Choose Start Date   12 Agustus 2019
   Choose End Date     26 Agustus 2019
   Flight
   Hotel
   Moredate
   Book
   Harga Bayar
   Bayar 


Book Without Select DATE
    Berhasil Login 
    Click Book Button on Home
    Choose Country      Chicago
    Choose City         Ottawa 
    Choose Class        Business
    Book
    Harga Bayar
    Bayar 

Book With One Way Date
   Berhasil Login 
   Click Book Button on Home
   Choose Country      New York
   Choose City         Paris 
   Choose Class        Economy
   Choose Start Date   14 Agustus 2019
   Flight
   Hotel
   Moredate
   Book
   Harga Bayar
   Bayar 