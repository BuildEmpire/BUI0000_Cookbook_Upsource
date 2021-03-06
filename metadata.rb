name             'cookbook_upsource'
maintainer       'Fred Thompson'
maintainer_email 'fred.thompson@buildempire.co.uk'
license          'Apache 2.0'
description      'The JetBrains Upsource site.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.18'

recipe 'cookbook_upsource', 'The JetBrains Upsource site.'

%w{ ubuntu }.each do |os|
  supports os
end

%w{build-essential java limits}.each do |cb|
  depends cb
end
