# AutomationFramework Documentation

### Getting Started
* Install ruby 2.5.3
* Create a new Gemset
* Run bundle install on this newly created gemset.This will install all the dependencies and gems required for the tests

### How to Execute

 Cucumber tests are grouped based on streams/functionality into respective folders and addition information will need to be given through bash prompt for cucumber to recognize the feature files

 * bundle exec cucumber --tags <@feature-tag>  --format pretty --expand --format json -o "<@report_name.json>"


##### How to Generate Reports

 * Once the execution is completed
 * Execute ruby report.json from Command prompt
 * Open Cucumber Web Report from Any Browser to View the Test Results

 Note : All Tests are Executed in Chrome browser
