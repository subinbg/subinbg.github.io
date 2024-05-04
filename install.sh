# chmod +x install.sh
# source install.sh

ZOLA_VERSION=v0.18.0
ZOLA_FILE=zola-$ZOLA_VERSION-x86_64-unknown-linux-gnu.tar.gz

wget https://github.com/getzola/zola/releases/download/$ZOLA_VERSION/$ZOLA_FILE
tar -xvzf $ZOLA_FILE
rm $ZOLA_FILE

mkdir --parents ./.bin; mv zola $_
export PATH=$PATH:$PWD/.bin

mkdir themes
git submodule add -b latest https://github.com/isunjn/serene.git themes/serene