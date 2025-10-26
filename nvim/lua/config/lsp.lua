return function()
  local root_files = { "pyproject.toml", "setup.py", "requirements.txt", ".git" }
  local root = vim.fs.find(root_files, { upward = true })[1]
  if root then
    vim.lsp.start({
      name = "pyright",
      cmd = { "pyright-langserver", "--stdio" },
      root_dir = vim.fs.dirname(root),
    })
  else
    vim.notify("No se encontró un directorio raíz para Pyright", vim.log.levels.WARN)
  end
end
