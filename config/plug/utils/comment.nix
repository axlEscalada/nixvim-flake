{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [
    comment-nvim
  ];
  extraConfigLua = ''
    require('Comment').setup()
  '';
}
