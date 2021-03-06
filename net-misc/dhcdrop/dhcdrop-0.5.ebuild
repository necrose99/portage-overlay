# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Effectively suppresses illegal DHCP servers on the LAN"
HOMEPAGE="http://www.netpatch.ru/dhcdrop.html"
SRC_URI="http://www.netpatch.ru/projects/${PN}/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="static"

RDEPEND="!static? ( net-libs/libpcap )"
DEPEND="${RDEPEND}
	static? ( net-libs/libpcap[static-libs] )"

DOCS=( AUTHORS ChangeLog INSTALL NEWS README )

src_configure() {
	econf "$(use_enable static static-build)"
}
