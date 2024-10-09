*** Settings ***
Documentation       Configuração das libraries, resources e caminhos de arquivos globais.

Library             SeleniumLibrary
Library             FakerLibrary    locale=pt_BR
Library             DateTime
Library             ScreenCapLibrary

### pages
Resource            02-pages/cadastro_page.robot
Resource            ContextoSteps.robot
### steps
Resource            03-steps/cadastro_steps.robot

*** Variables ***
${FILE}     ${CURDIR}\\04-img    # Imagem upload
