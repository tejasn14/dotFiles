local null_ls = require('null-ls')

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  -- php
  formatting.pint,
  lint.phpstan,

  -- python
  formatting.black,
  lint.mypy,
  lint.ruff,

  -- java
  formatting.clang_format,
  lint.semgrep,

  -- typescript 
  formatting.prettier,
  lint.eslint_d,
  lint.semgrep,

}

null_ls.setup {
   debug = true,
   sources = sources,
}
