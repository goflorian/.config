return {
  "lervag/vimtex",
  init = function()
    -- Set the viewer to use the general method with SumatraPDF
    vim.g['vimtex_view_method'] = 'general'
    vim.g['vimtex_view_general_viewer'] = '/home/flo/.local/bin/sumatrapdf.sh'
    vim.g['vimtex_view_general_options'] = '@tex @line @pdf'
    vim.g['vimtex_callback_progpath']='wsl nvim' -- add this to adjust paths in synctex file

    -- Configure the LaTeX compiler to use latexmk with synctex enabled
    vim.g['vimtex_compiler_method'] = 'latexmk'
    vim.g['vimtex_compiler_latexmk'] = {
      build_dir = '',
      callback = 1,
      continuous = 1,
      options = {
        '-synctex=1', -- Enable SyncTeX for forward search
        '-interaction=nonstopmode',
        '-aux-directory=.aux',
        -- '-file-line-error'
      },
    }
  end
}

