module MainBot
  module Commands
    class Help < SlackRubyBot::Commands::Base
      command 'help' do |client, data, _match|
        client.say(channel: data.channel, text: MainBot::HELP, gif: 'help')
      end
    end
  end
end
