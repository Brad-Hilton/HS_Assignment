# HS_Assignment

Must be executable with a Docker command (Include Docker file)

Have:
    Input file
        Called input.csv
        Single line terminated with new line character.
Need:
    Program that:
        Reads input file
        Sorts it's strings into descending alphabetical order
        Writes the sorted strings in comma-seperated format to output file called
            output.csv

Deliverables:
    Input file
    Output file
    Program to parse file
    Docker command
    Docker file (program must be executed from here)
    Gherkin tests (with explanation)

Tests:

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
        
Questions:
    Tools

        In your opinion, what's helpful about version control systems?  What's annoying about them?

            Version control offers many benefits, and is essential to working on a team with many people.  
            
            Benefits:
                A central repository that hosts all the code that team members have or are currently working on.

                Provides the ability for peer review of anyone's work.

                A log of activity.  Who checked in and out a given code module.

                Documentation of code's design and capabilities.

                Gives a path to roll back if necessary.

                Makes it very easy to share work with others.

                Can plug into an automated pipeline for continuous delivery, providing efficiency and reducing human error.

            Challenges:
                Difficult to learn. 

                Easy to mess up.  (ex.Committing to master when you shouldn't have.)

                Maintaining local repositories can be time consuming.

                Reverting is difficult.  And terrifying. :)

                Resolving merge conflicts is tedious.


        What are some pros and cons of using Docker to develop, test, and deploy software?

        How do you choose which language to use for a given task?  How did you choose the language for the programming exercise above?

            Several things go into deciding which language to use.  I ask myself several questions when figuring this out.

                Is the task at hand going to be maintained long term?
                    If yes, then a bigger discussion needs to happen with the team so that it can best be supported.

                Does it need to be done quickly?
                    If so then I would think about writing in the most familiar language I know.  

                Will others need to support it?
                    Possibly a more well known language would be best.

                Which language would be best for the task technically?
                    Python might be a better choice for data manipulation than say C++.

                What is the stated architecture of the company?
                    If the company has requirements then it would be best to stick to those.

                What are current industry trends?
                    Creating something in a rarely used language could have issues such as not being able to find qualified staff or possibly technical issues with lack of support.

                What libraries exist for that language and are they supported?
                    If development requires a special library, then it might be better to choose one with the functionality built in.  What happens if the library becomes abandoned and you have issues?

How did I choose


    Testing Methodology

        What's the right role for QA in the software development process?
            In general, the large part of QA work fits between developers, and user acceptance.  However, I believe that as a QA employee, it's my job to be an advocate for all areas of quality.  This can involve many things, from Integration testing, to security to data integrity, design, and more.  
            
        As a QA person, you have 2 weeks to prepare before your team starts writing software.  What do you do?
            Obtain and read user requirements.
            Collaborate with team members to identify what features the tests should be proving.
            Begin writing tests against application features and business requirements.
            Identify what tests should be automated.
            Understand build and deployment process.
            Prepare test environments.
            Prepare test data.

        When is it appropriate to use automated testing?  When is it appropriate to use manual testing?

            Since automation can be run efficiently, it should be run as much as possible.  Not everything can be automated, however. 
            
            Good candidates for automation:
                Tests that requires a lot of data.
                Tests where human error is an issue.
                Tests that require a lot of manual effort.
                Regression tests.

            Good candidates for manual testing:
                When automation tests would become a burden to maintain or develop.
                Tests which won't need to be repeated often.
                Exploratory testing.
                

            In general:

            Unit tests should be automated and part of the build pipeline.  Issues that arise from these are easier to track down and are less expensive to fix.

            Integration or functional tests are essential as it shows how well the various parts of the application work together. We should try and automate these as much as possible.

            UI testing is difficult to create and maintain.  They break over time and are time consuming to work on. A large amount of different environments to support might make automation less desirable to develop.  While these are necessary, it's often better to spend effort automating other areas first.


        Your dev team has just modified an existing product by adding new features and refactoring the code for old features.  The devs claim to have written unit tests; you're in charge of integration testing.  Dedicated teams are handling performance and security testing, so you don't have to.  As is always the case in the real world, you don't have time to test everything.  What factors do you think about as you decide where to focus your testing efforts?  How do you decide what not to test?
proof
            Time and resources are always an issues.

            Since this is an existing product, I would do the following in this order.

            Understand the new requirements and how they differ from existing functionality.  What are the expected ramifications of these changes?

            Since this is an existing product, I would take inventory of existing automated tests to see if they would still work and if not what would it take to tune them to work with the new requirements.  When working, automation is going to provide more test coverage and far more efficiently than manual.

            I'd then do the same with manual tests.

            Understanding the above would give me a place to work from where I could assess what coverage I have and where to put my energy next.

            I'd begin writing integration tests for the new functionality and against what the above the gap analysis showed.  

            As testing proceeded, I'd work with the devs to create the best product possible by working with efficiency in mind, and with the most coverage time allowed.

            I believe that as a QA person, it's my responsibility to look into all aspects of quality on a given project.  "Claiming" to have unit tests isn't very convincing.  As I had time, I would investigate what tests actually exist.  I've seen people say that they have written tests when they haven't or the tests they wrote was subpar.

            If time allowed, I would also check out the performance and security testing as well.

            I would document test results and report out through the established channels to the interested parties.

    
    About myself
    
        What excites me about this position?

            This position excites me because I would get to work on a project that provides opportunity to learn in areas of interest to me.  I would enjoy using the established HealthSparq toolset to provide an efficient and high quality system.  Maybe more importantly, I see HealthSparq's work as providing a service that is desperately needed.  I would love to be able to work with the team to make it even better.

        Why do you want to work as an SDET when you have worked as a UI/backend engineer?

            While I have had a variety of experiences and roles in my IT career, I have built it around my passion for doing QA work.  I have a passion for the QA process and believe I can make a difference for the better of the project.  I work from a perspective that others often don't, and am able to ask questions and present ideas that get overlooked. 



Tests

Given

When
Then