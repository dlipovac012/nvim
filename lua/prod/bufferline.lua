local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end

vim.opt.termguicolors = true

bufferline.setup({
      options = {
          offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                separator = true,
                text_align = "left"
            }
          },
          diagnostics = "nvim_lsp",
          separator_style = {"", ""},
          modified_icon = '●',
          show_close_icon = false,
          show_buffer_close_icons = false,
      }
})
