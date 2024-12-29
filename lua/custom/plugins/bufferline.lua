return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("bufferline").setup({
      options = {
        separator_style = "slant", -- Modern separator style
        diagnostics = "nvim_lsp", -- Show LSP diagnostics in tabs
        show_buffer_icons = true, -- File type icons in tabs
        show_buffer_close_icons = false, -- Disable close icons
        offsets = {
          { filetype = "NvimTree", text = "File Explorer", highlight = "Directory", text_align = "left" },
        },
      },
    })
    vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { desc = "Next buffer" })
    vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
  end,
}
