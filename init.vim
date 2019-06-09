if &compatible
  set nocompatible               " Be iMproved
  set number
endif

" Required:
set runtimepath+=/home/gunzi/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/gunzi/.vim/dein')
  call dein#begin('/home/gunzi/.vim/dein')

 let s:toml_dir  = $HOME . '/.config/nvim' 
 let s:toml      = s:toml_dir . '/dein.toml'
 let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'
 
 call dein#load_toml(s:toml,      {'lazy': 0})
 call dein#load_toml(s:lazy_toml, {'lazy': 1})
 call dein#end()
 call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif
