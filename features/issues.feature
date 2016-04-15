Feature: Users sees a list of issues
  Scenario: User sees issues for a particular repo
    Given an user enters a username
    Given an user enters a repository name
    Then user is show the repository's issues

