require 'bundler/setup'
Bundler.require

ActiveRecord::Base.logger.level= 1

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)

require_all 'app'