# Cats

# Summary

* this is the cats gem it prints fun stuff to a screen


# Setup

The easiest way to get setup in a clean way is to use something like rbenv or rvm

* rbenv: https://github.com/rbenv/rbenv
* rvm: https://rvm.io/

this was built using ruby-2.4.2 and rvm, it should work anywhere really

alternatively you could use a dockerfile which provides ruby and run it all in a container

run the program with (it should be working in some form) : 

<code>
bundle exec bin/make_go.rb
</code>

without any modifications if you have ruby and bundler you should be able to type:


<code> 
rake test
</code>

and get the following result

<code>
Loaded suite ~/.rvm/gems/ruby-2.4.2@global/gems/rake-12.0.0/lib/rake/rake_test_loader
Started
N
==================================================================================================================================
MyTest#test_fail was redefined [test_fail(MyTest)]
~/git_repos/cats/test/meows_test.rb:18:in `<class:MyTest>'
==================================================================================================================================
E
==================================================================================================================================
Error: test_fail(MyTest): RuntimeError: Not implemented
~/git_repos/cats/test/meows_test.rb:19:in `test_fail'
     16:
     17:   # Fake test
     18:   def test_fail
  => 19:     raise('Not implemented')
     20:   end
     21: end
==================================================================================================================================


Finished in 0.001822 seconds.
----------------------------------------------------------------------------------------------------------------------------------
1 tests, 0 assertions, 0 failures, 1 errors, 0 pendings, 0 omissions, 1 notifications
0% passed
----------------------------------------------------------------------------------------------------------------------------------
548.85 tests/s, 0.00 assertions/s
</code> 




# Tasks
* explain/implement what you could do to make this code more clean
* modify the code so that when the environment variable BRANCH is set to master, we print `(=^ェ^=)` 
otherwise, print `~=[,,_,,]:3`. 

for instance: 
  * `BRANCH=master bin/make_go.rb` (env var set)
  * `bin/make_go.rb` (env var not set)
 
* if the ENV variable ALLCATS is equal to 'yes' print both `~=[,,_,,]:3` and `(=^ェ^=)`
example: 

`ALLCATS=yes bundle exec bin/make_go.rb`


* explain why your refactor is ideal 
* use a pull request to submit your solution

* write tests that verify: 
  1. set env var BRANCH=master and ALLCATS=no and verify only happy cat is printed
  1. set env var BRANCH=master and ALLCATS=yes and verify we print both
  1. set env var BRANCH=cheese and ALLCATS=no and verify only nyan cat is printed
  1. set env var BRANCH=cheese and ALLCATS=yes and verify we print both


