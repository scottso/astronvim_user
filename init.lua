return {
  lazy = {
    defaults = { lazy = true },
    concurrency = 4,
  },
  colorscheme = "monokai_ristretto",
  polish = function()
    -- '': The equivalent of (nore)map in VimL, i.e. mapping applies in visual, normal, select, and operator-pending modes.
    -- n: Normal mode
    -- v: Visual mode (both x and s)
    -- x: Visual only mode
    -- s: Select mdoe
    -- i: Insert mode
    local silentnoremap = { noremap = true, silent = true }
    local silent = { silent = true }
    local noremap = { noremap = true }

    -- Basic clipboard interaction
    vim.keymap.set({ "n", "x" }, "cy", '"+y', { desc = "Copy to system clipboard" }) -- copy
    vim.keymap.set({ "n", "x" }, "cp", '"+p', { desc = "Paste from system clipboard" }) -- paste
    vim.keymap.set({ "n", "x" }, "cP", '"+P', { desc = "Paste above from system clipboard" }) -- paste above

    -- Delete text
    vim.keymap.set({ "n", "x" }, "x", '"_x')

    --  Don't use Ex mode, use Q for formatting
    vim.keymap.set("", "Q", "gq", silentnoremap)

    --  make tab in visual mode indent code
    vim.keymap.set("v", "<tab>", ">gv", silentnoremap)
    vim.keymap.set("v", "<s-tab>", "<gv", silentnoremap)
  end,
}
