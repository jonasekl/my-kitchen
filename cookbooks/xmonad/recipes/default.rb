
unless node["xmonad"]["users"].empty?
    include_recipe "git"
end
package "xmonad" 
package "libghc-xmonad-dev" 
package "libghc-xmonad-contrib-dev"
package "xmobar" 
package "xcompmgr" 
package "nitrogen" 
package "stalonetray" 
package "moreutils" 
package "synapse" 
package "ssh-askpass-gnome" 
package "thunar"
package "terminator"
package "remmina"

node["xmonad"]["users"].each do |hash|
    login = hash["login"]
    home = hash['home'] || (login == "root" ? "/root" : "/home/#{login}")

    git "#{home}/.xmonad" do
        repository  "git://github.com/jonasekl/xmonad-ubuntu-conf.git"
        user        login
        reference   "master"
        action      :sync
    end
end

#script "get_repo" do
#    interpreter "bash"
#    "git clone https://github.com/davidbrewer/xmonad-ubuntu-conf.git /home/<%=xmonad["user"] %>/.xmonad"
#end

