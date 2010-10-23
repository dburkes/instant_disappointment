$LOAD_PATH << File.join(File.dirname(__FILE__), 'lib')
require 'instant_disappointment_formatter'

include_files = ["README*", "LICENSE", "lib/**/*"].map do |glob|
  Dir[glob]
end.flatten

spec = Gem::Specification.new do |s|
  s.name              = "instant_disappointment"
  s.version           = Spec::Runner::Formatter::InstantDisappointmentFormatter::VERSION
  s.author            = "Danny Burkes"
  s.email             = "dburkes@netable.com"
  s.homepage          = "http://github.com/dburkes/instant_disappointment"
  s.description       = "RSpec formatter that lets you down quickly"
  s.platform          = Gem::Platform::RUBY
  s.summary           = "No time for ping pong- start fixing the specs now!"
  s.files             = include_files
  s.require_path      = "lib"
  s.rubyforge_project = "instant_disappointment"
  s.add_development_dependency 'rspec'
end