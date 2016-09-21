require 'spec_helper'

describe MainBot::Commands::About do
  it 'About' do
    expect(message: SlackRubyBot.config.user).to respond_with_slack_message(MainBot::ABOUT)
  end
end
