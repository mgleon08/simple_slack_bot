require 'spec_helper'

describe MainBot::Commands::Youtube do
  context 'with YOUTUBE_API_TOKEN' do
    before { allow_any_instance_of(MainBot::Supports::Youtube).to receive(:search).and_return('https://www.youtube.com/watch?v=hello') }
    it 'should get url' do
      expect(message: "#{SlackRubyBot.config.user} youtube hello").to respond_with_slack_message('https://www.youtube.com/watch?v=hello')
    end
  end

  context 'without YOUTUBE_API_TOKEN' do
    it 'should get error message' do
      expect(message: "#{SlackRubyBot.config.user} youtube hello").to respond_with_slack_message('You must configure the YOUTUBE_API_TOKEN environment variable')
    end
  end
end
