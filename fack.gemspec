Gem::Specification.new do |s|
  s.name        = 'fack'
  s.version     = '0.0.0'
  s.date        = '2014-01-22'
  s.summary     = "Fack"
  s.description = "Fack is a simple gem for finding files within a path."
  s.authors     = ["Ben Harrington"]
  s.email       = 'ben@harringtonweb.com'
  s.files       = ["lib/fack.rb"]
  s.homepage    = 'http://www.benharrington.com'
  s.license     = 'MIT'

  s.files       = ["lib/fack.rb", "bin/fack"]
  s.executables << 'fack' 
  s.require_paths = ["lib"]
end
