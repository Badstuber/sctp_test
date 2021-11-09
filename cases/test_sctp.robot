*** Settings ***
Documentation    Tests to verify STCP connection and mesasage send
...              from cliend
Library     ../lib/SctpClient.py
Suite Teardown  Close Connection

*** Variables ***
${ipaddress}  testing_server_1
${port}       8000
${message}    Default Message


*** Test Cases ***
Test SCTP message functionality
    Create server connection       ${ipaddress}    ${port}
    Send message to server      ${message}

*** Keywords ***
Create server connection
    [Arguments]    ${ipaddress}    ${port}
    Connect To Server  ${ipaddress}    ${port}
Send message to server
    [Arguments]    ${message}
    Send message  ${message}
