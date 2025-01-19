return {
  import = "astrocommunity.pack.python",
  opts = function(_, opts)
    -- Extend Pyright setup to detect Conda environment automatically
    opts.lsp = opts.lsp or {}
    opts.lsp.before_init = function(_, config)
      local conda_prefix = os.getenv "CONDA_PREFIX"
      if conda_prefix and conda_prefix ~= "" then
        config.settings.python.pythonPath = conda_prefix .. "/bin/python"
      else
        config.settings.python.pythonPath = vim.fn.exepath "python3" or vim.fn.exepath "python" or "python"
      end
    end
    return opts
  end,
}
