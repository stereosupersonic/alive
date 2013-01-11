source 'https://rubygems.org'  

gem 'rails',                     '3.2.11'    


gem 'jquery-rails'             
gem 'haml-rails',                '~> 0.3.4'

group :production do
  gem 'thin'
  gem 'pg'
end  

group :assets do
  gem 'sass-rails',              '~> 3.2.3'
  gem 'coffee-rails',            '~> 3.2.1'
  gem 'uglifier',                '>= 1.0.3' 
  gem "less-rails"
  gem "twitter-bootstrap-rails", "~> 2.2.0"  
  gem "therubyracer",            :platform => :ruby  
end 

group :development , :test do
  gem "sqlite3"
  gem "guard", ">= 0.6.2"  
  gem 'rb-fsevent'
  gem 'ruby_gntp'  
  gem 'g',                          :git => 'https://github.com/stereosupersonic/g'      
  gem "rspec-rails",                ">= 2.9.0.rc2" 
  gem "database_cleaner",           ">= 0.7.2"
  gem "launchy",                    ">= 2.1.0" 
  gem 'annotate',                   :git => 'git://github.com/ctran/annotate_models.git'
end  

group :development do 
  gem "binding_of_caller"           #is needed for better_errors
  gem "better_errors"               #https://github.com/charliesome/better_errors
end

group :test do   
  gem "factory_girl_rails",         ">= 3.2.0"    
  gem "cucumber-rails",             ">= 1.3.0" 
  gem "capybara",                   ">= 1.1.2"  
  gem 'simplecov'  
  gem "guard-bundler",              ">= 0.1.3"
  gem "guard-rails",                ">= 0.0.3"
  gem "guard-rspec",                ">= 0.4.3"
  gem "guard-cucumber",             ">= 0.6.1"    
end    