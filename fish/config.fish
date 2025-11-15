# All User Configs goes here
zoxide init fish | source

# ## FINAL PATH CLEANUP - MUST BE AT END OF FILE
# # This runs AFTER all other config sources
# set -l clean_path
#
# # System paths
# for p in /usr/local/sbin /usr/local/bin /usr/bin /var/lib/flatpak/exports/bin /usr/bin/site_perl /usr/bin/vendor_perl /usr/bin/core_perl
#     set -a clean_path "$p"
# end
#
# # User paths - add in priority order
# for p in $HOME/.local/bin $HOME/.config/hyde/scripts $HOME/.local/lib/hyde $HOME/.local/share/waybar/scripts $HOME/.config/waybar/scripts $HOME/Applications/depot_tools
#     if test -d "$p"
#         set -a clean_path "$p"
#     end
# end
#
# set -gx PATH $clean_path

## PATH Management using fish_add_user_paths (no duplicates)
# This is the proper fish way - it automatically deduplicates
fish_add_path ~/.local/bin ~/.config/hyde/scripts ~/.local/lib/hyde ~/.local/share/waybar/scripts ~/.config/waybar/scripts ~/Applications/depot_tools

# Start SSH agent if not already running
if not set -q SSH_AUTH_SOCK
    eval (ssh-agent -c)
    ssh-add ~/.ssh/git >/dev/null
end
