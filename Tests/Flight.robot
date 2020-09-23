*Settings*
Resource    ../Resources/resource.robot
Resource    ../Resources/data_user.robot
Resource    ../Resources/PageObjects/HeaderPage.robot
Resource    ../Resources/PageObjects/FlightPage.robot

Test Teardown   Close Browser

*Keywords*
User access tiket website
    Open Browser    ${SITE_URL}  ${BROWSER}
    Maximize Browser Window

*Test Cases*
User be able to booking flight
    [Tags]  Functional
    Given User access tiket website
    When User click flight
    Then User should be redirect to flight page
