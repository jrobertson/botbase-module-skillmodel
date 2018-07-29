# Using the Botbase-module-skillmodel gem

## Usage

    require 'botbase'
    require 'botbase-module-skillmodel'

    conf = "
    modules:
      SkillModel:
        file: /home/james/alexa/leo.txt
        invocation: leo
        userid: amzn1.ask.account.fsdfsdxxxxxxxxxxxx
    "

    bot = BotBase.new(conf)
    bot.received 'What am I doing this week?'

Sample file: leo.txt

<pre>
name: leo
invocation: leo

Inspect
  What is my user id
  to find out my user id
ModelUpdate
  Update the model
  to update the model
  update model
  to update model
MyWeeklySchedule
  What am I doing this week
  about this week
  what am I doing week
  what is happening on week
  what is happening this week
  what's happening on week
  what's happening this week

endpoint: https://mywebserver.com/do/leo/ask
</pre>

## Resources

* botbase-module-skillmodel https://rubygems.org/gems/botbase-module-skillmodel

botbase module alexa skill gem model chat
