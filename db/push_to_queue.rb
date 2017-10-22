#!/usr/bin/env ruby
# encoding: utf-8

require "bunny"

conn = Bunny.new(host: "192.168.1.200")
conn.start

ch   = conn.create_channel
x    = ch.topic("matrix")

x.publish("add,2", routing_key: "cart_events_key")

puts " [x] Sent msg"

conn.close