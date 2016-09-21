# Commands:
#   @<bot_name> help - Show help information

module MainBot
  HELP = <<-HELP.freeze
    *Commands:*
      *@<bot>* - Show about information
      *@<bot> help* - Show help information
      *@<bot> youtube <query>* - Searches YouTube for the query and returns the video embed link.
  HELP
end
