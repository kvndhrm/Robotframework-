*Settings*
Library     Selenium2Library

*Keywords*
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
Continue to payment
    Sleep  2s
    Click Element  //div[@class="action-area"]/button
    Click Element  (//div[@class="button-area"])/button[1]
