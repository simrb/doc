" ~/.vimrc

" commom
syntax on
filetype on
colorscheme murphy

set ts=4
set t_Co=256
set shiftwidth=4
set autoindent

cmap Q q
cmap W w
cmap WQ wq
cmap Wq wq
cmap qq q!

inoremap <f3> ''<esc>i
inoremap <f4> ""<esc>i
inoremap <f8> <><esc>i
inoremap <f9> ()<esc>i
inoremap <f10> []<esc>i
inoremap <f11> {}<esc>i
inoremap jj <esc>

noremap <c-h> ^
noremap <c-l> $
noremap <c-k> {
noremap <c-j> }
noremap <space> :


" 
" Taglist plugin
"
nmap <F4> :TlistToggle<cr>
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_WinWidth=25


" 
" NERD_tree plugin
"
nmap <F5> :NERDTreeToggle<cr>
let g:NERDTreeWinSize=25


"
" tab tool
"
cmap tn tabnew
"noremap <C-t> :tabnew
noremap <C-Right> :tabnext<CR>
noremap <C-Left> :tabprevious<CR>


"
" comment/uncomment
"
noremap <silent> cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
autocmd FileType c,cpp,java,php,js,css 	let b:comment_leader = '// '
autocmd FileType sh,ruby,python 		let b:comment_leader = '# '
autocmd FileType vi,vim 				let b:comment_leader = '" '
autocmd FileType sql 					let b:comment_leader = '-- '


"
" search, replace
"
vnoremap ,s y/<C-R>"<CR>
vnoremap ,r y:%s/<C-R>"//g<left><left>

vnoremap y "ay
vnoremap p "ap


"
" language strutcure abbreviation
" 
ab funj function () {<CR>}<ESC>kwhh
ab ifj if () {<CR>}<ESC>kwh
ab ifl if () {<CR>} else {<cr>}<ESC>kkwh


