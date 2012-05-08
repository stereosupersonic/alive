module AuthHelper
  def http_login(options = {})
    user = options[:user]
    pw =  options[:pw] 
    request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials(user,pw)
  end  
end