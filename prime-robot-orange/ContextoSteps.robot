*** Settings ***
Documentation       esse arquivo contem as keywords

Resource            config.robot

*** Variables ***
${URL}              https://opensource-demo.orangehrmlive.com/
${BROWSER}          Chrome
${fieldUser}        name=username
${fieldPwd}         name=password
${buttonLogin}      xpath=//button[@type="submit"]
${elementMenu}      xpath=//nav[@class="oxd-navbar-nav"]


*** Keywords ***
Nova sessao
    Start Video Recording
    Open Browser    ${URL}    ${BROWSER}
    ...             options=add_experimental_option("detach", True)
    Maximize Browser Window
    Set Browser Implicit Wait    60
    Wait Until Element Is Visible    ${buttonLogin}    60

Encerra sessao
    Close Browser
    Stop Video Recording

Dado que realizo login no sistema com usuario "${user}" e senha "${pwd}"
    Wait Until Element Is Visible    ${fieldUser}    30
    Input Text    ${fieldUser}    ${user}
    Input Password    ${fieldPwd}    ${pwd}
    Click Button    ${buttonLogin}
    Wait Until Element Is Visible    ${elementMenu}    30

# --

Preencher campo
    [Arguments]    ${elemento}    ${valor}
    Wait Until Element Is Visible    ${elemento}    30
    Click Element    ${elemento}
    Press Keys    ${elemento}    CTRL+a    BACKSPACE
    Input Text    ${elemento}    ${valor}

Preencher data
    [Arguments]    ${elemento}
    ${date}    Get Current Date    result_format=%Y-%m-%d
    Preencher campo    ${elemento}    ${date}

Valida Mensagem
    [Arguments]    ${messageDelivery}    ${expectedMessage}
    Capture Element Screenshot    ${messageDelivery}
    Sleep    2
    Element Should Contain    ${messageDelivery}    ${expectedMessage}
