# We suggest to consulting the Karate Framework documentation: https://github.com/intuit/karate

Feature: This test suite runs over the client operations

  How     ...
  Required ...
  To     ...


  Background:
    * url baseUrl
    * configure headers = { 'Content-Type': 'application/json' }
    * def loginPath = '/transferenciaController/transferir'


  Scenario: Saldo insuficiente para transferir a otra cuenta
    Given path loginPath
    And request {"id_transferencia":"2","valor":"15000","cuentaDestino":"666","cuentaOrigen":"222"}
    When method post
    Then status 409

  Scenario: transferir a una cuenta
    Given path loginPath
    And request {"id_transferencia":"3","valor":"10000","cuentaDestino":"666","cuentaOrigen":"222"}
    When method post
    Then status 201


  Scenario: No se puede realizar una transferencia desde una cuenta origen a su misma cuenta
    Given path loginPath
    And request {"id_transferencia":"3","valor":"10000","cuentaDestino":"222","cuentaOrigen":"222"}
    When method post
    Then status 409

  Scenario: La cuenta origen no existe
    Given path loginPath
    And request {"id_transferencia":"3","valor":"10000","cuentaDestino":"222","cuentaOrigen":"222"}
    When method post
    Then status 409

  Scenario: La cuenta destino no existe
    Given path loginPath
    And request {"id_transferencia":"3","valor":"10000","cuentaDestino":"222","cuentaOrigen":"222"}
    When method post
    Then status 409