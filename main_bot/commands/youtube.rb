module MainBot
  module Commands
    class Youtube < SlackRubyBot::Commands::Base
      extend MainBot::Supports::Youtube
      match(/^(?<bot>[[:alnum:][:punct:]@<>]*) youtube (?<query>.*)$/i) do |client, data, match|
        begin
          youtube_url = search(match[:query])
          client.say(channel: data.channel, text: "#{youtube_url}")
        rescue => e
          client.say(channel: data.channel, text: e.to_s)
        end
      end
    end
  end
end
