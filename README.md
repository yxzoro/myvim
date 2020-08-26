
*install*

    echo "======== start install myvim ========" ;\
    git clone https://github.com/yxzoro/myvim.git  ~/.myvim ;\
    mv ~/.vim   ~/.vim.BK ;\
    mv ~/.vimrc   ~/.vimrc.BK ;\
    ln -s  ~/.myvim/.vim   ~/.vim ;\
    ln -s  ~/.myvim/.vimrc   ~/.vimrc ;\
    echo "============== end ==================" ;

*if you need YouCompleteMe to autocomplete for python/go.*

    #YouCompleteMe will add python/go autocomplete:    
    git clone https://github.com/Valloric/YouCompleteMe.git
    cd ./YouCompleteMe
    git submodule update --init --recursive

    #build reference: https://github.com/Valloric/YouCompleteMe#ubuntu-linux-x64
    #need install python2,cmake first
    python  install.py  --go-completer

