Feature: Installing WordPress
  We are installing WordPress

  Scenario: Starting the installation
    Given I am on "http://localhost"
    Then I should see a button named "Continue"
