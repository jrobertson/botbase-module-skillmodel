Gem::Specification.new do |s|
  s.name = 'botbase-module-skillmodel'
  s.version = '0.1.0'
  s.summary = 'A Botbase module to interact with an HTTP service using ' + 
      'the Alexa Skill protocol.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/botbase-module-skillmodel.rb']
  s.signing_key = '../privatekeys/botbase-module-skillmodel.pem'
  s.add_runtime_dependency('alexa_modelbuilder', '~> 0.4', '>=0.4.0')
  s.add_runtime_dependency('alexa_skillsimulator', '~> 0.2', '>=0.2.3')
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/botbase-module-skillmodel'
end
