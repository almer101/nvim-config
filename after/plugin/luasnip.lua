-- after/plugin/luasnip.lua
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local sn = ls.snippet_node
local fmt = require("luasnip.extras.fmt").fmt

-- 1. Load friendly-snippets (VSCode style)
--require("luasnip.loaders.from_vscode").lazy_load()

-- 2. Load *your* custom snippets
require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets" })

