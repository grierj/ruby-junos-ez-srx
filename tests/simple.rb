require 'yaml'
require 'net/netconf/jnpr'
require 'junos-ez/stdlib'
require 'junos-ez/srx'

login = { :target => 'vsrx', :username => 'jeremy',  :password => 'jeremy1',  }

ndev = Netconf::SSH.new( login )
ndev.open

Junos::Ez::Provider( ndev )
Junos::Ez::SRX::Zones::Provider( ndev, :zones )
Junos::Ez::SRX::Policies::Provider( ndev, :policies )


binding.pry

ndev.close
