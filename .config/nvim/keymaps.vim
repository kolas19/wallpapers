" Initialize which_key_map
let g:which_key_map = {}

"#####################"
"# Window navigation #"
"#####################"

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

let g:which_key_map['h'] = 'window left'
let g:which_key_map['j'] = 'window down'
let g:which_key_map['k'] = 'window up'
let g:which_key_map['l'] = 'window left'

"###################"
"# Window Movement #"
"###################"

nnoremap <leader>wh <C-W>H
nnoremap <leader>wl <C-W>L
nnoremap <leader>wj <C-W>J
nnoremap <leader>wk <C-W>K
nnoremap <leader>wt <C-W>T

let g:which_key_map.w = {'name': '+window'}
let g:which_key_map['w']['h'] = 'move right'
let g:which_key_map['w']['l'] = 'move left'
let g:which_key_map['w']['j'] = 'move down'
let g:which_key_map['w']['k'] = 'move up'
let g:which_key_map['w']['t'] = 'move new tab'

"##################"
"# Tab navigation #"
"##################"

nnoremap <leader><Tab> :tabnew<CR>
nnoremap <Tab> :tabnext<CR>
nnoremap <S-Tab> :tabprevious<CR>

let g:which_key_map['<Tab>'] = {'name': 'new tab'}

"######################"
"# Which-Key mappings #"
"######################"

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :WhichKeyVisual '<Space>'<CR>

"#########################"
"# Undo/Redo keymappings #"
"#########################"

nnoremap <leader>uu :UndotreeShow<CR>
nnoremap <S-u> :redo<CR>

let g:which_key_map['u'] = {
            \ 'name': '+undo',
            \ 'u': 'show the Undotree',
            \}

"########################"
"# Floaterm keymappings #"
"########################"

nmap <leader>tt :FloatermToggle<CR>
nnoremap <leader>ta :FloatermNew<CR>
nnoremap <leader>td :FloatermKill<CR>
tnoremap <silent> <C-Esc> <C-\><C-n>

let g:which_key_map['t'] = {
            \ 'name': '+terminal',
            \ 't': 'toggle Floaterm',
            \ 'a': 'new Floaterm win',
            \ 'd': 'delete Floaterm win',
            \}

"#####################################"
"# Conquer of Completion keymappings #"
"#####################################"

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>cf  <Plug>(coc-format-selected)
nmap <leader>cf  <Plug>(coc-format-selected)

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>ca  <Plug>(coc-codeaction-selected)
nmap <leader>ca  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>cac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>cqf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Using CocList
" Show all diagnostics
nnoremap <silent> <leader>ca  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <leader>ce  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <leader>cc  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <leader>co  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <leader>cs  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <leader>cj  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <leader>ck  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <leader>cp  :<C-u>CocListResume<CR> 

"#################################"
"# File Explorer/Manager Keymaps #"
"#################################"

nnoremap <leader>fv :Vifm<CR>
nnoremap <leader>fs :VsplitVifm<CR>
nnoremap <leader>ft :CocCommand explorer<CR>
nnoremap <leader>fh :CocCommand explorer ~<CR>

let g:which_key_map['f'] = {
            \ 'name': '+file',
            \ 'v': 'open selected file <vifm',
            \ 's': 'open selected file <vfim in vs',
            \ 't': 'show file tree',
            \ 'h': 'show file tree @ home directory',
            \}

"##############"
"# fzf search #"
"##############"

nnoremap <leader>sf :Files<CR>
nnoremap <leader>sr :RG<CR>

let g:which_key_map['s'] = {'name': '+search'}
let g:which_key_map['s']['f'] = 'files'
let g:which_key_map['s']['r'] = '(rip)grep'

"####################"
"# Line indentation #"
"####################"

vnoremap <Tab> >)
vnoremap <S-Tab> <

"###########################"
"# Resize panes vertically #"
"###########################"

nnoremap <leader>wv+ :vertical resize +10<CR>
nnoremap <leader>wv- :vertical resize -10<CR>
nnoremap <leader>wvs :vertical split<CR>
nnoremap <leader>wh+ :resize +10<CR>
nnoremap <leader>wh- :resize -10<CR>
nnoremap <leader>whs :split<CR>

let g:which_key_map['w']['v'] = {
            \ 'name': '+virtical',
            \ '+': 'increase size',
            \ '-': 'decrease size',
            \ 's': 'create virtical split'
            \}
let g:which_key_map['w']['h'] = {
            \ 'name': '+horizontile',
            \ '+': 'increase size',
            \ '-': 'decrease size',
            \ 's': 'create horizontile split'
            \}

" Export which_key_map
call which_key#register('<Space>', "g:which_key_map")
