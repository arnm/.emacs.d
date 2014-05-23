echo "Setting up Tern"
cd ~/.emacs.d/site-lisp/tern
npm install

echo "Download org-mode"
cd ~/.emacs.d/site-lisp
git clone git://orgmode.org/org-mode.git
sudo make install

echo "Download default custom.el"
cd ~/.emacs.d/
wget https://gist.githubusercontent.com/arnm/11359580/raw/75ea6208a545a3af500df42aaf00117147d9c60a/custom.el

echo "Setup complete"
