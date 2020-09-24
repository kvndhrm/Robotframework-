*Settings*
Resource    ../Resources/resource.robot
Resource    ../Resources/data_user.robot
Resource    ../Resources/PageObjects/HeaderPage.robot
Resource    ../Resources/PageObjects/TrainPage.robot
Resource    ../Resources/PageObjects/ResultReservationTrain.robot
Resource    ../Resources/PageObjects/DetailPassengerTrainPage.robot
Resource    ../Resources/PageObjects/SelectSeatPage.robot
Resource    ../Resources/PageObjects/PaymentPage.robot
Test Teardown   Close Browser

*Keywords*
User access tiket website
    Open Browser    ${SITE_URL}  ${BROWSER}
    Maximize Browser Window

*Test Cases*
User be able to booking Train 
    [Tags]  Functional
    Given User access tiket website
    When user click train 
    Then user should be redirect to train page    
    When user makes a ticket reservation
    Then user should be redirect to result page
    When user choose the route
    Then user should be redirect to contact detail page
    When user fill all form detail passenger 
    And choose seat
    And continue to payment
    Then user should be redirect to payment method page
    When user choose payment method
    And click continue button 
    Then user should be redirect to confirm page 
    
