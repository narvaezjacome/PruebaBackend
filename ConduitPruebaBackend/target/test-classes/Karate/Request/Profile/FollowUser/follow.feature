Feature: Post
  As QA automation
  I want to follow a user

  Background: consume service
    * url url

  Scenario: Follow A user using POST

    * def CreateFollow = { "username": "#(username)","email": "#(email)","password": "#(password)" }
    * print token
    Given header Authorization = 'Bearer '+ token
    Given path 'profiles','username','follow'
    And request CreateFollow
    When method POST
    Then status 500


