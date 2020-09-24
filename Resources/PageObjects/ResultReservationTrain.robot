*Settings*
Library     Selenium2Library

*Keywords*
User should be redirect to result page
    Wait Until Element Is Visible  class:search-result-page
User choose the route
    Sleep  3s
    Click Element  class:v3-btn