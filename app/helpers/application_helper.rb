module ApplicationHelper

  def logged_in?
    not request.authorization.nil?
  end

  def local_ip
    if defined?(Rails) and (Rails.env.test? rescue false)
      return "localhost"
    end

    begin
      # this code here discovers the local IP
      orig, Socket.do_not_reverse_lookup = Socket.do_not_reverse_lookup, true
      ip = 0
      UDPSocket.open do |s|
        s.connect '64.233.187.99', 1
        ip = s.addr.last
      end
      ip
    ensure
      Socket.do_not_reverse_lookup = orig
    end

  end


end
