Gem::Specification.new do |s|
  s.name= 'vigenere'
  s.version= '0.1'
  s.authors= ['Roberto Decurnex']
  s.description= 'A simple Vigenère Cipher ruby implementation'
  s.summary= 'vigenere-0.1'
  s.email= 'nex.development@gmail.com'
  s.homepage= 'http://robertodecurnex.github.com/vigenere'
  s.platform= Gem::Platform::RUBY
  s.add_dependency 'caesar', '>=0.3'
  s.files= [
    'README.textile',
    'lib/vigenere.rb'
  ]
  s.require_path= 'lib'
end

