maintainer          "Jonas Eklöf"
maintainer_email    "jonas@polymorphic.se"
version             "0.0.0"

recipe "standard-apps" , "Installs apps that just need to be in place."

%w{ubuntu debian centos redhat amazon scientific fedora}.each do |os|
    supports os
end

