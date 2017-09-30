" ~/.vimrc

" commom
syntax on
colorscheme desert

set ts=4
set t_Co=256
set shiftwidth=4
set autoindent

cmap Q q
cmap W w
cmap WQ wq
cmap Wq wq

imap <f8> ()<esc>i
imap <f9> []<esc>i
imap <f10> {}<esc>i
imap <f11> ''<esc>i
imap <f12> ""<esc>i

nmap <c-h> ^
nmap <c-l> $
nmap <c-k> {
nmap <c-j> }
nmap <space> :


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
noremap <C-t> :tabnew
noremap <C-Right> :tabnext<CR>
noremap <C-Left> :tabprevious<CR>


"
" language abbreviation
" 
ab hjj <>
ab fjj function () {<CR>}<ESC>kwhh


"
" comment/uncomment
"
noremap <silent> ccj :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ucj :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
autocmd FileType c,cpp,java,php,js,css 	let b:comment_leader = '// '
autocmd FileType sh,ruby,python 		let b:comment_leader = '# '
autocmd FileType vi,vim 				let b:comment_leader = '" '


"
" search, replace
"
vnoremap ,s y/<C-R>"<CR>
vnoremap ,r y:%s/<C-R>"//g<left><left>

vnoremap y "ay
vnoremap p "ap






