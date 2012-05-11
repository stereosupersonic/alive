@api
Feature: Heartbeat
  As an API client
  In order to do put me my current ip
  I want to receive a clients current ip

  Scenario: receive an new clietents ip
    Given I am a valid API user
    And I send and accept JSON   
    When I send a POST request for my client to "api/v1/heartbeat" with hostid "e0:f8:47:3a:0a:ea" and IP "93.203.202.157"  
    Then the response should be "200"
    And the client with hostid "e0:f8:47:3a:0a:ea" is created on the system