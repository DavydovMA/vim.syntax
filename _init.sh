#!/bin/sh


DIR_PWD=`readlink -f ${0}`
DIR_PWD=`dirname ${DIR_PWD}`

vim_share="/usr/share/vim/vim81"
vim_syntax_all="DavydovMA_vim_syntax_all.add"
vim_syntax_asmx86="DavydovMA_vim_syntax_asmx86.add"

# /etc/vim/vimrc
cp -v -f /etc/vim/vimrc /etc/vim/vimrc.orig
echo ""                             >> /etc/vim/vimrc
echo "runtime colors/DavydovMA.vim" >> /etc/vim/vimrc

# vim81/colors/DavydovMA.vim
cp -v -f ${DIR_PWD}/DavydovMA.vim ${vim_share}/colors/DavydovMA.vim

# vim81/defaults.vim
cp -v -f ${vim_share}/orig.defaults.vim ${vim_share}/defaults.vim.orig
cat ${DIR_PWD}/${vim_syntax_all} >> ${vim_share}/defaults.vim

# syntax/*vim -> *.vim.orig
for LINE_filename in `ls ${vim_share}/syntax` ; do
  cp -v -f ${vim_share}/syntax/${LINE_filename} ${vim_share}/syntax/${LINE_filename}.orig
done

# syntax/asm.vim add syntax_asmx86
cat ${DIR_PWD}/${vim_syntax_asmx86} >> ${vim_share}/syntax/asm.vim
# syntax/nasm.vim add syntax_asmx86
cat ${DIR_PWD}/${vim_syntax_asmx86} >> ${vim_share}/syntax/nasm.vim

# syntax/*.vim add syntax_all
for LINE_filename in `ls ${vim_share}/syntax` ; do
  cat ${DIR_PWD}/${vim_syntax_all} >> ${vim_share}/syntax/${LINE_filename}
done
