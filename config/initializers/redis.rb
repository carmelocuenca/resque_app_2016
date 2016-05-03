# config/initializers/redis.rb
if ENV["REDISCLOUD_URL"]
  $redis = Redis.new(:url => ENV["REDISCLOUD_URL"])
end

puts $redis.inspect
puts ENV["REDISCLOUD_URL"].inspect