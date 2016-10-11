require "bunny"
require "readline"

conn = Bunny.new :host => ARGV[0], :user => ARGV[1], :pass => ARGV[2]
conn.start
ch = conn.create_channel
q  = ch.queue("bunny")
x  = ch.default_exchange

f = File.open('testclient.log', 'w')

q.subscribe do |delivery_info, metadata, payload|
  f.write "#{payload}"
  if payload == ARGV[3]
    f.close
    conn.close
  end
end

for i in 0..ARGV[3].to_i
  x.publish("#{i}", :routing_key => q.name)
end
