#!/usr/bin/env ruby
# encoding: utf-8

require "bunny"

conn = Bunny.new(host: "192.168.1.200")
conn.start

ch   = conn.create_channel
x    = ch.topic("matrix")

x.publish("add,1")
x.publish("add,2")
x.publish("remove,2")
x.publish("remove,2")
x.publish("checkout,2")


puts " [x] Sent msg"

conn.close