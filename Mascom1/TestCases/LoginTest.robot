*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Resource    ./test_firsttest.py


*** Variables ***
${Browser}  chrome
${SiteUrl}  https://dev-mascomwireless-bpm.creatio.com/
${username}     User1
${password}     Mascom@123

*** Test Cases ***
Login Test
    Open My Browser     ${SiteUrl}  ${Browser}
    Login with username and password  ${username}     ${password}
    wait until page contains    Creatio
    Verify Successfull Login
    Create New PR Request
    close my Browser

