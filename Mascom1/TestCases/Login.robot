*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Login Test
    open browser    https://dev-mascomwireless-bpm.creatio.com/    chrome
    maximize browser window
    ${time}=    get selenium timeout
    log to console    Correct Timing
    log to console    ${time}
#    sleep    20 seconds
    set selenium speed    3 seconds
    set selenium timeout    60 seconds
    wait until page contains    Username
    input text    id:loginEdit-el   Supervisor
    input text    id:passwordEdit-el  Mascom@123
    click element    xpath://span[@id='t-comp19-textEl']
    close browser
