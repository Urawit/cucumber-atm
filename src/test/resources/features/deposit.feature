Feature: deposit
    As a customer
    I want to deposit money into my account using an ATM

Background:
    Given a customer with id 1 and pin 111 with balance 200 exists
    When I login to ATM with id 1 and pin 111

Scenario: Deposit one time
    When I deposit 800 into ATM
    Then my account balance is 1000

Scenario: Deposit multiple times
    When I deposit 800 into ATM
    And I deposit 500.14 into ATM
    Then my account balance is 1500.14

