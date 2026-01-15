{ pkgs ? import <nixpkgs> {} }:

let
  pythonPackages = with pkgs.python3Packages; [
    jupyterlab
    ipykernel
    pip
    numpy
    pandas
    matplotlib
    mutagen
  ];
in

pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    #nodejss
  ] ++ pythonPackages;

  shellHook = ''
    echo "wellcum 0w0"
    echo "Run 'jupyter lab' to get started 💻"
  '';
}

