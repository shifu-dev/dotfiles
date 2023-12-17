{ config, pkgs, ... }:
{
    home.packages = [
        pkgs.git
    ];

    programs.git = {
        enable = true;
        userName = "shifu-dev";
        userEmail = "csingh8476@gmail.com";
    };
}