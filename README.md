#Simple_Slack_Bot

This is easy way to implement your first slack bot in ruby use [slack-ruby-bot](https://github.com/slack-ruby/slack-ruby-bot) gem.

## Installation

```
$ git clone git@github.com:mgleon08/simple_slack_bot.git
```

##Setup

###slack bot token
Registering the bot to get `SLACK_API_TOKEN` [https://my.slack.com/services/new/bot](https://my.slack.com/services/new/bot)


###youtube token

Get `YOUTUBE_API_TOKEN` from [https://console.developers.google.com
](https://console.developers.google.com)

###configure
copy `.env_example` to `.env`

```
SLACK_API_TOKEN=[copy you apply for slack token]
YOUTUBE_API_TOKEN=[copy you apply for youtube token]
```

###giphy

If you want to show gif, you can add `WITH_GIPHY=` in `.env`.

##Started

```
foreman start
```

###default command in slack

```
Commands:
  @<bot> - Show about information
  @<bot> help - Show help information
  @<bot> youtube <query> - Searches YouTube for the query and returns the video embed link.
```

##Customize

* `simple_slack_bot/main_bot/commands/[yourfile]` Bot trigged word

```
module MainBot
  module Commands
    class Help < SlackRubyBot::Commands::Base
      command 'help' do |client, data, _match|
        client.say(channel: data.channel, text: MainBot::HELP, gif: 'help')
      end
    end
  end
end
```

* `simple_slack_bot/main_bot/supports/[yourfile]` Bot Support features

```
module MainBot
  HELP = <<-HELP.freeze
    *Commands:*
      *@<bot>* - Show about information
      *@<bot> help* - Show help information
      *@<bot> youtube <query>* - Searches YouTube for the query and returns the video embed link.
  HELP
end
```

It have three way to match word `match`, `comman`, `scan`

##Deploy

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com)

```ruby
#create new heroku project
heroku create

#push heroku
git push heroku master

#env config setting
heroku config:add SLACK_API_TOKEN=[YOUR_ SLACK_API_TOKEN]

#env config remove
heroku config:remove SLACK_API_TOKEN

#log
heroku logs --tail

#scale
heroku ps:scale web=2
```

[uptimerobot](http://uptimerobot.com/) To prevent dormancy

##More information

See below to get more information

* [slack-ruby-client](https://github.com/slack-ruby/slack-ruby-client)
* [slack-ruby-bot](https://github.com/slack-ruby/slack-ruby-bot)
* [slack-ruby-bot-server](https://github.com/slack-ruby/slack-ruby-bot-server)
