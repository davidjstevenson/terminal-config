set number
colorscheme solarized
set background=dark

vmap <leader>j :!python3 -m json.tool --sort-keys<CR>%
nmap <leader>j V,j%

map j gj
map k gk
