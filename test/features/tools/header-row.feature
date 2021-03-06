Feature: Set Header Row
  As a Data Packager  
  I want to freeze the header row (the first row)  
  So that the data is not included in "Sort Column" command  
  and the header row value may be able to be used to invoke the "Sort Column" command  
  and the header row remains visable when the rows are scrolled  

  RULES
  =====

  - "Header Row" can be disabled and enabled by a checkbox menu item
  - By default "Header Row" is disabled
  - 'header' = 'true' or 'false' is set in the [CSV Dialect](http://frictionlessdata.io/specs/csv-dialect/#specification) by default
  - 'name' properties are copied from the header row values by "Guess Column Properties" if header row is true
  - regardless of settings the all the data in the data tab should be saved

  Scenario: Freeze Header Row
    Given Data Curator is open
    When "Header Row" is enabled
    Then the menu item should be checked
    And the first row should be frozen so that it does not scroll
    And each header row value should allow the "Sort Column" to be invoked
    And the 'name' column property should be prevented from being edited
    And the 'header' in the CSV Dialect should be set to 'true'

  Scenario: Unfreeze Header Row
    Given Data Curator is open
    When "Header Row" is disabled
    Then the menu item should be unchecked
    And the first row should not be frozen so that it scrolls with the data 
    And the "Sort Column" should not be able to be invoked
    And the 'name' column property should be able to be edited
    And the 'header' in the CSV Dialect should be set to 'false'
