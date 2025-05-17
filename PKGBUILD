# Maintainer: Johannes Janssen <0xJJ@hanni.dev>

_pkgbase=ufs-write
pkgname=$_pkgbase-dkms
pkgver=6.14.6
pkgrel=2
pkgdesc='UFS kernel module with write support (DKMS)'
url='https://docs.kernel.org/admin-guide/ufs.html'
arch=(x86_64)
license=(GPL-2.0-only)
depends=(dkms)
makedepends=()
_srcname=linux-${pkgver}
source=(
  https://cdn.kernel.org/pub/linux/kernel/v${pkgver%%.*}.x/${_srcname}.tar.{xz,sign}
  dkms.conf
  pre_build_check.sh
)
validpgpkeys=(
  ABAF11C65A2970B130ABE3C479BE3E4300411886  # Linus Torvalds
  647F28654894E3BD457199BE38DBBDC86092693E  # Greg Kroah-Hartman
)
# https://www.kernel.org/pub/linux/kernel/v6.x/sha256sums.asc
sha256sums=('21817f1998e2230f81f7e4f605fa6fdcb040e14fa27d99c27ddb16ce749797a9'
            'SKIP'
            '49747b2acda3224c842bc13743ea5ab9be0bc0ac96295e51299e42067536c779'
            '3c40612f22e156a19d7af4fe62ffe6bddc69ff3775e91850f730cd70a8316a8d')
b2sums=('dedcadc0b7506f620da3ac849446539e83d694f0955d5417e063b6680d53ef8993eeef40562ae8dae9249a21bea9746093f8873a360dd74f6b139fbafdd7b9ac'
        'SKIP'
        '857e181fb4e6e08ade6259bc85d071ae6fab50ed99666e660f27f9faf01242a7e914bbeaf6f1a2ff3753c004d42efa1d6c9ccd85f0f61ae610787d788062e645'
        'e7ef497269c906dce559d7ce6384fd2107e3a727a28f0fe2a2a983ceed18dc4177c29b985b39978c662e94bba0f97f4c56532ce708ebe5fb59762069db38dadb')

package() {
  local dkmsdir="${pkgdir}"/usr/src/${_pkgbase}-${pkgver}

  install -Dm644 -t "${dkmsdir}" dkms.conf
  install -Dm755 -t "${dkmsdir}" pre_build_check.sh

  sed -ie "s/@PKGVER@/${pkgver}/" "${dkmsdir}"/dkms.conf

  install -Dm644 -t "${dkmsdir}" ${_srcname}/fs/ufs/*
}
