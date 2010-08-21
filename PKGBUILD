# maintainer: Magnus Woldrich <trapd00r\@trapd00r.se>
pkgname=vim-neverland-git
pkgver=20100821
pkgrel=1
pkgdesc='Dark, simple and colorful colorschemes with 256 colors'
arch=(i686 x86_64)
url='http://github.com/trapd00r/neverland-vim-theme'
license=('GPLv2')
depends=(vim)
groups=(vim-plugins)

_gitroot="git://github.com/trapd00r/neverland-vim-theme.git"
_gitname="neverland-vim-theme"

build() {
  cd "$srcdir"
  msg "Connecting to GIT server...."

  if [ -d $_gitname ] ; then
    cd $_gitname && git pull origin
    msg "The local files are updated."
  else
    git clone $_gitroot $_gitname
  fi

  msg "GIT checkout done or server timeout"
  msg "Starting make..."

  rm -rf "$srcdir/$_gitname-build"
  git clone "$srcdir/$_gitname" "$srcdir/$_gitname-build"
  cd "$srcdir/$_gitname-build"
  install -Dm755 never*.vim /usr/share/vim/vim72/colors/ || return 1
}
