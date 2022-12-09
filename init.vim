" Plugin 插件配置
call plug#begin('~/AppData/Local/nvim/plugged')
" below are some vim plugins for demonstration purpose.
" add the plugin you want to use here.
Plug 'joshdick/onedark.vim'
Plug 'iCyMind/NeoSolarized'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lervag/vimtex'
Plug 'puremourning/vimspector'

call plug#end()
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
au BufWinEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/
au BufWinLeave * call clearmatches()

"SumatraPDF: cmd /c start /min "" nvim --headless -c "VimtexInverseSearch %l '%f'"
let g:vimtex_view_general_viewer = 'D://Nvim_PDF//SumatraPDF-3.4.6-64.exe'
 let g:vimtex_view_general_options
      \ = '-reuse-instance -forward-search @tex @line @pdf'
"    let g:tex_flavor='latex'
"    let g:vimtex_quickfix_mode=0
"let g:vimtex_view_general_options
"     \ = '-reuse-instance -forward-search @tex @line @pdf'
"                \ . ' -inverse-search "' . exepath(v:progpath)
"                \ . ' --servername ' . v:servername
"                \ . ' --remote-send \"^<C-\^>^<C-n^>'
"                \ . ':execute ''drop '' . fnameescape(''\%f'')^<CR^>'
"                \ . ':\%l^<CR^>:normal\! zzzv^<CR^>'
"                \ . ':call remote_foreground('''.v:servername.''')^<CR^>^<CR^>\""'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'