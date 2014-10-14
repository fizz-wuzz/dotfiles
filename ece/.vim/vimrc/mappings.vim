let mapleader = ","

"Unmap arrow keys
nno <down> ddp
nno <left> <Nop>
nno <right> <Nop>
nno <up> ddkP
ino <down> <Nop>
ino <left> <Nop>
ino<right> <Nop>
ino <up> <Nop>

"Open pears
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {}<ESC>i

"Auto-center
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

"Enter normal mode
imap jk <ESC>
imap JK <ESC>

"Add lines
nmap vv o<ESC>k
nmap tt O<ESC>j 

"Navigate between windows
nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l

"tabs
nmap <leader>tn :tabnew<cr>

"move between long lines
nmap j gj
nmap k gk
