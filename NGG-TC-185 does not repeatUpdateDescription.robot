*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
#Suite Teardown    Close All Browsers


Resource    Resources/Keywords.resource
Resource    Resources/Variables.resource

*** Test Cases ***

NGG-TC-185 Menu Items - Select an existing meal/Meal does not repeat - Update Description.
        [Tags]      Validation Test       Case 1

# Open Community Waterford
  Click Element    ${Community}
  Drag And Drop    ${Waterford}      ${Community}
  Click Element    ${Waterford}

# Simulate click Total Opened Window
  scroll element into view             ${Total_Opened}
   element should be visible           ${Total_Opened}      Total Opened
   mouse over                          ${Total_Opened}

#  Enter Dinning Window
   wait until element is visible       ${Dinning}
   scroll element into view            ${Dinning}
   click element                       ${Dinning}

# Click Community Waterford
   scroll element into view            ${Community}
   element should be visible           ${Community}    Waterford Community
#   click element                      ${Community}

# Click on a meal from the list
    execute javascript                   ${DateMeal}


# Info General

# fill Description
    click element        ${dining_description}
    Press Keys           ${dining_description}       CTRL+A+DELETE

    sleep       2
# fill  Decription
    click element      ${dining_description}
    input text         ${dining_description}       Variety fruits delicious

# image
    click element           ${image}
    input text        ${image}      fruits

 # enter to Calendar
     scroll element into view                ${Start-Date}
     wait until element is visible           ${Start-Date}
     click element                           ${Start-Date}

 # Click Save Button Dinning
    scroll element into view                ${BtnSave}
    wait until element is visible           ${BtnSave}
    click element                           ${BtnSave}

