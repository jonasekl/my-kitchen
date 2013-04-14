
case node['platform_family']
when "debian"
    package "aptitude"
    package "chromium-browser"
    package "vim"
when "rhel","fedora"
  case node['platform_version'].to_i
  when 5
    include_recipe "yum::epel"
  end
  package "vim"
#when "windows"
#  include_recipe 'git::windows'
#when "mac_os_x"
#  dmg_package "GitOSX-Installer" do
#    app node['git']['osx_dmg']['app_name']
#    package_id node['git']['osx_dmg']['package_id']
#    volumes_dir node['git']['osx_dmg']['volumes_dir']
#    source node['git']['osx_dmg']['url']
#    checksum node['git']['osx_dmg']['checksum']
#    type "pkg"
#    action :install
#  end
#else
#  package "git"
end


