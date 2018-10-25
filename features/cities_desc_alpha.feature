    Feature: Provide city file in descending alphabetical order
    
        Scenario: Input file exists
            Given the application depends on input file
            When the application looks for it
            Then an input file should exist

        Scenario: The input file contains a single line of data
            Given there is an input file
            When the application opens it
            Then an input file should contain a single line of data

        Scenario: The input file data is comma separated
            Given there is an input file
            When the application opens it
            Then it should contain data with comma separated values
            
        Scenario: The input file data is terminated with a new line
            Given there is an input file
            When the application opens it
            Then it should be terminated with a new line
        
        Scenario: Application execution produces no error
            Given the application is executed
            When it completes
            Then no error was encountered
        
        Scenario: Output file is created
            Given the application produces an output file
            When the application is executed
            Then an output file should exist

        Scenario: The output file contains a single line of data
            Given there is an output file
            When the user opens it
            Then it should contain a single line of data

        Scenario: The output file data is comma separated
            Given there is an output file
            When the user opens it
            Then it should contain data with comma separated values

        Scenario: The output file is terminated with a new line
            Given there is an output file
            When the user opens it
            Then it should be terminated with a new line

        Scenario: The output file data is sorted descending alphabetically
            Given there is an output file
            When the user opens it
            Then it should contain data is sorted descending alphabetically