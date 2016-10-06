require "bunny"
require "readline"

conn = Bunny.new :host => ARGV[0], :user => ARGV[1], :pass => ARGV[2]
conn.start
ch = conn.create_channel
q  = ch.queue("bunny")
x  = ch.default_exchange

q.subscribe do |delivery_info, metadata, payload|
  puts "Received #{payload}"
end

for i in 0..ARGV[3].to_i
  x.publish("Hello #{i}!", :routing_key => q.name)
end

conn.close
