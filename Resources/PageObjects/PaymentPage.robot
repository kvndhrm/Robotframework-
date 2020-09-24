*Settings*
Library     Selenium2Library

*Keywords*
User should be redirect to payment method page
    Wait Until Element Is Visible  class:order-info
User choose payment method
    Click Element  (//div[@class="card payment-group white"])[4]/a/div[1]
Click continue button 
    Sleep  2s
    Click Element  //*[@id="app"]/div/div[3]/div/div[2]/div[2]/div[1]/div/div/div[4]/div[2]/button
User should be redirect to confirm page 
    Wait Until Element Is Visible  class:bank-account-information
