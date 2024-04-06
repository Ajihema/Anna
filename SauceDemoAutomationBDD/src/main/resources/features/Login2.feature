@Login2
Feature: Login2
  As a user i want login to sauce demo

  @positive2
  Scenario: Login With Valid Data2
    Given User already open the website sauce demo2
    When User input "standard_user" as username "secret_sauce" as password2
    Then User already on homepage2

  @negative2
  Scenario Outline: Login With Invalid Data2
    Given User already open the website sauce demo2
    When User input "<username>" as username "<password>" as password2
    Then User get "<error>" as error message2

    Examples: Credentials Data2
      | username        | password    | error                                                                     |
      |                 |             | Epic sadface: Username is required                                        |
      | locked_out_user |             | Epic sadface: Password is required                                        |
      |                 | secret_sauc | Epic sadface: Username is required                                        |
      | standard_user   | secret_sauc | Epic sadface: Username and password do not match any user in this service |