#!/usr/bin/env ruby

# file: botbase-module-skillmodel.rb

# A Botbase module to interact with an HTTP service 
# using the Alexa Skill protocol

require 'alexa_modelbuilder'
require 'alexa_skillsimulator'


class BotBaseModuleSkillModel
  
  def initialize(file: nil, invocation: nil, userid: nil, callback: nil)    
    
    @invocation = invocation
    amb = AlexaModelBuilder.new(File.read file)
    @skillbot = AlexaSkillSimulator.new(amb.to_manifest, amb.to_model, 
      userid: userid)
    
  end

  def query(sender='user01', msg, mode: :voicechat, echo_node: 'node1')    
    @skillbot.ask 'ask ' + @invocation + ' ' + msg
  end

end
