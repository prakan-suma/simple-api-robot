*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    http://vm2:8000

*** Test Cases ***
Test Plus API
    Create Session    api    ${BASE_URL}
    ${resp}=    GET    api/plus/5/6
    Should Be Equal As Integers    ${resp.status_code}    200
    Should Be Equal As Integers    ${resp.json()['result']}    11
