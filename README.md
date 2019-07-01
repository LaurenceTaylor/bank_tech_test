# Technical Test Practice - Bank App

A simple banking app, created while trying to follow best practice.

## Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## Approach

* First, I broke the spec down into the following user stories:

```
As a user,
So I can keep my money safe,
I would like to make a deposit into my bank account

As a user,
So I can access my money when I’m short on cash,
I would like to make a withdrawal from my bank account

As a user,
So I can keep track of my spending,
I would like to be able to view an account statement with transaction history
```

* Next, I diagrammed on paper ways to solve the task. One option was to have one class, storing an array of hashes with date, credit, debit, and balance keys. Alternatively, I thought I could have two classes: entry and account. I opted for the latter in order to practice testing in isolation and dependency injection.

* I followed a strict TDD approach, not writing any code until I saw a failing test (barring refactoring).

* I checked the isolation of my tests by commenting out all the code for each class and running the tests.

* I used rubocop to ensure quality code style, and simplecov to check test coverage.

* This solution has 100% coverage and no rubocop offenses.
