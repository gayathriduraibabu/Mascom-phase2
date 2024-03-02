*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py


*** Keywords ***
Open My Browser
    [Arguments]    ${SiteUrl}   ${Browser}
    open browser    ${SiteUrl}  ${Browser}
    MAXIMIZE BROWSER WINDOW

Login with username and password
        [Arguments]    ${userName}     ${passWord}
        set selenium speed    3 seconds
        set selenium timeout    10 seconds
        wait until page contains    Version     120
        input text      ${txt_loginUserName}    ${userName}
        input text      ${txt_loginPassword}    ${passWord}
        click element    ${btn_signIn}

Verify Successfull Login
        title should be    Creatio
        wait until page contains     All apps     60

Create New PR Request
        click element    ${ele_purchaseReq}
        wait until page contains    Purchase Requisition    60
        click button    ${btn_newPurchaseReq}
        wait until page contains    Requester information   60
        select from list by value    //input[@id='f513cd57-f472-d543-c95a-2f27a92b7d42']   psiog


close my Browser
        close all browsers
