Installation
============

First check out the latest version of the .vim files from github (Linux).

.. code-block:: bash

   git clone git@github.com:idahogray/dotvim.git ~/.vim

or Windows.

.. code-block:: cmd

   git clone git@github.com:idahogray/dotvim.git %HOME%/vimfiles

Install the symlinks so vim will look at these files (Linux).

.. code-block:: bash

   ln -s ~/.vim/vimrc ~/.vimrc
   ln -s ~/.vim/gvimrc ~/.vimrc

Create an 'autoload' directory under the new .vim directory (Linux).

.. code-block:: bash

   mdkir .vim/autoload

Create an 'autoload' directory under the new vimrc directory (Windows).

.. code-block:: bash

   mdkir vimfiles\autoload

Finally, install the plugins by opening vim and running the
PlugInstall command.

.. code-block:: vim-command

   :PlugInstall

Install New Plugins
===================
        
I am using vim-plug to manage my vim plugins. Add a new plugin
to the vimrc file.

.. code-block:: vimrc

   call plug#begin("~\vimfiles\plugged')
   Plug 'cjrh/vim-conda'
   call plug#end()

Then run the PlugInstall command in vim.

.. code-block:: vim-command

   :PlugInstall

Update Plugins
==============

Run the PlugUpdate command to update all plugins.

.. code-block:: vim-command

   :PlugUpdate
        
Upgrade vim-plug
================

Run the PlugUpgrade command to upgrade vim-plug itself.

.. code-block:: vim-command

   :PlugUpgrade
        
Remove Plugin
=============
Remove the plugin from the vimrc file and then run PlugClean.

.. code-block:: vim-command

   :PlugClean
        

Plugins
=======

* vim-plug_ is the plugin manager
* MiniBufExpl_ is for adding "Tab" functionality to buffers
* vim-conda_ is for changing conda environments for jedi completions
* SimpylFold_ is for folding Python source code
* FastFold_ is to speed up SimpyFold_ folding
* lightline.vim_ is for the status line
* ale_ is for linting python code
* completor_ is for Python completion using jedi

.. _MiniBufExpl: https://github.com/fholgado/minibufexpl.vim
.. _vim-plug: https://github.com/junegunn/vim-plug
.. _vim-conda: https://github.com/cjrh/vim-conda
.. _SimpylFold: https://github.com/tmhedberg/SimpylFold
.. _FastFold: https://github.com/Konfekt/FastFold
.. _lightline.vim: https://github.com/itchyny/lightline.vim
.. _ale: https://github.com/w0rp/ale
.. _completor: https://github.com/maralla/completor.vim


vimrc
=====

Many of the items in my vimrc file are from a Pycon APAC presentation
from Martin Brochhaus_

.. _Brochhaus: http://www.youtube.com/watch?v=YhqsjUUHj6g

