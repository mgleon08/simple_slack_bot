$LOAD_PATH << (File.dirname(__FILE__))

require 'dotenv'
Dotenv.load

require 'slack-ruby-bot'
require 'main_bot/version'
require 'main_bot/commands'
require 'main_bot/supports'
require 'main_bot/bot'

MainBot::Bot.run
