# Bank_tech_test

Description
------

This is a tech test for the Bank challenge, completed in two working days.

Features
-------

A user can deposit and withdraw money. They can do so multiple times without having to create a new instance of the account class. They can print a statement, which shows the history of deposits and withdrawals, 
their balance at the time of these transactions, and the date of the transactions.

How to use
------
- Clone this file, and run bundle install
- Run the console with irb

![screen shot 2018-11-06 at 15 06 27](https://user-images.githubusercontent.com/42243785/48073535-e077d200-e1d6-11e8-8b70-afc5fff8d292.png)

- Use rspec to run the tests

My approach
------

I decided to have an account class as the main class that the user interacts with, in order to simplify irb commands. The account class then interacts with the Money_In and Money_Out classes, which deal with creating a hash out of the transaction amount, the date and the balance. The printer class deals with formatting and printing the bank statement. I decided to have a seperate class for Money_In and Money_Out, as deposits and withdraws initially seemed to be large, seperate concerns that required their own classes. I think if my bank test interacted with a real account this would indeed be the case, but as it is, those classes are quite empty, and I would refactoring these into one class if I had more time.

It was TDD driven. 

If I'd had more time/Could do it again
------

I would have liked to have refactored my code more to include a calculator class, as my account class was getting quite big. I also fell into the trap of leaving rubocop until the end and having an overwhelming amount of errors to deal with. I still have some tricky rubocop offences left, so if I had more time I would deal with those. 

Unfortunately, the user would have to create a new instance of the account class if they want to print out a second, different statement. I did this because I had difficulties earlier creating a mock class object (ideally, I would call a "new" on it, and then another method. That latter step was the difficulty) and I wanted to avoid that problem again. If I had more time, I would research how to do this. 


