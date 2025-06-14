" Unmap keys
unmap <Space>
nunmap s
vunmap s

" Quickly remove search highlights
nmap <esc> :nohl

" Yank to system clipboard
set clipboard=unnamed

" Go back and forward with Ctrl+O and Ctrl+I
" (make sure to remove default Obsidian shortcuts for these to work)
exmap back obcommand app:go-back
nmap <C-o> :back<CR>
exmap forward obcommand app:go-forward
nmap <C-i> :forward<CR>

" focus tabs
exmap focusLeft obcommand editor:focus-left
nmap <C-h> :focusLeft<CR>
exmap focusRight obcommand editor:focus-right
nmap <C-l> :focusRight<CR>
exmap focusBottom obcommand editor:focus-bottom
nmap <C-j> :focusBottom<CR>
exmap focusTop obcommand editor:focus-top
nmap <C-k> :focusTop<CR>

" Surround
" NOTE: must use 'map' and not 'nmap'
exmap surround_wiki surround [[ ]]
map [[ :surround_wiki<CR>
exmap surround_double_quotes surround " "
map s" :surround_double_quotes<CR>
exmap surround_single_quotes surround ' '
map s' :surround_single_quotes<CR>
exmap surround_brackets surround ( )
map s( :surround_brackets<CR>
map s) :surround_brackets<CR>
exmap surround_square_brackets surround [ ]
map s[ :surround_square_brackets<CR>
exmap surround_curly_brackets surround { }
map s} :surround_curly_brackets<CR>
map s{ :surround_curly_brackets<CR>

" Move single line using alt-[j/k]
exmap move_selection_down obcommand editor:swap-line-down
map <A-j> :move_selection_down<CR>
exmap move_selection_up obcommand editor:swap-line-up
map <A-k> :move_selection_up<CR>

" window controls
exmap q obcommand workspace:close
exmap wq obcommand workspace:close

" Open file
exmap open_file obcommand switcher:open
map <Space>sf :open_file<CR>

" Go Into Link
exmap goto_link obcommand editor:follow-link
nmap gd :goto_link

" Split views
" Split Window
exmap split obcommand workspace:split-vertical
nmap sv :split
exmap vsplit obcommand workspace:split-horizontal
nmap ss :vsplit
