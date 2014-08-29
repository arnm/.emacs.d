echo "Setting up Tern"
cd ~/.emacs.d/site-lisp/tern
npm install

echo "Download default custom.el"
cd ~/.emacs.d/
wget https://gist.githubusercontent.com/arnm/11359580/raw/00d81bde6480835a0cdab9301783b81f7123581e/custom.el

echo "Setup complete"
