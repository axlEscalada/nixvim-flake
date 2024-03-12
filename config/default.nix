{pkgs, ...}: {
  imports = [
    ./keys.nix
    ./sets.nix

    ./plug/colorscheme/colorscheme.nix

    ./plug/completion/cmp.nix
    ./plug/completion/lspkind.nix

    ./plug/git/gitsigns.nix
    ./plug/git/lazygit.nix

    ./plug/debug/debug.nix

    ./plug/lsp/conform.nix
    ./plug/lsp/fidget.nix
    ./plug/lsp/lsp.nix
    ./plug/lsp/lspsaga.nix
    #./plug/lsp/none-ls.nix

    ./plug/notes/markdown-preview.nix
    ./plug/notes/pencil.nix
    ./plug/notes/twilight.nix
    ./plug/notes/zen-mod.nix

    ./plug/snippets/luasnip.nix

    ./plug/statusline/lualine.nix
    #./plug/statusline/staline.nix

    ./plug/treesitter/treesitter-context.nix
    ./plug/treesitter/treesitter-textobjects.nix
    ./plug/treesitter/treesitter.nix

    ./plug/ui/alpha.nix
    ./plug/ui/bufferline.nix
    ./plug/ui/noice.nix
    ./plug/ui/nvim-notify.nix
    ./plug/ui/telescope-zoxide.nix
    ./plug/ui/telescope.nix

    ./plug/utils/copilot-lua.nix
    ./plug/utils/flash.nix
    ./plug/utils/hardtime.nix
    #./plug/utils/harpoon.nix
    ./plug/utils/grapple.nix
    ./plug/utils/illuminate.nix
    ./plug/utils/nvim-autopairs.nix
    ./plug/utils/oil.nix
    ./plug/utils/telescope-gitmoji.nix
    ./plug/utils/undotree.nix
    ./plug/utils/whichkey.nix
  ];
  config = {
    extraPackages = with pkgs; [
      # Formatters
      alejandra
      astyle
      black
      cmake-format
      gofumpt
      golines
      gotools
      isort
      nodePackages.prettier
      prettierd
      rustfmt
      shfmt
      stylua
      # Linters
      commitlint
      eslint_d
      golangci-lint
      hadolint
      html-tidy
      luajitPackages.luacheck
      markdownlint-cli
      nodePackages.jsonlint
      pylint
      ruff
      shellcheck
      vale
      yamllint
      # Debuggers / misc deps
      clang-tools
      delve
      fd
      go
      lldb_17
      llvmPackages_17.bintools-unwrapped
      marksman

      (nerdfonts.override {
        fonts = [
          "JetBrainsMono"
          "RobotoMono"
        ];
      })

      python3
      ripgrep
      tmux-sessionizer
      zig
    ];
  };
}
