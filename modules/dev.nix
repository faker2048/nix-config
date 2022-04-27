{pkgs, ... }:


{


  nixpkgs.config.allowUnfree = true;
  
  environment.systemPackages = with pkgs; [
    wget
    git 
    nodejs-16_x
    nixpkgs-fmt
    (callPackage ../pkgs/dirspatchelf { })
  ];
}
