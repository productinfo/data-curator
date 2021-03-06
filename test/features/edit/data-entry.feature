Feature: Data entry
  As a Data Packager  
  I want to quickly add, modify or delete data in a cell in the data table  
  So that I can create new data or correct errors found in the data  

  LATER
  =====

  - In the future this feature may change to save the data as it is entered

  Scenario: Edit data
    Given the cursor is in a table cell
    When a value is typed
    Then the value should be updated in the cell
    But the data should not be saved to file
