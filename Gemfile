source 'https://rubygems.org'  

gem 'rails',                     '3.2.2'    

gem 'pg'
gem 'jquery-rails',              '2.0.0' 
gem "haml",                      ">= 3.1.4"  

group :production do
  gem 'thin'
end  

group :assets do
  gem 'sass-rails',              '~> 3.2.3'
  gem 'coffee-rails',            '~> 3.2.1'
  gem 'uglifier',                '>= 1.0.3' 
  gem "twitter-bootstrap-rails", ">= 2.0.3"  
  gem "therubyracer",            :platform => :ruby  
end 

group :development , :test do
  gem "guard", ">= 0.6.2"  
  gem 'rb-fsevent'
  gem 'ruby_gntp'  
  gem 'g',                          :git => 'https://github.com/stereosupersonic/g'      
  gem "rspec-rails",                ">= 2.9.0.rc2"  
  gem "haml-rails",                 ">= 0.3.4"     
  gem "database_cleaner",           ">= 0.7.2"
  gem "launchy",                    ">= 2.1.0" 
  gem 'annotate',                   :git => 'git://github.com/ctran/annotate_models.git'
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