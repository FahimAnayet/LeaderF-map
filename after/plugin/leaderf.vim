" ============================================================================
" File:        leaderf.vim
" Description:
" Author:      Yggdroot <archofortune@gmail.com>
" Website:     https://github.com/Yggdroot
" Note:
" License:     Apache License, Version 2.0
" ============================================================================

" Definition of 'arguments' can be similar as
" https://github.com/Yggdroot/LeaderF/blob/master/autoload/leaderf/Any.vim#L85-L140
let s:extension = {
            \   "name": "map",
            \   "help": "navigate the map",
            \   "manager_id": "leaderf#Map#managerId",
            \   "arguments": [
            \   ]
            \ }
" In order that `Leaderf map` is available
call g:LfRegisterPythonExtension(s:extension.name, s:extension)

command! -bar -nargs=0 LeaderfMap Leaderf map

" In order to be listed by :LeaderfSelf
call g:LfRegisterSelf("LeaderfMap", "navigate the map")
