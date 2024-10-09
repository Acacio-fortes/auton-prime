*** Settings ***
Documentation       Elementos da página de cadstro.


*** Variables ***
${nationality}              Brazilian
${fieldFirstName}           name=firstName
${fieldMidlleName}          name=middleName
${fieldLastName}            name=lastName
${fieldNickName}            xpath=(//div[@class='oxd-input-group__label-wrapper'])[5]/following-sibling::div/input
${fieldEmployedId}          xpath=(//div[@class='oxd-input-group__label-wrapper'])[6]/following-sibling::div/input
${fieldOtherId}             xpath=(//div[@class='oxd-input-group__label-wrapper'])[7]/following-sibling::div/input
${fieldDrivers}             xpath=(//div[@class='oxd-input-group__label-wrapper'])[8]/following-sibling::div/input
${fieldLicenseDate}         xpath=(//*[@id="app"]//input)[9]
${elementNationality}       xpath=(//div[@class='oxd-select-wrapper'])[1]
${fieldSsnNumber}           xpath=(//div[@class='oxd-input-group__label-wrapper'])[10]/following-sibling::div/input
${fieldSinNumber}           xpath=(//div[@class='oxd-input-group__label-wrapper'])[11]/following-sibling::div/input
${fieldDateOfBirth}         xpath=(//*[@id="app"]//input)[12]
${radioFemale}              xpath=(//div[@class="oxd-radio-wrapper"])[2]
${buttonSave1}              xpath=(//button[@type="submit"])[1]
${selectCustomFields}       xpath=(//div[@class="oxd-select-text-input"])[3]
${itenList}                 xpath=(//button[@class="oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space"])[2]
${buttonSave2}              xpath=(//button[@type="submit"])[2]
${messagesuccessfully}      xpath=//p[@class="oxd-text oxd-text--p oxd-text--toast-message oxd-toast-content-text"]
${messageUpdated}           Successfully Updated
${messageSaved}             Successfully Saved
${buttonAdd}                xpath=//button[@class="oxd-button oxd-button--medium oxd-button--text"]
${buttonSearch}             xpath=//div[@class="oxd-file-button"]
${buttonOpen}               xpath=//input[@class="oxd-file-input"]
${inputAdd}                 xpath=//*[@placeholder="Type comment here"]
${buttonSave3}              xpath=(//button[@type="submit"])[3]
${elementUpload}            xpath=//*[contains(text(), 'robo.jpeg')]


${employedId}        TESTE-AUT
${nickname}          TESTE-AUT
