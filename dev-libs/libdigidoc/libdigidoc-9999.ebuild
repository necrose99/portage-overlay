# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3 flag-o-matic cmake-utils

DESCRIPTION="DigiDoc digital signature library"
HOMEPAGE="https://github.com/open-eid/libdigidoc http://id.ee"
EGIT_REPO_URI="https://github.com/open-eid/${PN}.git"

LICENSE="LGPL-2.1"
KEYWORDS=""
SLOT="0"
IUSE="doc libressl +utils"

RDEPEND="dev-libs/libxml2:2
	sys-libs/zlib:0=
	!libressl? ( dev-libs/openssl:0= )
	libressl? ( dev-libs/libressl:0= )"
DEPEND="${RDEPEND}
	virtual/libiconv
	virtual/pkgconfig
	doc? ( app-doc/doxygen )"

DOCS=( AUTHORS README.md RELEASE-NOTES.txt )

src_configure() {
	append-cppflags "-DOF=_Z_OF"

	local mycmakeargs=(
		-DCMAKE_SKIP_RPATH=ON
		-DINSTALL_DOC="$(usex doc)"
		-DBUILD_TOOLS="$(usex utils)"
	)
	cmake-utils_src_configure
}
