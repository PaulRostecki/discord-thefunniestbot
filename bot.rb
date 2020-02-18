require 'discordrb'
require './lib/commands.rb'

bot = Discordrb::Commands::CommandBot.new(
    token: '<token here>',
    client_id: '<id here>',
    prefix: '!'
  )
bot.include! Commands

puts "This bot's invite URL is #{bot.invite_url}."

bot.run
