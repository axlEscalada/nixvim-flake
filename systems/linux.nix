{
  pkgs,
  flake,
  ...
}:
# See nix-darwin/default.nix for other modules in use.
{
  environment.systemPackages = with pkgs; [
    asmfmt
    asm-lsp
    bashdb
    gdb
    rr
  ];
}
