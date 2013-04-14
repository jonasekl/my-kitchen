maintainer          "Jonas Eklöf"
maintainer_email    "jonas@polymorphic.se"
version             "0.0.0"

recipe "xmonad" , "Setups up xmonad"

%w{ubuntu debian centos redhat amazon scientific fedora}.each do |os|
    supports os
end

