## Cypress-Cucumber-Javascript Framework

* Setup
* Usage
* DB - Gherkin Integration

# Setup

To execute cypress first we need to have Node JS already installed in our machine:

https://nodejs.org/en/

To install dependencies you can run:
```
npm install
```
Then we need to install cypress:
```
npm install --save-dev cypress-cucumber-preprocessor
```
# Usage

The project uses gherkin language to interact with the spec files, also the spec files only contains the required steps in order to complete the execution and the common actions and specific logic is ordered in a POM architecture that allows to give a cleaner maintenance.

To run all specs we can use open or run commands.

The run command starts a headless execution that record video of all the features executed and screenshots of failed scenarios, also generates reports of the execution in json files.
```
npx cypress run
```
The open command starts the cypress test execution app that allows to the user search and execute a live test, this type of executions allows to interact with the element inspector that is included in the app, check all the screenshots of the execution and also run the feature everytime we save a change in our project.
```
npx cypress open
```
# DB - Gherkin Integration

The project also includes an example of a gherkin step that executes 1 or n quantity of SQL scripts that we need for pre-conditions or post-conditions, and I'm working on another step that allows to the scenario to insert data to DB from a datatable in gherkin (we can also do this with the previous step but we need to build the insert manually and then paste it in the datatable example)

# Reports
```
npm run cypress:report
```