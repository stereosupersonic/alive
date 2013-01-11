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

  def git_info
    @@git_info ||= Grit::Repo.new(Rails.root.to_s).commits(current_branch).first
  end

  def current_branch
    'master'#{}`git symbolic-ref HEAD`.strip.sub("refs/heads/", "")
  end

  def to_utf8(text)
    text.to_s.encode("UTF-8", :invalid => :replace, :undef => :replace, :replace => "?")
  end

  def scm_info
    {}.tap do |hash|
      hash[:commit_url] =  "https://github.com/stereosupersonic/#{APPLICATION.downcase}/commit/#{git_info.id}"
      hash[:tree_url] =  "https://github.com/stereosupersonic/#{APPLICATION.downcase}/tree/#{git_info.id}"
      hash[:diff_master_url] =  "https://github.com/stereosupersonic/#{APPLICATION.downcase}/compare/#{git_info.id}...master"
      hash[:last_commit] = git_info.id
      hash[:last_changed_date] = git_info.try(:committed_date)
      hash[:last_changed_author] = to_utf8 git_info.try(:committer).try(:name)
      hash[:revision] = to_utf8 git_info.try(:message)
      hash[:current_branch] = to_utf8 current_branch
      hash[:branch] = to_utf8 current_branch
    end
  end

end
