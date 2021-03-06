Gem::Specification.new do |s|
  s.name = 'blockcache'
  s.version = '0.3'
  
  s.authors = ["Matthew Scharley"]
  s.date = %q{2012-03-11}
  s.description = %q{Cache that knows how to update it's own contents.}
  s.email = %q{matt.scharley@gmail.com}
  s.files = `git ls-files | egrep -v '^\\.'`.split("\n")
  s.homepage = %q{http://github.com/mscharley/ruby-blockcache}
  s.require_paths = ['lib']
  s.summary = %q{Cache that knows how to update it's own contents.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2
  end
end
