# Kuro -- my desktop

{ pkgs, ... }:
{
  imports = [
    ../personal.nix   # common settings
    ./hardware-configuration.nix
    ## Desktop/shell environment
    <modules/desktop/bspwm.nix>
    ## Apps
    # <modules/browser/firefox.nix>
    <modules/browser/vivaldi.nix>
    <modules/dev/cc.nix>
    <modules/dev/rust.nix>
    <modules/editors/emacs.nix>
    <modules/editors/vim.nix>
    <modules/gaming/steam.nix>
    <modules/shell/direnv.nix>
    <modules/shell/git.nix>
    <modules/shell/gnupg.nix>
    <modules/shell/pass.nix>
    <modules/shell/tmux.nix>
    <modules/shell/zsh.nix>
    ## Project-based
    # <modules/chat>       # discord, mainly
    <modules/recording.nix>  # recording video & audio
    <modules/daw.nix>        # making music
    <modules/music.nix>      # playing music
    <modules/graphics.nix>   # art & design
    <modules/vm.nix>         # virtualbox for testing
    ## Services
    <modules/services/syncthing.nix>
    ## Theme
    <modules/themes/aquanaut>
  ];

  networking.networkmanager.enable = true;
  time.timeZone = "America/Toronto";
}
