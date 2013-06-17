Installation
============

First check out the latest version of the .vim files from github.

.. code-block:: bash

       git clone git@github.com:idahogray/dotvim.git ~/.vim

Next, install the symlinks so vim will look at these files.

.. code-block:: bash

        ln -s ~/.vim/vimrc ~/.vim
        ln -s ~/.vim/gvimrc ~/.vim

Finally, install all of the plugins for pathogen to find.

.. code-block:: bash

        cd ~/.vim
        git submodule init
        git submodule update
        git submodule foreach git submodule init
        git submodule foreach git submodule update

Install New Plugins
===================
        
I am using pathogen with git submodules to manage my vim plugins.
Add a new git submodule to install a new plugin.

.. code-block:: bash

        cd ~/.vim
        git submodule add <git repository location> bundle/<plugin name>
        git add .
        git commit -m "Installed <plugin name>"
        git push


        
Plugins
=======

* pathogen_ is used to manage plugins
* python-mode_ is a group of plugins useful for writing python code
* riv.vim_ is for editing restructuredtext documents


.. _pathogen: https://github.com/tpope/vim-pathogen

.. _python-mode: https://github.com/klen/python-mode

.. _riv.vim: https://github.com/Rykka/riv.vim
