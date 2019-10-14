require 'bundler'
Bundler.require

require_relative 'lib/user'
require_relative 'lib/event'

# creation des users
rakoto = User.new('rakoto@email.com', '33')
rasoa = User.new('rasoa@email.com', '22')


# afficher les emails
puts rakoto.email
puts rasoa.email

# affiche le nombre de user
puts "Number of instance" + User.all
