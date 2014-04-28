echo "Setting up Tern"
cd ~/.emacs.d/site-lisp/tern
npm install

echo "Download default custom.el"
cd ~/.emacs.d/
wget https://raw.githubusercontent.com/arnm/emacs.d/6864f27f5f7e1c1be1b0382fd2f7e32b8d3306bc/custom.el

echo "Setup complete"
