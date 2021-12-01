# We suggest to consulting the Karate Framework documentation: https://github.com/intuit/karate

Feature: This test suite runs over the client operations

  How     ...
  Required ...
  To     ...


  Background:
    * url baseUrl
    * configure headers = { 'Content-Type': 'application/json' }
    * def loginPath = '/userController/registro'


  Scenario: Successfully request
    Given path loginPath
    And request {"dni":"111","usuario":"ariza","password":"222","telefono":"5555","direccion":"adnres@","email":"jsdjdd"}
    When method post
    Then status 201