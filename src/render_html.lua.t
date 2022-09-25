##md-prev
@get_current_buffer_content+=
local lines = vim.api.nvim_buf_get_lines(0, 0, -1, true)

@render_markdown
local md = require("markdown")
encoded = md(table.concat(lines, "\n"))

local before = [[<html> <head> <meta http-equiv="content-type" content="text/html; charset=windows-1252"> <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/github-markdown-css/5.1.0/github-markdown.min.css"> </head> <body class="markdown-body">]]

local after = [[</body> </html>]]

encoded = before .. encoded .. after
