# We suggest to consulting the Karate Framework documentation: https://github.com/intuit/karate

Feature: This test suite runs over the client operations

    How     ...
    Required ...
    To     ...


    Background:
    * url baseUrl
    * configure headers = { 'Content-Type': 'application/json' }
    * def loginPath = '/userController'


    Scenario: Successfully request
        Given path loginPath
        And request {'usuario':'raul','password':'123'}
        When method post
        Then status 200
        And match response contains '88JJ'

