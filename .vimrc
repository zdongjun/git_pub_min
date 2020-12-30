set nocompatible
let mapleader = ";" 
color gruvbox
if  has("win32") 
color gruvbox
    set guifont=DejaVu_Sans_Mono:h14
    set guifontwide=楷体:h16
else
    color desert
    set guifont=DejaVu\ Sans\ Mono\ 14
endif
map <leader>sw :set wrap<cr>
map <leader>sn :set nowrap<cr>

noremap gj j
noremap gk k
noremap j gj
noremap k gk
noremap Q q
autocmd! bufwritepost $MYVIMRC source % 
map <leader>vi :tabedit ~/.vimrc<cr>
 au BufReadPost *
             \ if line("'\"") > 1 && line("'\"") <= line("$") |
             \ exe "normal! g'\"" |
             \ endif

set synmaxcol=1000
set noswapfile
set textwidth=0
winpos 0 0
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1   
set fileformats=unix,dos,mac
set fenc=utf-8
set termencoding=utf-8
set encoding=utf-8   
if has("win32")
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
endif
source $VIMRUNTIME/macros/matchit.vim
if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
    set ambiwidth=double "让vim能够默认以双字节处理那些特殊字符
endif   
set magic    
set nobomb
set autochdir 
set history=1000
set undolevels=1000
let g:gruvbox_italic=0
syntax on	    
set cursorline                  
set cursorcolumn                
set number    
set relativenumber
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber
set smartindent
set autoindent
filetype on 
filetype plugin on
filetype indent on


set tabstop=4 
set softtabstop=4
set shiftwidth=4
set expandtab 




autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4

set list
set listchars=tab:>>,trail:.
set so=3 
set backspace=indent,eol,start
set display=lastline 
set vb t_vb=
set wildmenu
set wildmode=longest,list,full
set mat=2
set virtualedit=all
set formatoptions=nMBj 
set selectmode=mouse,key
set selection=exclusive
set mouse=a 
set autoread 
set hlsearch
set incsearch
set ignorecase smartcase
set showmatch
set visualbell
set showmode
set showcmd 
set ruler 
set laststatus=2 
set tgc  
au bufwritepost  * hi statusline guibg=lightgreen
au InsertLeave   * hi statusline guibg=orange
au InsertEnter   * hi statusline guibg=red
au  TextChanged  * hi statusline guibg=red
au  TextChangedI * hi statusline guibg=red
au  TextChangedP * hi statusline guibg=red
hi statusline guibg=gray
let s_Blank ="%="
let s_Time ="%{strftime('%y-%m-%d',getftime(expand('%')))}"
let s_Keymap ="%k"
let s_BreakPoint ="%<" 
let s_Ascii ="\[%b,0x%B\]"
let s_Encoding ="[%{(&fenc\ ==\ ''?&enc:&fenc).(&bomb?',BOM':'')}]"
let s_FileFormat ="[%{(&ff\ ==\ 'unix')?'unix':'dos'}]"
let s_FileType ="%{((&ft\ ==\ 'help'\ \|\|\ &ft\ ==\ '')?'':'['.&ft.']')}"
let s_Ruler ="%-12.(%lL,%c%VC%)\ %P"
let s_Ruler2 ="\[%lL,%c%VC,%P\]"
let s_Cwd ="%-.50{getcwd()}"
let s_String=s_Ascii.s_Encoding.s_FileFormat.s_FileType.s_Ruler2
set statusline=%!s_String

map <leader>ct o#include<stdio.h><cr>int main()<cr>{<cr>}<c-c>O

map <leader>gacp :!git acp<cr><cr> 

map <leader>te :Texplore<cr>

