" ~/.vimrc


" base
set autoindent
set ts=4

" set mouse=a
" set clipboard=autoselect,autoselectml
" set guioptions+=a

colorscheme desert
set shiftwidth=4

cmap Q q
cmap W w
cmap WQ wq
cmap Wq wq
cmap tn tabnew

imap <F2> ''<ESC>i
imap <F3> ""<ESC>i
imap <F4> ():<ESC>i
imap <F7> ()<ESC>i
imap <F8> []<ESC>i
imap <F9> {}<ESC>i
imap <F10> #{}<ESC>i

map <C-h> ^
map <C-l> $
map <C-k> {
map <C-j> }
map <space> :
inoremap jj <ESC>
nnoremap <silent> <C-Right> :tabnext<CR>
nnoremap <silent> <C-Left> :tabprevious<CR>
nnoremap <silent> <C-t> :tabnew

" abbreviation
" ruby syntax
ab classj class<CR>end<ESC>kA
ab defj def<CR>end<ESC>kA
ab eachj each do \|<CR>end<ESC>kA<left>\|
ab getj get '/' do<CR>end<ESC>kwl
ab postj post '/' do<CR>end<ESC>kwl
ab moj module<CR>end<ESC>kA
ab hej helpers do<CR>end<ESC>ko

" python syntax
" ab classj class<CR>end<ESC>kA


" search, and replace
vnoremap ,s y/<C-R>"<CR>
vnoremap ,r y:%s/<C-R>"//g<left><left>

vnoremap y "ay
vnoremap p "ap

" save with root
cmap w!! w !sudo tee >/dev/null %

" NERD_tree
" git clone git@github.com:scrooloose/nerdtree
noremap <F5> :NERDTreeToggle<CR>
au BufWinLeave * mkview
au BufWinEnter * silent loadview

" Taglist
let Tlist_Show_One_File=1
let Tlist_WinWidth=30
let Tlist_Exit_OnlyWindow=1  
let Tlist_Use_Right_Window=1 
" noremap <F5> :TlistToggle<CR>



" comment/uncomment
autocmd FileType c,cpp,java,php,js,css let b:comment_leader = '// '
autocmd FileType sh,ruby,python	  let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '

noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>





" this is file ending




