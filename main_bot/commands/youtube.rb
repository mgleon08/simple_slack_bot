module MainBot
  module Commands
    class Youtube < SlackRubyBot::Commands::Base
      command 'hi' do |client, data, _match|
        client.say(channel: data.channel, text: MainBot::YOUTUBE, gif: 'youtube')
      end
    end
  end
end
