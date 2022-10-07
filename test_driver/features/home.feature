Feature: navigation home screen

  Scenario: navigate to liste product after click button
    Given I have "LoginButton" on screen
    when I tap the "LoginButton" button
    Then I have "ProductView" on screen
    Then I pause for 3 seconds
    Given I have "CardProductButton" 
    Then I scroll "ProductView" till "CardProductButton" is visible
    when I tap the "CardProductButton" button
    Then I pause for 3 seconds 
    Then I have "DetailProductView" on screen
    Then I scroll "DetailProductView" till "counter" is visible
  Scenario: Counter increases and decreases
    Given I expect the "counter" to be "1"
    When I tap the "increment" button 
    When I tap the "increment" button
    Then I expect the "counter" to be "3"
    When I tap the "decrement" button 
    When I tap the "decrement" button 
    Then I expect the "counter" to be "1"

  Scenario: Counter dosen't decreases when  the button - is pressed if counter is 1
    Given I expect the "counter" to be "1"
    When I tap the "decrement" button 
    When I tap the "decrement" button 
    Then I expect the "counter" to be "1"  