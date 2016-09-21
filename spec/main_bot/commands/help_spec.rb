require 'spec_helper'

describe MainBot::Commands::Help do
  it 'Help' do
    expect(message: "#{SlackRubyBot.config.user} help").to respond_with_slack_message(MainBot::HELP)
  end
end
