Feature: Verify status code
  

  Scenario: Harry potter API Get method
  
    Given url 'https://www.potterapi.com/v1/'
    And path 'sortingHat'
    When method get
    Then status 200
    * def house = response
    And print house
    And eval if(house == 'Hufflepuff' || house == 'Gryffindor' || house == 'Slytherin' || house == 'Ravenclaw')

