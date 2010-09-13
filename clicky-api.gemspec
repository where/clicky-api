Gem::Specification.new do |s|
  s.name = %q{clicky-api}
  s.version = "0.1"
  s.date = %q{2010-09-13}
  s.authors = ["pete gamache"]
  s.email = %q{gamache@gmail.com}
  s.summary = %q{Clicky-api provides an interface to the Clicky web analytics API, version 4.}
  s.homepage = %q{http://github.com/where/clicky-api/}
  s.description = %q{Clicky-api provides an interface to the Clicky web analytics API, version 4.}
  s.files = [ 
    "README", "Changelog", "LICENSE", 
    "lib/clicky-api.rb", "test/test-suite.rb"
  ]
  s.test_file = 'test/test-suite.rb'
  
  s.add_dependency('httparty')
end