Feature: Interaction with groups of elements

  I want to be able to interact with section collections on a page
  In order to work with large collections of data

  Scenario: collection of sections
    When I navigate to the nested section page
    Then I can see a collection of sections

  Scenario: waiting on a collection of sections to disappear
    When I navigate to the vanishing page
    And I wait for the collection of sections that takes a while to disappear
    Then the sections are no longer present

  Scenario: anonymous sections collection
    When I navigate to the nested section page
    Then I can see a collection of anonymous sections

  Scenario: can access elements in the section by passing a block to within
    When I navigate to the nested section page
    Then I can execute in the context of each section by passing a block to within
