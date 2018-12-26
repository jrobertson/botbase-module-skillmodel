#!/usr/bin/env ruby

# file: botbase-module-skillmodel.rb

# A Botbase module to interact with an HTTP service 
# using the Alexa Skill protocol

require 'askio'
require 'alexa_modelbuilder'


class BotBaseModuleSkillModel
  include RXFHelperModule
  
  def initialize(file: nil, invocation: nil, userid: nil, callback: nil)    
    
    @invocation = invocation
    amb = AlexaModelBuilder.new(FileX.read file)
    @skillbot = AskIO.new(amb.to_manifest, amb.to_model, userid: userid)
    
  end

  def query(sender='user01', msg, mode: :voicechat, echo_node: 'node1')    
    @skillbot.ask msg
  end

end
