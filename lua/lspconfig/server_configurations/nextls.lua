local util = require 'lspconfig.util'

return {
  default_config = {
    filetypes = { 'elixir', 'eelixir', 'heex', 'surface' },
    root_dir = function(fname)
      return util.root_pattern('mix.exs', '.git')(fname) or vim.loop.os_homedir()
    end,
  },
  docs = {
    description = [[
https://github.com/elixir-tools/next-ls

`nextls` can be installed by following the instructions [here](https://github.com/elixir-tools/next-ls#installation).
]],
    default_config = {
      root_dir = [[root_pattern("mix.exs", ".git") or vim.loop.os_homedir()]],
    },
  },
}
