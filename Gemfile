source 'http://rubygems.org'

gem "RubyInline", "~> 3.11.3"
gem "hiredis", "~> 0.4.5"

gem "em-synchrony"
gem "em-redis"
gem "redis", "~> 3.0.1", :require => ["redis/connection/synchrony", "redis"]


gem "ruby_protobuf", "~> 0.4.11"

group :app do
  gem "goliath","~> 1.0.0"
end

group :test do
  gem "rspec", "~> 2.11.0"
  gem "rack-test", "~> 0.6.1"
  gem "em-http-request", "~> 1.0.3"
end