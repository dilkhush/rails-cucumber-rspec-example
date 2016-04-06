Feature: Addition
  It will test the sum of two no

  Background:
  	Given Should have calculator object

  Scenario: Add two numbers
    Given I have enters 50 and 70 into the calculater
    Then the result should be 120 on the screen

  Scenario: return given no
    Given I have enters 50 into the calculater
    Then the result should be 50
