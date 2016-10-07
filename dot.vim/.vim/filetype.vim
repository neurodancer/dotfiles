if exists("did_load_filetypes")
    finish
endif
augroup filetypedetect
    au! bufread,bufnewfile ~/.mutt/*.rc setf muttrc
augroup END
