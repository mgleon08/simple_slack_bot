module MainBot
  module Commands
    class About < SlackRubyBot::Commands::Base
      match(/^(?<bot>\w*)$/) do |client, data, _match|
        client.say(channel: data.channel, text: MainBot::ABOUT, gif: 'fun')
      end
      match(/^(?<bot>[[:alnum:][:punct:]@<>]*)$/u) do |client, data, _match|
        client.say(channel: data.channel, text: MainBot::ABOUT, gif: 'fun')
      end
    end
  end
end
