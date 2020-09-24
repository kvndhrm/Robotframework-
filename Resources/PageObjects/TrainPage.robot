*Settings*
Library     Selenium2Library

*Keywords*
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