@javascript
Feature: Client connecting to the server

  Background:
    Given I am on the homepage

  Scenario: Client connects to the server
    Then I should be connected

  @disable-server
  Scenario: Client unsuccessfully connects to the server
    Then I should not be connected
