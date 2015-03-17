# Challenge Name


## Summary
In this challenge we will build out our Index.rb controller using Test Driven Development (TDD). The challenge will introduce you to RSpec and testing controllers. 

You will write tests for each of the HTTP Verbs (Get, Post, Put, Delete) and make sure that your routes follow basic Request / Response flow for each of the verbs.


### New Technology/Concept

- [Static File Rendering](http://stackoverflow.com/questions/2437390/serving-static-files-with-sinatra) in Sinatra
	- We will be rendering static html files from the server as our response body.
- [RSpec Request / Response](http://www.sinatrarb.com/testing.html) testing
	- TDD will require us to use basic http verb testing methods
- [RSpec Matchers](http://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers)
	- You will need to use the correct matchers to validate the response body
	

## Releases

### Release 0: Testing a get 
Make a file called index_spec.rb in the ```spec/ontroller``` folder. Then add the following three tests:

1. Ensure that a request to the root path '/' returns the index.html file in the response body.
2. Ensure that a request to the index2 path '/index2' returns the index_2.html file in the response body.
3. Ensure that a request to the dinner path '/index3' returns the index_3 file in the response body.

After setting up the test, run them with rspec.

```
$ rspec spec/controllers/index_spec.rb 
```

Now add the correct routes, and add the correct static index.html file to the response body. If you've done it correctly you should get three passing tests.


### Release 1: Testing a post 

### Release 2: Testing a put

### Release 3: Testing a delete

### Release 4: Refactoring

## Conclusion
After finishing the challenge, you should be 