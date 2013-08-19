$LOAD_PATH.unshift 'lib'
require 'rake'
require 'net/netconf'

Gem::Specification.new do |s|

  s.name = 'junos-ez-srx'
  s.version = '0.0.8'
  s.summary = "Junos NETCONF for SRX"
  s.description = "Junos SRX gem for application development using NETCONF"
  s.homepage = 'https://github.com/Juniper/ruby-junos-ez-srx'
  s.authors = ["Jeremy Schulman"]
  s.email = 'jschulman@juniper.net'
  s.files = FileList[ '*', 'lib/**/*.rb', 'examples/**/*.rb' ]

  s.add_dependency('netconf')
  s.add_dependency('ipaddress')
  s.add_dependency('junos-ez-stdlib', '>= 0.1.0')

end
