local status_ok, cmp = pcall(require, "cmp")
if not status_ok then
	return
end

cmp.setup({
	snippet = {
		expand = function(args)
		luasnip.lsp_expand(args.body) -- For `luasnip` users.
	end,
  },
})
