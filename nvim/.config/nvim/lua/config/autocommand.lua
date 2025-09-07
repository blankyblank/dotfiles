vim.filetype.add {
  pattern = {
    ['.*/kitty/*.conf'] = 'bash',
    ['.*/hypr/.*%.conf'] = 'hyprlang',
    ['.*/nvimbacks/.*%.conf'] = 'hyprlang',
  },
}

--vim.o.updatetime = 1000
--vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
--  callback = function()
--    vim.diagnostic.open_float(nil, { border = "rounded", focus = false })
--  end
--})

--vim.diagnostic.handlers["my/notify"] = {
--  show = function(namespace, bufnr, diagnostics, opts)
--    -- In our example, the opts table has a "log_level" option
--    local level = opts["my/notify"].log_level
--
--    local name = vim.diagnostic.get_namespace(namespace).name
--    local msg = string.format("%d diagnostics in buffer %d from %s",
--                              #diagnostics,
--                              bufnr,
--                              name)
--    vim.notify(msg, level)
--  end,
--}
--
---- Users can configure the handler
--vim.diagnostic.config({
--  ["my/notify"] = {
--    log_level = vim.log.levels.INFO,
--
--    -- This handler will only receive "error" diagnostics.
--    severity = vim.diagnostic.severity.ERROR,
--  }
--})
