-- return {
--   "lervag/vimtex",
--   init = function()
--     -- vim.g['vimtex_view_method'] = 'zathura'     -- main variant with xdotool (requires X11; not compatible with wayland)
--     -- vim.g['vimtex_view_method'] = 'zathura_simple' -- for variant without xdotool to avoid errors in wayland
--     vim.g['vimtex_view_method'] = 'general'
--     -- vim.g['vimtex_view_general_viewer'] = 'SumatraPDF'
--     vim.g['vimtex_view_general_viewer'] = '~/.local/bin/sumatrapdf.sh'
--     -- vim.g['vimtex_view_general_options'] = '-reuse-instance -forward-search @tex @line @pdf'
--
--     vim.g['vimtex_quickfix_mode'] = 0              -- suppress error reporting on save and build
--     vim.g['vimtex_mappings_enabled'] = 0           -- Ignore mappings
--     vim.g['vimtex_indent_enabled'] = 0             -- Auto Indent
--     -- vim.g['tex_flavor'] = 'latex'                  -- how to read tex files
--     vim.g['tex_indent_items'] = 0                  -- turn off enumerate indent
--     vim.g['tex_indent_brace'] = 0                  -- turn off brace indent
--     -- vim.g['vimtex_context_pdf_viewer'] = 'SumatraPDF'  -- external PDF viewer run from vimtex menu command
--     -- vim.g['vimtex_log_ignore'] = ({                -- Error suppression:
--     --   'Underfull',
--     --   'Overfull',
--     --   'specifier changed to',
--     --   'Token not allowed in a PDF string',
--     -- })
--   end,
-- }

return {
  "lervag/vimtex",
  init = function()
    -- Set the viewer to use the general method with SumatraPDF
    vim.g['vimtex_view_method'] = 'general'
    vim.g['vimtex_view_general_viewer'] = '~/.local/bin/sumatrapdf.sh'
    vim.g['vimtex_view_general_options'] = '--reuse-instance'

    -- Configure the LaTeX compiler to use latexmk with synctex enabled
    vim.g['vimtex_compiler_method'] = 'latexmk'
    vim.g['vimtex_compiler_latexmk'] = {
      build_dir = '',
      callback = 1,
      continuous = 1,
      options = {
        '-synctex=1', -- Enable SyncTeX for forward search
        '-interaction=nonstopmode',
      },
    }
  end
}

