require 'rails/generators'

class AirbrakeGenerator < Rails::Generators::Base

  def self.source_root
    @_airbrake_source_root ||= File.expand_path("../../../../../generators/netguru/templates", __FILE__)
  end

  def install
    install_nginx
  end

  def install_nginx
    template 'nginx.staging.conf', "config/nginx.staging.#{Netguru.application_name}.conf"
  end

end