{ config, pkgs, ... }:
{
    programs.home-manager.enable = true;

    home.username = "chetan";
    home.homeDirectory = "/home/chetan";
    home.stateVersion = "23.11";

    imports = [
        env/gnome.nix
        packages/git.nix
        packages/obsidian.nix
    ];

    nixpkgs.config.allowUnfree = true;
    home.packages = with pkgs; [
        vim
        vscode
        firefox
        vlc
        obsidian
        efibootmgr
        jellyfin
        bitwarden
        bottles
        protonvpn-gui
        protonvpn-cli
        spotify
    ];
}
