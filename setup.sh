# Common
xcode-select --install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## Install Tools from Brewfile
brew bundle

## Install anyenv
git clone https://github.com/riywo/anyenv ~/.anyenv
echo 'export PATH="$HOME/.anyenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(anyenv init -)"' >> ~/.bash_profile
source ~/.bash_profile

## Install ruby
anyenv install rbenv
source ~/.bash_profile
rbenv install 2.3.1
rbenv global 2.3.1
ruby -v
echo -e "install: --no-ri --no-rdoc\nupdate: --no-ri --no-rdoc" >> ~/.gemrc
gem install bundler

## Install node
anyenv install ndenv
source ~/.bash_profile
ndenv install v8.11.3
ndenv global v8.11.3
node -v
