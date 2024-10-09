*** Settings ***
Documentation    Código dos passos dos casos de teste.

Resource    ../config.robot

*** Keywords ***
Quando clicar em "${menuItem}"
    Click Link    Link=${menuItem}
    Wait Until Element Is Visible    ${fieldFirstName}    30

E realizar o preenchimento dos campos com dados aleatorios
    ${name}    FakerLibrary.First Name
    Preencher campo    ${fieldFirstName}    ${name}

    ${midlleName}    FakerLibrary.Last Name 
    Preencher campo    ${fieldMidlleName}    ${midlleName}

    ${lastName}    FakerLibrary.Last Name
    Preencher campo    ${fieldLastName}    ${lastName}

    # ${nickname}    FakerLibrary.Nic Handle
    Preencher campo    ${fieldNickName}    ${nickname}
    Preencher campo    ${fieldEmployedId}    ${employedId}

    ${otherId}    FakerLibrary.Random Number
    Preencher campo    ${fieldOtherId}    ${otherId}

    Preencher data    ${fieldDateOfBirth}   
    Click Element    ${radioFemale}
    Click Button    ${buttonSave1}
    Valida Mensagem     ${messageSuccessfully}   ${messageUpdated}
    Click Element     ${selectCustomFields}
    Sleep    2
    Click Element    ${itenList}
    Wait Until Element Is Visible    ${buttonSave2}    30
    Click Button    ${buttonSave2}
    Valida Mensagem    ${messageSuccessfully}    ${messageSaved}
    
Entao adicionar um anexo
    Wait Until Element Is Visible    ${buttonAdd}    30
    Click Element    ${buttonAdd}
    Choose File       ${buttonOpen}     ${FILE}\\robo.jpeg
    Input Text    ${inputAdd}    test text
    Click Element    ${buttonSave3}
    Valida Mensagem    ${messageSuccessfully}    ${messageSaved}
    Wait Until Element Is Visible    ${elementUpload}    30