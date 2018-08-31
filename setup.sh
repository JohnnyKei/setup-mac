# Common
xcode-select --install

## Setup Download from AppStore Tool
brew install mas
mas signin YOUR_EMAIL "YOUR_PASSWORD"

## Install Tools from Brewfile
brew bundle

## Install anyenv
git clone https://github.com/riywo/anyenv ~/.anyenv
echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(anyenv init -)"' >> ~/.bash_profile
exec $SHELL -l

## Install ruby
anyenv install rbenv
exec $SHELL -l
rbenv install 2.3.1
rbenv global 2.3.1
ruby -v
touch ~/.gemrc
echo 'install: --no-ri --no-rdoc\nupdate: --no-ri --no-rdoc' >> ~/.gemrc

gem install bundler

## Install node
anyenv install ndenv
exec $SHELL -l
ndenv install v8.11.3
ndenv global v8.11.3
node -v
