# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
require ::File.expand_path('../config/install.rb',  __FILE__)

map "/" do
  run Rails.application
end

map "/install" do
  run Install
end
