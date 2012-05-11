Alive
===========    

This is a administration service, where clients can update her current status.  

Client example with curl:  

    curl -u someuser:secret  -v -H "Accept: application/json" -H "Content-type: application/json" -X POST -d '{"client":{"ip":"93.203.202.157","hostid":"e0:f8:47:3a:0a:ea"}}' http://0.0.0.0:3000/api/v1/heartbeat

Deploy to Heroku
--------------------------

Install Heroku gem

    gem install heroku 
    
Login to Heroku 

    heroku create

Check out from Github
 
    git clone git@github.com:stereosupersonic/alive.git

Creat Application Stack  

    heroku create --stack cedar

Set HTTP Auth User and Password  

    heroku config:add ALIVE_USER=someuser
    heroku config:add ALIVE_PASSWORD=secret
    
Push to Heroku  

    git push heroku master
    
Run Migrations   

    heroku run rake db:migrate


Installing the Application local
--------------------------

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

run all specs and features (Rails 3.x)
    
    bundle exec rake build

    
Running Guard
---------------

Please start it manually with the following command:

    bundle exec guard    


Contributors
------------

* Michael Deimel (stereosupersonic) - [michael@deimel.de](mailto:michael@deimel.de)  