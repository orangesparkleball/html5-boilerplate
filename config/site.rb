require 'hashie'

CONFIG = Hashie::Mash.new
Haml::Engine::CONFIG = CONFIG
CONFIG.site_name = "Default Site"
CONFIG.company = "Orange Sparkle Ball"
CONFIG.paranoia = false

configuration.preview_server_port = 5432

module StaticMatic::ServerMixin
  def preview
    puts "OrangeMatic Preview Server"
    puts "Ctrl+C to exit"
    StaticMatic::Server.start(self)
  end
end
