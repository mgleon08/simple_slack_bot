# Configuration:
#   YOUTUBE_API_TOKEN - Obtained from https://console.developers.google.com
# Youtube API:
#   https://developers.google.com/youtube/v3/docs/search/list
# Commands:
#   @<bot_name> youtube <query> - Searches YouTube for the query and returns the video embed link.

module MainBot
  module Supports
    module Youtube
      def search(query)
        conn = Faraday.new(url: 'https://www.googleapis.com/youtube/v3/search')

        respones = conn.get do |req|
          req.params['q']     = query.to_s
          req.params['part']  = 'snippet'
          req.params['type']  = 'video'
          req.params['order'] = 'relevance'
          req.params['maxResults'] = 1
          req.params['key'] = ENV['YOUTUBE_API_TOKEN']
        end

        videos   = JSON.parse(respones.body)['items']
        video_id = videos[0]['id']['videoId']

        "https://www.youtube.com/watch?v=#{video_id}"
      end
    end
  end
end
