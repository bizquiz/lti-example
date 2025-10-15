{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name= "lti development shell";

  buildInputs = with pkgs; [
    git
    php84
    php84Packages.composer
  ];

  shellHook = ''
    echo "Welcome to the lti example shell"
    echo "PHP version: $(php -v | head -n 1)"
    echo "Composer version: $(composer --version 2>&1 | head -n 1)"
    echo "To install dependencies, run 'composer install'"
    echo "To start a local server, run 'php -S localhost:8000 -t public'"
  '';
}

