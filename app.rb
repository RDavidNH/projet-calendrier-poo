require 'pry'
require 'bundler'
Bundler.require


require_relative 'lib/user'
require_relative 'lib/event'

# create new users
rakoto = User.new('rakoto@email.com', '33')
rasoa = User.new('rasoa@email.com', '22')


# show emails
puts rakoto.email
puts rasoa.email

# show number of user
puts "Number of instance " + User.all.to_s

puts '=================================='
# create new events
event_1 = Event.new("2019-10-14 22:40", 10, 'event 1', ['rakoto@email.com', 'rasoa@email.com'])

#event_1.postpone_24h

event_1.to_s

binding.pry
