
Given /^I am a valid API user$/ do
   page.driver.browser.authorize 'test', 'test'   
end

Given /^I send and accept JSON$/ do
  header 'Accept', 'application/json'
  header 'Content-Type', 'application/json'
end

When /^I send a POST request for my client to "([^"]*)" with hostid "([^"]*)" and IP "([^"]*)"$/ do |path, hostid, ip|  
  page.driver.send(:post, path, {:client => {:ip => ip,:hostid => hostid }})    
end

Then /^the response should be "([^"]*)"$/ do |status|
  page.driver.response.status.should == status.to_i
end

Then /^the client with hostid "([^"]*)" is created on the system$/ do |hostid|
 Client.find_by_hostid(hostid).should_not be_nil
end
