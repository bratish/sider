#require 'rubygems'
#require 'redis'
#require 'commands'


#r = Redis.new
#
#cmd = "set abbabba 123212"
#
#tokens = cmd.split(" ")
#command = tokens.first
#arguments = tokens[1..tokens.size]
#
#p command
#p arguments
#
#p eval("r.send('#{command}', '#{arguments.join("', '")}')")

class Cmd

  attr_accessor :cmd

  def initialize(cmd)
    @cmd = cmd
  end

  def execute
    tokens = @cmd.split(" ")
    if COMMANDS.include? tokens.first
        eval("redis.send('#{tokens.first}', '#{tokens[1..tokens.size].join("', '")}')") rescue 'Exception occurred'
    else
      "undefined command"
    end
  end
end

#cmd = "sett abbab 123212"
#p Cmd.new(cmd).execute