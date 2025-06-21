*** Settings ***
Library    Browser

*** Variables ***
${URL}                https://btech.com/en/
${SIGN_IN_SELECTOR}   a.customer-login-link.gtm-source-track

*** Test Cases ***
Click Sign In Link
    New Browser    headless=false
    New Page    ${URL}
    Wait For Elements State    ${SIGN_IN_SELECTOR}    visible
    Click    ${SIGN_IN_SELECTOR}
    Sleep    3s
    Close Browser
