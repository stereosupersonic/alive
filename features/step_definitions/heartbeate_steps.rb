
Given /^I am a valid API user$/ do
   page.driver.browser.authorize 'test', 'test'   
end

Given /^I send and accept JSON$/ do
  header 'Accept', 'application/json'
  header 'Content-Type', 'application/json'
end

When /^I send a POST request for my client to "([^"]*)" with mac "([^"]*)" and IP "([^"]*)"$/ do |path, mac, ip|  
  page.driver.send(:post, path, {:client => {:ip => ip,:mac => mac }})    
end

Then /^the response should be "([^"]*)"$/ do |status|
  page.driver.response.status.should == status.to_i
end

Then /^the client with mac "([^"]*)" is created on the system$/ do |mac|
 Client.find_by_mac(mac).should_not be_nil
end
