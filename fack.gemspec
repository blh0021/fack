Gem::Specification.new do |s|
  s.name        = 'fack'
  s.version     = '0.0.3'
  s.date        = Time.now.strftime("%Y-%m-%d")
  s.summary     = "Fack"
  s.description = "Fack is a simple gem for finding files within a path."
  s.authors     = ["Ben Harrington"]
  s.email       = 'ben@harringtonweb.com'
  s.files       = ["lib/fack.rb"]
  s.homepage    = 'https://github.com/blh0021/fack'
  s.license     = 'MIT'

  s.files       = ["lib/fack.rb", "bin/fack"]
  s.executables << 'fack' 
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'colorize'
end
