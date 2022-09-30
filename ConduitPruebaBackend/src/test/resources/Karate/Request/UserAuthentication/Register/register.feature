Feature: Post
  As QA automation
  I want to register a new client
  to validate status code

  Background: consume service
    * url url

  Scenario: Register a user Post Method
    * def CreateUser = { "username": "#(username)","email": "#(email)","password": "#(password)"}
    Given path 'users'
    And request CreateUser
    When method POST
    Then status 500


