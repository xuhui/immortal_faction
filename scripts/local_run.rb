#!/usr/bin/env ruby

puts "------> starting redis"
%x|
  redis-server /usr/local/etc/redis.conf
  redis-server /usr/local/etc/redis_6377.conf
  redis-server /usr/local/etc/redis_6378.conf
|
puts "-------> redis prepared!"

puts "---------> starting goliath server "
servers = {:sign_up => 9000, :password => 9001, :login => 9002, :reg_choice => 9003}
servers.each do |k, v|
  %x| touch ./logs/imf_#{v}.log_stdout.log|
  %x| chmod 755 ./logs/imf_#{v}.log_stdout.log|
  path = %x|pwd|.chomp
  %x| ruby config/route.rb #{k} -e prod -p #{v} -l #{path}/logs/imf_#{v}.log -P #{path}/logs/goliath.pid -d |
end
puts "----------> ok, goliath prepared!"

puts "-----> starting haproxy server..."

%x| sudo /usr/local/sbin/haproxy -f /usr/local/Cellar/haproxy/1.4.21/haproxy.cfg |

puts "-------> ok, haproxy prepared for you!"

puts "----------> run faye server..."
%x| rackup lib/faye/faye_app.ru -s thin -E production -D -p 9004|
puts  "-------> faye server prepared for you!"
