Feature: Post
  As QA automation
  I want to login an existing user

  Background: consume service
    * url url

  Scenario: Add a pet Using Post Method
    * def CreateUser = { "username": "#(username)","email": "#(email)","password": "#(password)","token": "#(token)" }
    Given path 'users','login'
    And request CreateUser
    When method POST
    Then status 500





