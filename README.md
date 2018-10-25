HS\_Assignment Questions:

Tools:

In your opinion, what\'s helpful about version control systems?  What\'s
annoying about them?

> Version control offers many benefits and is essential to working on a
team with many people.  
> 
> Benefits:
> 
> -   A central repository that hosts all the code that team members have
    or are currently working on.
> 
> -   Provides the ability for peer review of anyone\'s work.
> 
> -   A log of activity showing who checked in and out a given code
    module.
> 
> -   Documentation of code\'s design and capabilities.
> 
> -   Gives a path to roll back if necessary.
> 
> -   Makes it very easy to share work with others.
> 
> -   Can plug into an automated pipeline for continuous delivery,
    providing efficiency and reducing human error.
> 
> Challenges:
> 
> -   Difficult to learn.
> 
> -   Easy to mess up.  (ex. Committing to master when you shouldn\'t
    have.)
> 
> -   Maintaining local repositories can be time consuming.
> 
> -   Reverting is difficult.  And terrifying. :)
> 
> -   Resolving merge conflicts is tedious.

What are some pros and cons of using Docker to develop, test, and deploy
software?

> Pros:
> 
> -   Docker allows for full control of environment setup and teardown.
     This allows for a consistent test system each time an individual or
    team needs a new one.

> -   Removing human error and the amount of time it takes to set up and
    maintain an environment is a huge benefit.  
> 
> -   Managing software dependencies and versions is be greatly reduced.
> 
> Cons:
> 
> -   Learning Docker could be difficult.  
> 
> -   Another layer is added to deployment and builds that doesn\'t exit
    otherwise, increasing complexity.

How do you choose which language to use for a given task?  How did you
choose the language for the programming exercise above?

> Several things go into deciding which language to use.  I ask myself
> several questions when figuring this out.

> -   Is the task at hand going to be maintained long term?
> 
>     -   If yes, then a bigger discussion needs to happen with the team
        so that it can best be supported.
> 
> -   Does it need to be done quickly?
> 
>     -   If so, then I would think about writing in the most familiar
        language I know.  
> 
> -   Will others need to support it?
> 
>     -   Possibly a more well known language would be best.
> 
> -   Which language would be best for the task technically?
> 
>     -   Python might be a better choice for data manipulation than say
        C++.
> 
> -   What is the stated architecture of the company?
> 
>     -   If the company has requirements, then it would be best to stick
        to those.

> -   What are current industry trends?
> 
>     -   Creating something in a rarely used language could have issues
        such as not being able to find qualified staff or possibly
        technical issues with lack of support.

> -   What libraries exist for that language and are they supported?
> 
>     -   If development requires a special library, then it might be
        better to choose one with the functionality built in.  What
        happens if the library becomes abandoned and you have issues?

How do you choose which language to use for a given task? How did you
choose the language for the programming exercise above?

> I completed the coding using in a shell script.  It was quick and easy
> and did the job, however, it occurred to me that maybe you'd rather
> see it done in a more robust language, so I created a Python
> application as well. I used that as the basis for the project.  I
> chose Python over other languages because of ease of setup and how
> well it handles csv files. I\'ve included both versions.

Testing Methodology:

What\'s the right role for QA in the software development process?

> In general, the large part of QA work fits between developers, and
> user acceptance.  However, I believe that as a QA employee, it\'s my
> job to be an advocate for all areas of quality.  This can involve many
> things, from integration testing, to security to data integrity,
> system design, and more.  

      

As a QA person, you have 2 weeks to prepare before your team starts
writing software.  What do you do?

> -   Obtain and read user requirements.
> 
> -   Collaborate with team members to identify what features the tests
    should be proving.
> 
> -   Begin writing tests against application features and business
    requirements.
> 
> -   Identify what tests should be automated.
> 
> -   Understand build and deployment process.
> 
> -   Prepare test environments.
> 
> -   Prepare test data.

When is it appropriate to use automated testing?  When is it appropriate
to use manual testing?

> Since automation can be run efficiently, it should be run as much as
> possible.  Not everything can be automated, however.
>
> Good candidates for automation:
> 
> -   Tests that requires a lot of data.
> 
> -   Tests where human error is an issue.
> 
> -   Tests that require a lot of manual effort.
> 
> -   Regression tests.
> 
> Good candidates for manual testing:
> 
> -   When automation tests would become a burden to maintain or develop.
> 
> -   Tests which won\'t need to be repeated often.
> 
> -   Functionality best examined using exploratory testing.
> 
> In general:
> 
> Unit tests should be automated and part of the build pipeline.  Issues
> that arise from these are easier to track down and are less costly.
>
> Integration or functional tests are essential as it shows how well the
> various parts of the application work together. We should try and
> automate these as much as possible.
>
> UI testing is difficult to create and maintain.  They break over time
> and are time consuming to work on. A large number of different
> environments to support might make automation less desirable to
> develop.  While these are necessary, it\'s often better to spend
> effort automating other areas first.

Your dev team has just modified an existing product by adding new
features and refactoring the code for old features.  The devs claim to
have written unit tests; you\'re in charge of integration testing.
Dedicated teams are handling performance and security testing, so you
don\'t have to.  As is always the case in the real world, you don\'t
have time to test everything. What factors do you think about as you
decide where to focus your testing efforts? How do you decide what not
to test?

> Time and resources are always an issue.  Since this is an existing
> product, I would do the following in this order.
> 
> 1.  Understand the new requirements and how they differ from existing
    functionality.  What are the expected ramifications of these
    changes?
> 
> 2.  Since this is an existing product, I would take inventory of
    existing automated tests to see if they will still work and if not
    what would it take to tune them to work with the new requirements.
     When working, automation is going to provide more test coverage and
    far more efficiently than manual.
> 
> 3.  I\'d then do the same with manual tests.
> 
> 4.  Understanding the above would give me a place to work from where I
    could assess what coverage I have and where to put my energy next.
> 
> 5.  I\'d begin writing integration tests for the new functionality and
    against what the above gap analysis showed.
> 
> 6.  As testing proceeded, I\'d work with the devs to create the best
    product possible by working with efficiency in mind, and with the
    most coverage time allowed.
> 
> 7.  I believe that as a QA person, it\'s my responsibility to
    investigate all aspects of quality on a given project.  \"Claiming\"
    to have unit tests isn\'t very convincing. As I had time, I would
    investigate what tests exist.  I\'ve seen people say that they have
    written tests when they haven\'t or the tests they wrote were
    subpar.
> 
> 8.  If time allowed, I would also check out the performance and security
    testing as well.
> 
> 9.  I would document test results and report out through the established
    channels to the interested parties.    

About myself:    

What excites me about this position?

> This position excites me because I would get to work on a project that
> provides opportunity to learn in areas of interest to me.  I would
> enjoy using the established HealthSparq toolset to provide an
> efficient and high-quality system. Maybe more importantly, I see
> HealthSparq\'s work as providing a service that is desperately needed.
>  I would love to be able to work with the team to make it even better.

Why do you want to work as an SDET when you have worked as a UI/backend
engineer?

> While I have had a variety of experiences and roles in my IT career, I
> have built it around my passion for doing QA work.  I have a passion
> for the QA process and believe I can make a difference for the better
> of the project. I work from a perspective that others often don't and
> am able to ask questions and present ideas that get overlooked.
