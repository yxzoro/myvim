
*install*

    echo "======== start install myvim ========"
    git clone https://github.com/yxzoro/myvim.git  ~/.myvim
    mv ~/.vim   ~/.vim.BK
    mv ~/.vimrc   ~/.vimrc.BK
    ln -s  ~/.myvim/.vim   ~/.vim
    ln -s  ~/.myvim/.vimrc   ~/.vimrc
    echo "============== end =================="

