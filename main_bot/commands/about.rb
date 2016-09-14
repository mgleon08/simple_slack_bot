module MainBot
  module Commands
    class About < SlackRubyBot::Commands::Base
      command 'about' do |client, data, _match|
        client.say(channel: data.channel, text: MainBot::ABOUT, gif: 'about')
      end
    end
  end
end
