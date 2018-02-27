lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jvm_rb/version'

Gem::Specification.new do |s|
  s.name        = 'jvm_spec'
  s.version     = JvmRb::VERSION
  s.date        = '2018-02-26'
  s.summary     = "A toy JVM written in Ruby"
  s.description = 'Mostly a Ruby port of what zxh0 had'
  s.authors     = ['Mengchen Yu']
  s.files       = Dir.glob("{bin,lib}/**/*") + %w(README.md)
  s.executables = ['javar']
  s.license     = 'MIT'
end
