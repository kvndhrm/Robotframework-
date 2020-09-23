*Settings*
Resource    ../Resources/resource.robot
Resource    ../Resources/data_user.robot
Test Teardown   Close Browser

*Keywords*
User access tiket website
    Open Browser    ${SITE_URL}  ${BROWSER}
    Maximize Browser Window
User click train
    Click link  link:Kereta Api
User should be redirect to train page
    Wait Until Element Is Visible  class:content-link-title
    Element Text Should be  class:content-link-title  Stasiun Asal & Tujuan Yang Beroperasi di Masa Pandemi
User makes a ticket reservation
    Click Element  class:input-airport
    Wait Until Element Is Visible  class:station-name
    Input Text  (//input[@class="input-airport "])[1]  Senen
    Element Text Should be  class:station-name  Pasar Senen
    Click Element  class:station-name
    Input Text  (//input[@class="input-airport "])[2]  Gubeng
    Sleep  1s
    Element Text Should be  class:station-name  Surabaya Gubeng
    Click Element  class:station-name
    Sleep  2s
    Click Element  (//div[@class="CalendarMonth CalendarMonth_1"])[2]/table/tbody/tr[5]/td[3]
    Sleep  1s
    Click Element  class:passenger-and-class-area
    Wait Until Element Is Visible  class:input-passengerclass
    Click Element  (//i[@class="tix tix-plus icon"])[1]
    Sleep  1s
    Element Text Should be  (//div[@class="part counter"])[1]  2
    Click Element  (//i[@class="tix tix-plus icon"])[2]
    Sleep  1s
    Element Text Should be  (//div[@class="part counter"])[2]  1
    Click Element  class:icon-close
    Sleep  2s
    Click Element  //*[@id="formhome"]/div/div/div[1]/div[3]/button
User should be redirect to result page
    Wait Until Element Is Visible  class:search-result-page
User choose the route
    Sleep  3s
    Click Element  class:v3-btn
User should be redirect to contact detail page
    Wait Until Element Is Visible  class:contact-form
User fill all form detail passenger 
    Sleep  2s
    Input Text  (//input[@class="input-list-autocomplete"])[1]  ${ADULT1}
    Input Text  name:email  ${EMAIL}
    Input Text  name:cp-phone  ${NO_PHONE}
    Input Text  (//input[@class="input-list-autocomplete"])[2]  ${ADULT1}
    Input Text  (//input[@class="input-flight-textinput"])[3]  ${KTP_ADULT1}
    Sleep  2s
    Input Text  (//input[@class="input-list-autocomplete"])[3]  ${ADULT2}
    Input Text  (//input[@class="input-flight-textinput"])[4]  ${KTP_ADULT2}
    Sleep  2s
    Input Text  (//input[@class="input-list-autocomplete"])[4]  ${INFANT}
    Click Element  (//input[@class="input-flight-dropdown"])[5]
    Sleep  1s
    Click Element  //ul[@class="ul-list-menu"]/li[4]
    Sleep  1s
    Click Element  //ul[@class="ul-list-menu"]/li[3]
    Sleep  1s
    Click Element  //ul[@class="ul-list-menu"]/li[1]
    Sleep  1s
Choose seat
    Click Element  class:btn-choose-seat
    Sleep  2s
Continue to payment
    Sleep  2s
    Click Element  //div[@class="action-area"]/button
    Click Element  (//div[@class="button-area"])/button[1]
User should be redirect to payment method page
    Wait Until Element Is Visible  class:order-info
User choose payment method
    Click Element  (//div[@class="card payment-group white"])[4]/a/div[1]
Click continue button 
    Sleep  2s
    Click Element  //*[@id="app"]/div/div[3]/div/div[2]/div[2]/div[1]/div/div/div[4]/div[2]/button
User should be redirect to confirm page 
    Wait Until Element Is Visible  class:bank-account-information

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
    
