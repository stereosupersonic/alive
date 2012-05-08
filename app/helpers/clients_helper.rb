module ClientsHelper 
  
  def heartbeat_label(client)
    client.heartbeated_at  ? time_ago_in_words(client.heartbeated_at)  : 'never' 
  end
end
