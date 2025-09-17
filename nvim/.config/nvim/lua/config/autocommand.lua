vim.filetype.add {
  pattern = {
    ['.*/kitty/*.conf'] = 'bash',
    ['.*/hypr/.*%.conf'] = 'hyprlang',
    ['.*/nvimbacks/.*%.conf'] = 'hyprlang',
  },
}

