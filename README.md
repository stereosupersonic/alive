Alive
===========    

This is a administration service, where clients can update her current status.  

Client example with curl:
    curl -u test:test  -v -H "Accept: application/json" -H "Content-type: application/json" -X POST -d '{"client":{"ip":"93.203.202.157","mac":"e0:f8:47:3a:0a:ea"}}' http://0.0.0.0:3000/api/v1/heartbeat

Installing the Application
--------------------------

### Mac OS Snow Leopard

First install [Xcode](http://developer.apple.com/xcode/) and [Homebrew](http://mxcl.github.com/homebrew/)

    brew install git
    brew update
    brew install pg
    brew install libxml2 libxlt
    brew install qt


### Platform independent

Install RVM:

    bash < <(curl -s https://rvm.beginrescueend.com/install/rvm)

Add this line at the end of your `.bash_profile`:

    [[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

Close Terminal and open terminal again!

    rvm install 1.9.2-p290
    git clone git@github.com:stereosupersonic/alive.git
    cd alive 
    
Bootstrap the application  

    script/bootstrap 

start the application

    bundle exec rake start_server  


Testing the application (rspec)
-----------------------

Setup test database

    RAILS_ENV=test bundle exec rake db:schema:load     

run rspec tests (Rails 3.x)
    
    bundle exec rspec spec
    
Alternative

    bundle exec rake spec
    
Running Guard
---------------

Please start it manually with the following command:

    bundle exec guard    


Contributors
------------

* Michael Deimel (stereosupersonic) - [michael@deimel.de](mailto:michael@deimel.de)  