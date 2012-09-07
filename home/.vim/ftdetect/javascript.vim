au FileType javascript set dictionary+=$HOME/.vim/bundle/vim-node/dict/node.dict
au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
au FileType javascript noremap <buffer> <c-f> :call JsBeautify()<cr>
