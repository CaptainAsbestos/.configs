noremap ; l
noremap l gk
noremap k gj
noremap j h

call plug#begin()
        Plug 'preservim/nerdtree'
        Plug 'sirver/ultisnips'
            let g:UltiSnipsExpandTrigger = '<tab>'
            let g:UltiSnipsJumpForwardTrigger = '<tab>'
            let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
        Plug 'lervag/vimtex'
            let g:tex_flavor='latex'
            let g:vimtex_view_method='zathura'
            let g:vimtex_quickfix_mode=0
                let g:Tex_MultipleCompileFormats = 'pdf'
                let g:Tex_DefaultTargetFormat = 'pdf'
        Plug 'KeitaNakamura/tex-conceal.vim'
               set conceallevel=1
               let g:tex_conceal='abdmg'
        Plug 'godlygeek/tabular'
        Plug 'plasticboy/vim-markdown'
        Plug 'flazz/vim-colorschemes'
        Plug 'vim-pandoc/vim-pandoc'
        Plug 'vim-pandoc/vim-pandoc-syntax'
                :let g:pandoc#keyboard#display_motions = 0
        Plug 'jiangmiao/auto-pairs' 
call plug#end()

source /home/alex/.vim/plugged/vim-colorschemes/colors/solarized.vim
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
setlocal spell
set spelllang=en_gb
set  rtp+=/usr/share/powerline/bindings/vim/
set laststatus=2
set t_Co=256
set mouse=a
set clipboard=unnamedplus
set whichwrap=b,s,<,>,[,]
set linebreak
set wrap
set nolist
set number