map <leader>db  :g/^$/d
map <leader>vs       :vsplit 
nmap <leader>== =it
map <leader>[- i[-_-]<c-c>
map <leader>[6 i[^_^]<c-c>
map <leader>[8 i[*_*]<c-c>
map <leader>[4 i[$_$]<c-c>
map <leader>99 a("");<c-c>hhi
map <leader>00 a);<CR><c-c>
map  <leader>{ o#{<c-c>
map  <leader>} o#}<c-c>
map <leader>---      <c-c>o________________________________________<c-c>
map <leader>--       <c-c>o____________________<c-c>
map <leader>-        <c-c>o__________<c-c>
imap <leader>ti <C-R>=strftime("20%y-%m-%d %H:%M:%S")<CR>
noremap <leader>zf zfat
map <leader>zz $l?{<CR>zf%
au BufRead * set fmr=<z>,</z>
au BufRead *.vim set fmr={{{,}}}
au BufRead * set fdm=marker
au BufRead * call timer_start(1000, { tid -> execute('set fdm=manual')})
nnoremap <silent> <leader>sy
            \ : if exists("syntax_on") <BAR>
            \	 syntax off <BAR>
            \ else <BAR>  
            \	 syntax enable <BAR>
            \ endif<CR>h 
map <leader>; :
map <leader>q :quit<CR>
map <leader>w :w<CR>:set fdm=manual<cr><c-c>
map <leader>ta :tabedit 
map  <leader>no :nohlsearch<CR>
map <leader>gv ggVG
imap <leader>gv <c-c>ggVG
map <leader>jj <C-W>j
map <leader>kk <C-W>k
map <leader>hh <C-W>h
map <leader>ll <C-W>l
map <leader>bn :bnext<CR>
map <leader>bp :bprevious<CR>
map <leader>tn :tabnext<CR>
map <leader>tp :tabprev<CR>
vnoremap <tab> >gv
vnoremap <s-tab> <gv
map <leader><UP> <C-W>+
map <leader><DOWN> <C-W>-
map <leader><Left> <C-W><
map <leader><Right> <C-W>>
map <leader>yy "+yy
vmap <leader>yy "+y
map <leader>pp o<c-c>"+p==
vmap <leader>pp d"+p==
imap <leader>pp <c-c>"+p
map <leader>dp "0p
func! Double_single()
     if (&filetype == 'vim')
     else
         normal mz
        silent! :s/\%V～/~/g
        silent! :s/\%V｀/`/g
        silent! :s/\%V！/!/g
        silent! :s/\%V＠/@/g
        silent! :s/\%V＃/#/g
        silent! :s/\%V￥/\$/g
        silent! :s/\%V％/%/g
        silent! :s/\%V＾/^/g
        silent! :s/\%V＆/&/g
        silent! :s/\%V＊/*/g
        silent! :s/\%V（/(/g 
        silent! :s/\%V）/)/g
        silent! :s/\%V－/-/g
        silent! :s/\%V＿/_/g
        silent! :s/\%V＋/+/g
        silent! :s/\%V＝/=/g
        silent! :s/\%V｛/{/g
        silent! :s/\%V｝/}/g
        silent! :s/\%V［/[/g
        silent! :s/\%V］/]/g
        silent! :s/\%V：/:/g
        silent! :s/\%V；/;/g
        silent! :s/\%V＂/"/g	 
        silent! :s/\%V＇/'/g	 
        silent! :s/\%V｜/|/g
        silent! :s/\%V＼/\/g
        silent! :s/\%V＜/</g
        silent! :s/\%V，/,/g
        silent! :s/\%V＞/>/g
        silent! :s/\%V．/\./g
        silent! :s/\%V？/?/g
        silent! :s/\%V／/\//g
        silent! :s/\%V　/ /g
        silent! :s/\%V０/0/g
        silent! :s/\%V１/1/g
        silent! :s/\%V２/2/g
        silent! :s/\%V３/3/g
        silent! :s/\%V４/4/g
        silent! :s/\%V５/5/g
        silent! :s/\%V６/6/g
        silent! :s/\%V７/7/g
        silent! :s/\%V８/8/g
        silent! :s/\%V９/9/g
        silent! :s/\%Vａ/a/g
        silent! :s/\%Vｂ/b/g
        silent! :s/\%Vｃ/c/g
        silent! :s/\%Vｄ/d/g
        silent! :s/\%Vｅ/e/g
        silent! :s/\%Vｆ/f/g
        silent! :s/\%Vｇ/g/g
        silent! :s/\%Vｈ/h/g
        silent! :s/\%Vｉ/i/g
        silent! :s/\%Vｊ/j/g
        silent! :s/\%Vｋ/k/g
        silent! :s/\%Vｌ/l/g
        silent! :s/\%Vｍ/m/g
        silent! :s/\%Vｎ/n/g
        silent! :s/\%Vｏ/o/g
        silent! :s/\%Vｐ/p/g
        silent! :s/\%Vｑ/q/g
        silent! :s/\%Vｒ/r/g
        silent! :s/\%Vｓ/s/g
        silent! :s/\%Vｔ/t/g
        silent! :s/\%Vｕ/u/g
        silent! :s/\%Vｖ/v/g
        silent! :s/\%Vｗ/w/g
        silent! :s/\%Vｘ/x/g
        silent! :s/\%Vｙ/y/g
        silent! :s/\%Vｚ/z/g
        silent! :s/\%VＡ/A/g
        silent! :s/\%VＢ/B/g
        silent! :s/\%VＣ/C/g
        silent! :s/\%VＤ/D/g
        silent! :s/\%VＥ/E/g
        silent! :s/\%VＦ/F/g
        silent! :s/\%VＧ/G/g
        silent! :s/\%VＨ/H/g
        silent! :s/\%VＩ/I/g
        silent! :s/\%VＪ/J/g
        silent! :s/\%VＫ/K/g
        silent! :s/\%VＬ/L/g
        silent! :s/\%VＭ/M/g
        silent! :s/\%VＮ/N/g
        silent! :s/\%VＯ/O/g
        silent! :s/\%VＰ/P/g
        silent! :s/\%VＱ/Q/g
        silent! :s/\%VＲ/R/g
        silent! :s/\%VＳ/S/g
        silent! :s/\%VＴ/T/g
        silent! :s/\%VＵ/U/g
        silent! :s/\%VＶ/V/g
        silent! :s/\%VＷ/W/g
        silent! :s/\%VＸ/X/g
        silent! :s/\%VＹ/Y/g
        silent! :s/\%VＺ/Z/g
        silent! :s/\%V。/./g
        silent! :s/\%V—/_/g
        silent! :s/\%V【/[/g
        silent! :s/\%V】/]/g
        silent! :s/\%V“/"/g  
        silent! :s/\%V‘/'/g  
        silent! :s/\%V’/'/g  
        silent! :s/\%V“/"/g  
        silent! :s/\%V”/"/g
        silent! :s/\%V、/\\/g 
        silent! :s/\%V《/</g
        silent! :s/\%V》/>/g    
         normal 'z
     endif
endfunc
map  <F3> <esc>0v$:call Double_single()<CR>
vmap  <F3> <esc>:call Double_single()<CR>

map <leader>bk :call writefile(readfile(expand("%:p"),'b'), expand('%:r').'_bak'.strftime("_%Y_%m_%d_%H-%M-%S.").expand('%:e'), 'b')<cr><c-c>
map <f2> :call writefile(readfile(expand("%:p"),'b'), expand('%:r').strftime("_%Y_%m_%d_%H-%M-%S.").expand('%:e'), 'b')<cr><c-c>
func! Addnums()    
    :g/^/ s//\=line('.').' '/
endfunc
func! DeleAllDupLine()
    if (&filetype != 'vim')
        :sort
        :%s/^\(.\+\)$\n\1//
    endif
endfunc
map <leader>tb :Tabularize /
map <leader>zt :Tabularize /\^\^.<cr>
let g:interestingWordsGUIColors = ['#8CCBEA', '#A4E57E', '#FFDB72', '#FF7272', '#FFB3FF', '#9999FF']
let g:interestingWordsTermColors = ['154', '121', '211', '137', '214', '222']
map <leader>as :AsyncRun %<cr>

let g:vim_markdown_conceal = 0
let g:tex_conceal = ""
let g:vim_markdown_math = 1
let g:vim_markdown_conceal_code_blocks = 0





func! CompileRun()
    if  has("win32") 
        if &filetype == 'c' 
            exec '!gcc % -o %<'
            exec '!%<'
        elseif &filetype == 'cpp'
            exec '!g++ % -o %<'
            exec '!%<'
        elseif &filetype == 'python'
            exec '!python %'
        elseif &filetype == 'html'
            exec 'AsyncRun %'
        endif
    else
        if &filetype == 'c' 
            exec '!g++ % -o %<'
            exec '!time ./%<'
        elseif &filetype == 'cpp'
            exec '!g++ % -o %<'
            exec '!time ./%<'
        elseif &filetype == 'python'
            exec '!time python %'
        endif
    endif
endfunc 
map <leader>co :call CompileRun()<cr>
nmap <leader>zj :tabedit src/zsnote.js<cr>
nmap <leader>log /^ *console.log<CR>
nmap <leader>vt     vitk$oj0

nmap <leader>je otry{<cr>}catch(error){console.log("error",error);}<c-c>14b

noremap <leader>z      o<z><cr></z><c-c>2k
noremap <leader>d      o<d><cr></d><c-c>2k
noremap <leader>c      o<c><cr></c><c-c>2k
noremap <leader>e      o<e><cr></e><c-c>2k
noremap <leader>r      o<r><cr></r><c-c>2k
noremap <leader>l      o<l><cr></l><c-c>2k
noremap <leader>t      o<t><cr></t><c-c>2k
noremap <leader>m      o<m><cr></m><c-c>2k

noremap <leader>z0     o<z0><cr></z0><c-c>2k
noremap <leader>d0     o<d0><cr></d0><c-c>2k
noremap <leader>c0     o<c0><cr></c0><c-c>2k
noremap <leader>e0     o<e0><cr></e0><c-c>2k
noremap <leader>r0     o<r0><cr></r0><c-c>2k
noremap <leader>l0     o<l0><cr></l0><c-c>2k
noremap <leader>t0     o<t0><cr></t0><c-c>2k
noremap <leader>m0     o<m0><cr></m0><c-c>2k

vmap <leader>z xk;z<cr>p
vmap <leader>d xk;d<cr>p
vmap <leader>c xk;c<cr>p
vmap <leader>e xk;e<cr>p
vmap <leader>r xk;r<cr>p
vmap <leader>l xk;l<cr>p
vmap <leader>t xk;t<cr>p
vmap <leader>m xk;m<cr>p

vmap <leader>z0 xk;z0<cr>p
vmap <leader>d0 xk;d0<cr>p
vmap <leader>c0 xk;c0<cr>p
vmap <leader>e0 xk;e0<cr>p
vmap <leader>r0 xk;r0<cr>p
vmap <leader>l0 xk;l0<cr>p
vmap <leader>t0 xk;t0<cr>p
vmap <leader>m0 xk;m0<cr>p

noremap <leader>zc      o<zc><cr></zc><c-c>
noremap <leader>dc      o<zc><cr></zc><c-c>

map <leader>z1 ^i<z1><c-c>A</z1><c-c>
vmap <leader>z1 xi<z1><c-c>pa</z1><c-c>
map <leader>d1 ^i<d1><c-c>A</d1><c-c>
vmap <leader>d1 xi<d1><c-c>pa</d1><c-c>
map <leader>c1 ^i<c1><c-c>A</c1><c-c>
vmap <leader>c1 xi<c1><c-c>pa</c1><c-c>
map <leader>e1 ^i<e1><c-c>A</e1><c-c>
vmap <leader>e1 xi<e1><c-c>pa</e1><c-c>
map <leader>r1 ^i<r1><c-c>A</r1><c-c>
vmap <leader>r1 xi<r1><c-c>pa</r1><c-c>
map <leader>l1 ^i<l1><c-c>A</l1><c-c>
vmap <leader>l1 xi<l1><c-c>pa</l1><c-c>
map <leader>m1 ^i<m1><c-c>A</m1><c-c>
vmap <leader>m1 xi<m1><c-c>pa</m1><c-c>

map <leader>z2 ^i<z2><c-c>A</z2><c-c>
vmap <leader>z2 xi<z2><c-c>pa</z2><c-c>
map <leader>d2 ^i<d2><c-c>A</d2><c-c>
vmap <leader>d2 xi<d2><c-c>pa</d2><c-c>
map <leader>c2 ^i<c2><c-c>A</c2><c-c>
vmap <leader>c2 xi<c2><c-c>pa</c2><c-c>
map <leader>e2 ^i<e2><c-c>A</e2><c-c>
vmap <leader>e2 xi<e2><c-c>pa</e2><c-c>
map <leader>r2 ^i<r2><c-c>A</r2><c-c>
vmap <leader>r2 xi<r2><c-c>pa</r2><c-c>
map <leader>l2 ^i<l2><c-c>A</l2><c-c>
vmap <leader>l2 xi<l2><c-c>pa</l2><c-c>
map <leader>m2 ^i<m2><c-c>A</m2><c-c>
vmap <leader>m2 xi<m2><c-c>pa</m2><c-c>

map <leader>z1x :s/<z1>//<cr><c-c>:s/<\/z1> \?$//g<cr><c-c>
map <leader>d1x :s/<d1>//<cr><c-c>:s/<\/d1> \?$//g<cr><c-c>
map <leader>c1x :s/<c1>//<cr><c-c>:s/<\/c1> \?$//g<cr><c-c>
map <leader>e1x :s/<e1>//<cr><c-c>:s/<\/e1> \?$//g<cr><c-c>
map <leader>r1x :s/<r1>//<cr><c-c>:s/<\/r1> \?$//g<cr><c-c>
map <leader>l1x :s/<l1>//<cr><c-c>:s/<\/l1> \?$//g<cr><c-c>
map <leader>m1x :s/<m1>//<cr><c-c>:s/<\/m1> \?$//g<cr><c-c>

map <leader>z2x :s/<z2>//<cr><c-c>:s/<\/z2> \?$//g<cr><c-c>
map <leader>d2x :s/<d2>//<cr><c-c>:s/<\/d2> \?$//g<cr><c-c>
map <leader>c2x :s/<c2>//<cr><c-c>:s/<\/c2> \?$//g<cr><c-c>
map <leader>e2x :s/<e2>//<cr><c-c>:s/<\/e2> \?$//g<cr><c-c>
map <leader>r2x :s/<r2>//<cr><c-c>:s/<\/r2> \?$//g<cr><c-c>
map <leader>l2x :s/<l2>//<cr><c-c>:s/<\/l2> \?$//g<cr><c-c>
map <leader>m2x :s/<m2>//<cr><c-c>:s/<\/m2> \?$//g<cr><c-c>

map <leader>mg o<m>../gw_zsnote_m0/.jpg</m><c-c>

map <leader>h  I<h><c-c>A</h><c-c>
map <leader>hx :s/<h>//<cr><c-c>:s/<\/h> \?$//g<cr><c-c>

noremap <leader>di      o<div><cr></div><c-c>
noremap <leader>sc      o<script><cr></script><c-c>
noremap <leader>st      o<style><cr></style><c-c>
noremap <leader>li      o<link href='' rel='stylesheet'></link><c-c>

map <leader>img o<img src="../gw_zsnote_m0/.jpg"></img><c-c>
map <leader>aud o<audio controls><source src="../gw_zsnote_m0/.mp3"></audio><c-c>
map <leader>vid o<video controls style="max-width:100%"><source src="../gw_zsnote_m0/.mp4"></video><c-c>

noremap <leader>b <c-c>^i<b><c-c>A</b><c-c>
vmap <leader>b xi<b><c-c>pa</b><c-c>
map <leader>bw ebi<b><c-c>lea</b><c-c>
map <leader>bx :s/<b>//<cr><c-c>:s/<\/b> \?$//g<cr><c-c>

map <leader>ti  I<title><c-c>A</title><c-c>
map <leader>h0  I<h0><c-c>A</h0><c-c>
map <leader>h1  I<h1><c-c>A</h1><c-c>
map <leader>h2  I<h0><c-c>A</h2><c-c>
map <leader>h3  I<h3><c-c>A</h3><c-c>

map <leader>tix :s/<titile>//<cr><c-c>:s/<\/titile> \?$//g<cr><c-c>
map <leader>h0x :s/<h0>//<cr><c-c>:s/<\/h0> \?$//g<cr><c-c>
map <leader>h1x :s/<h1>//<cr><c-c>:s/<\/h1> \?$//g<cr><c-c>
map <leader>h2x :s/<h2>//<cr><c-c>:s/<\/h2> \?$//g<cr><c-c>
map <leader>h3x :s/<h3>//<cr><c-c>:s/<\/h3> \?$//g<cr><c-c>

map <leader>< <c-c>^i<<c-c>A><c-c>
vmap <leader>< xi<<c-c>pa><c-c>
map <leader><w <c-c>ebi<<c-c>lea><c-c>

noremap <leader>" <c-c>^i"<c-c>A"<c-c>
vmap <leader>" xi"<c-c>pa"<c-c>
map <leader>"w <c-c>ebi"<c-c>lea"<c-c>

noremap <leader>' <c-c>^i'<c-c>A'<c-c>
vmap <leader>' xi'<c-c>pa'<c-c>
map <leader>'w <c-c>ebi'<c-c>lea'<c-c>

nmap <leader>go mz:g/<goto>/d<cr>'zo<goto></goto><c-c>;no

map <leader>beg o\begin{aligned}<CR>\end{aligned}<c-c>

map <leader>me :set ft=html<cr>ggO<!DOCTYPE HTML><cr><meta charset="utf-8"><cr><style>html{ white-space: pre; }</style><cr><script src='src/zsnote0.js'></script><cr><c-c>

map <leader>lo oconsole.log("",);<c-c>hi
map <leader>o o<esc>:s/.*//<cr>;no    

map <leader>vl ;vt<c-v>^o^<s-i>\|<c-c>;vt;hz



fun! F_html_t()
    silent! :s/\%V</\&lt;/g
    silent! :s/\%V>/\&gt;/g
endfunc
fun! F_t_html()
    silent! :s/\%V&lt\;/</g
    silent! :s/\%V&gt\;/>/g
endfunc 
fun! F_html_dd()
    silent! :s/[<>]/\={'<':'‹','>':'›'}[submatch(0)]/g 
endfunc
fun! F_html_dd_v()
    silent! :s/\%V[<>]/\={'<':'‹','>':'›'}[submatch(0)]/g 
endfunc
fun! F_dd_html()
    silent! :s/[‹›]/\={'‹':'<','›':'>'}[submatch(0)]/g 
endfunc     
fun! F_dd_html_v()
    silent! :s/\%V[‹›]/\={'‹':'<','›':'>'}[submatch(0)]/g 
endfunc     
fun! F_html_ddd()
    silent! :s/[<>]/\={'<':'〈','>':'〉'}[submatch(0)]/g 
endfunc
fun! F_html_ddd_v()
    silent! :s/\%V[<>]/\={'<':'〈','>':'〉'}[submatch(0)]/g 
endfunc
fun! F_ddd_html()
    silent! :s/[〈〉]/\={'〈':'<','〉':'>'}[submatch(0)]/g 
endfunc     
fun! F_ddd_html_v()
    silent! :s/\%V[〈〉]/\={'〈':'<','〉':'>'}[submatch(0)]/g 
endfunc     
map <leader>ht :call F_html_t()<CR>
map <leader>th :call F_t_html()<CR>
map <leader>hd :call F_html_dd()<CR>
vmap <leader>hd :call F_html_dd_v()<CR>
map <leader>dh :call F_dd_html()<CR>
vmap <leader>dh :call F_dd_html_v()<CR>
map <leader>hz :call F_html_ddd()<CR>
vmap <leader>hz :call F_html_ddd_v()<CR>
map <leader>zh :call F_ddd_html()<CR>
vmap <leader>zh :call F_ddd_html_v()<CR>


fun! F_comment()
    if &filetype == 'c' 
      silent! :s/\(^ *\)tempcct/\1\/\// 
    elseif &filetype == 'cpp'
      silent! :s/\(^ *\)tempcct/\1\/\// 
    elseif &filetype == 'python'
      silent! :s/\(^ *\)tempcct/\1#/ 
   elseif &filetype == 'vim'
     silent! :s/\(^ *\)tempcct/\1"/ 
   elseif &filetype == 'javascript'
     silent! :s/\(^ *\)tempcct/\1\/\// 
   elseif &filetype == 'html'
    silent! :s/<!--//g
    silent! :s/--> *$//g
    silent! :s/\(^ *\)tempcct\(.*\)/\1<!--\2-->/
   elseif &filetype == 'css'
      silent! :s/\/\*//g
      silent! :s/\*\/ *$//g
      silent! :s/\(^ *\)tempcct\(.*\)/\1\/\*\2\*\//
    elseif &filetype == 'sh'
     silent! :s/\(^ *\)tempcct/\1#/ 
 else
     silent! :s/\(^ *\)tempcct/\1\/\// 
    endif
endfunc

fun! F_ucomment()
    if &filetype == 'c' 
      silent! :s/\/\/// 
    elseif &filetype == 'cpp'
      silent! :s/\/\///
    elseif &filetype == 'sh'
      silent! :s/#//
    elseif &filetype == 'python'
      silent! :s/#//
    elseif &filetype == 'vim'
      silent! :s/"// 
    elseif &filetype == 'javascript'
      silent! :s/\/\/// 
    elseif &filetype == 'html'
      silent! :s/<!--//g
      silent! :s/-->\([^-->]*\)$/\1/g
    elseif &filetype == 'css'
      silent! :s/\/\*//g
      silent! :s/\*\/\([^\*\/]*\)*$/\1/g
  else
      silent! :s/tempcct// 

    endif                                                                              
endfunc

map <leader>cu :call F_ucomment()<CR>

map <leader>cc ^itempcct<c-c>:call F_comment()<cr> 
vmap <leader>cc o^<c-v><c-v>gv<s-i>tempcct<c-c>gv:call F_comment()<cr>

fun! F_commentjs()
    silent! :s/\(^ *\)tempcct/\1\/\// 
endfunc
fun! F_ucommentjs()
    silent! :s/\/\/// 
endfunc

map <leader>cj ^itempcct<c-c>:call F_commentjs()<cr> 
vmap <leader>cj o^<c-v><c-v>gv<s-i>tempcct<c-c>gv:call F_commentjs()<cr>
map <leader>cju :call F_ucommentjs()<CR>

fun! F_dd_tb()
    silent! :s/|/<tr> <td>
    silent! :s/|/<\/td> <td>/g
    silent! :s/<td>\s*\n/<\/tr>\r
endfunc     
fun! F_tb_dd()
    silent! :s/<tr>\s*<td>/|
    silent! :s/<\/td>\s*<td>/|/g
    silent! :s/<\/td>\s*<\/tr>/|
endfunc     
map <leader>dtb :call F_dd_tb()<CR>
map <leader>tbd :call F_tb_dd()<CR>


func! F_tag()
    silent! :s/<div\(.*\)>/\<z\1\>/g
    silent! :s/<\/z\s*>/<\/z>/g
endfunc
func! F_tag2()
    silent! :s/<h3\(.*\)>/\<h3\1\>/g
    silent! :s/<\/h3\s*>/\<\/h3\>/g
endfunc
map <leader>rt :call F_tag()<CR>
map <leader>rt2 :call F_tag2()<CR>

fun! F_tab()
    if &filetype == 'python'
      silent! :s/\t/    /g
    else 
      silent! :s/\t/  /g
    endif
endfunc
map <leader>tab  :call F_tab()<cr>

 



