# Bank_tech_test

Description
------

This is a tech test for the Bank challenge, set by Makers and completed individually in two working days. 

Features
-------

A user can deposit and withdraw money. They can do so multiple times without having to create a new instance of the account class. They can print a statement, which shows the history of deposits and withdrawals, their balance at the time of these transactions, and the date of the transactions.

How to use
------
- Clone this file, and run bundle install
- Run the console with irb

![screen shot 2018-11-06 at 15 06 27](https://user-images.githubusercontent.com/42243785/48073535-e077d200-e1d6-11e8-8b70-afc5fff8d292.png)

- Use rspec to run the tests

My approach:
------

### Classes:

Knowing that this test was designed to be used with a REPL, I decided to have an account class as the main class that the user interacts with. This simplifies REPL commands, as they only have to create a new instance of the account class, rather instance of other classes as well. I also used method names that were very intuitive for the commands that the user has to interact with (withdraw, deposit and statement).

The account class then interacts with the Money_In and Money_Out classes, which deal with creating a hash out of the transaction amount, the date and the balance. I decided to have a separate class for Money_In and Money_Out, as deposits and withdraws initially seemed to be large, separate concerns that required their own classes. I think if my bank test interacted with a real account this would indeed be the case, but as it is, those classes are quite empty, and I would refactoring these into one class if I had more time. 

The printer class deals with formatting and printing the bank statement. This required it’s own class, because formatting is a different concern from processing and storing data. I therefore should have left the formatting of the date itself to this class as well, as at the moment it’s a responsibility of the Money_In and Money_Out classes.

After submitting my test, Sophie (our tutor) offered me feedback that my Account class has two responsibilities: updating the balance and keeping records. As an exericse, I then refactored the Account Class out into a Balance Class, which updates the balance. 

### Features

The features that I have are designed around the criteria, and I made sure that I designed the table in the style that was specified. I made a few minor errors (such as spacing) and I’ve learnt that it’s important to built features exactly as specified by the client. In the future, I will be able to justify the features that I’ve built based on this.

Mark, our tutors, said that it was good to make sure that a user can’t take money of our negative balance. I questioned why this was the case, as it wasn’t part of the specified criteria, and I wasn’t sure how I would know what to built in the future. Mark explained to me that this is an extension of the specified criteria, as it stops a user abusing the features that you’ve built. I found this very helpful, and in the future I will be able to justify the features that I’ve built based on this criteria. 

### Tests

I wrote tests for the project, because it makes it easy to know if part of your code has broken at any stage. My tests are isolated, so that if one class has a bug, only the tests for that class will break, rather than all the tests. This makes diagnosing and dealing with the problem easier. 

Furthermore, I used TDD for a number of reasons. It helped me write my code in small, manageable pieces. TDD had many advantages, but to name a few:

By writing a test and then making it pass, I created small, workable parts of code, that then built up into a more complex program. This stopped me from feeling overwhelmed and helped me know what the next step was. 

Using TDD, I had to continually come back to the criteria, and ask myself how my code worked, which I think leads to more efficient problem solving and debugging.

TDD also uses the RED-GREEN-REFACTOR cycle. I can refactor in the confidence that I am only refactoring the code that I’ve just written, and knowing that if I run my test again, it will tell me if I’ve made an error. Ultimately, I think this means you end up with cleaner code by the “end” of the project: it’s easier to refactor if you do it as you go along, rather than at the end. 

I am, however, open to other ways of working. 

Other things that I would do if I had more time:
------

I fell into the trap of leaving rubocop until the end and having an overwhelming amount of errors to deal with. I still have some tricky rubocop offences left, so if I had more time I would deal with those. 

Unfortunately, the user would have to create a new instance of the account class if they want to print out a second, different statement. I did this because I had difficulties earlier creating a mock class object (ideally, I would call a "new" on it, and then another method. That latter step was the difficulty) and I wanted to avoid that problem again. If I had more time, I would research how to do this. 


