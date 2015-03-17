# Test Driven Development Controllers

## Summary

In this challenge we will build out our `index.rb` controller using Test Driven
Development ([TDD][]). The challenge will introduce you to [RSpec][] and testing
controllers.

You will write tests for each of the HTTP Verbs (GET, POST, PUT, DELETE) and
make sure that your routes follow basic Request / Response flow for each of the
verbs.

### New Technology/Concept

- [Static File Rendering][] in Sinatra
	- We will be rendering static html files from the server as our response body.
- [RSpec Request / Response](http://www.sinatrarb.com/testing.html) testing
	- TDD will require us to use basic http verb testing methods
- [RSpec Matchers](http://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers)
	- You will need to use the correct matchers to validate the response body

## Releases

### Release 0: Testing a get

Make a file called index_spec.rb in the `spec/controllers` folder. Then add
the following three tests:

1. Ensure that a request to the root path `/` returns the `index.html` file in
   the response body.  2. Ensure that a request to the index2 path `/index2`
   returns the `index_2.html` file in the response body.
3. Ensure that a request to the dinner path '/index3' returns the index_3 file
   in the response body.

After setting up the test, run them with rspec.

`$ rspec spec/controllers/index_spec.rb`

You should get 2 failing tests and 1 passing tests

Now add the correct routes, and add the correct static `index.html` file to the
response body. If you've done it correctly you should get three passing tests.


### Release 1: Testing a post

Back in the index_spec.rb add a single test that:

- does an http post to the route `/try_a_post`
- verifies that the response is a redirect
- follows that redirect
- verifies the redirect takes them back to the index get route

After setting up the test, run them with rspec.

```
$ rspec spec/controllers/index_spec.rb
```

You should get 1 failing test, and 3 passing tests

Now add the correct route, and render a redirect response to the new location
`/`. If you've done it correctly you should get 3 passing tests.

### Release 2: Testing a put

This time in the `index_spec.rb` we are going to test a put method, with some
parameters to ensure the following:

- does an http post to the route `/try_a_put` with the parameter `with_a_param=true`
- verifies that the response is a redirect
- follows that redirect
- verifies the redirect takes them back to the index get route

After setting up the test, run them with rspec.

```
$ rspec spec/controllers/index_spec.rb
```

You should get 1 failing test, and 4 passing tests

Now add the correct route, and render a redirect response to the new location
`/`. If you've done it correctly you should get 3 passing tests.


### Release 3: Testing a delete

Finally in the `index_spec.rb` add the test that:

- does an http delete to the route `/try_a_delete`
- verifies that the response is a redirect
- follows that redirect
- verifies the redirect takes them back to the index get route

After setting up the test, run them with rspec.

```
$ rspec spec/controllers/index_spec.rb
```
You should get 1 failing test, and 5 passing tests

Now add the correct route, and render a redirect response to the new location '/'. If you've done it correctly you should get 6 passing tests.

### Release 4: Refactoring

Great! At this point you should be able to test all of your routes in the
index.rb file.

Now we are going to show the benefit of having tests while we refractor.

For the finally release you are to create two new controllers in the
`app/controller` directory.

- `update_routes.rb`
- `get_routes.rb`

Move all of the update verbs into the `update_routes.rb` controller.

Run your tests - They should still all pass.

Next move all of your get routes besides `/` to the get_routes.rb file

Run your tests - They should still all pass.

Now just for fun, say you were migrating your routes. Then you were distracted
by the lunch bell, and you forgot to move the `/index2` get route. (Simulate
this by commenting out the entire get `/index2` do block).

Run all of your tests.

You should get 1 failing test, and 5 passing tests.

Let's uncomment that sucker, and get everything green again!

Good Work!

## Conclusion

After finishing the challenge, you should be able to create tests for the Get,
POST, PUT, AND DELETE verbs. Send parameters to the requests for use in the
controllers. Lastly understand that having good test coverage allows you to
refactor with ease.

[TDD]: http://en.wikipedia.org/wiki/Test-driven_development
[RSpec]: http://rspec.info/
[Static File Rendering]: http://stackoverflow.com/questions/2437390/serving-static-files-with-sinatra
