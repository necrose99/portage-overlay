# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

EGIT_REPO_URI="git://github.com/SoftEtherVPN/SoftEtherVPN.git"
EGIT_BRANCH="master"

inherit eutils git-2

DESCRIPTION="Multi-protocol VPN software"
HOMEPAGE="http://www.softether.org/"
LICENSE="GPL-2"

SRC_URI=""
SLOT="0"
KEYWORDS=""

S=${WORKDIR}/src

IUSE="bridge client cmd debug server"

RDEPEND="dev-libs/openssl
	sys-libs/ncurses
	sys-libs/readline
	sys-libs/zlib"

DOCS=( AUTHORS.TXT ChangeLog README )

REQUIRED_USE="|| ( bridge client cmd server )"

src_prepare() {
	# Prohibit to modify number of threads
	epatch "${FILESDIR}"/softether-4.04-sandbox.patch

	epatch_user
}

src_configure() {
	use amd64 && echo -e "1\n2\n" | ./configure
	use x86   && echo -e "1\n1\n" | ./configure
}

src_compile() {
	emake DEBUG="$(usex debug YES NO '' '')"
}

src_install() {
	# Define local variable, strip 'debug' USE flags
	local MODULES=${IUSE//debug}

	# Define installation location
	insinto /opt/softether
	doins src/bin/BuiltHamcoreFiles/unix/hamcore.se2

	# Install binary in accordance to used USE flags
	for module in ${MODULES}; do
		if use $module ; then
			dosym /opt/softether/hamcore.se2 /opt/softether/bin/vpn${module}/hamcore.se2
			insinto /opt/softether/bin/vpn${module}
			doins bin/vpn${module}/vpn${module}
			fperms 0755 /opt/softether/bin/vpn${module}/vpn${module}
			if [ "$module" != "cmd" ] ; then
				newinitd "${FILESDIR}"/${PN}-${module}.initd ${PN}-${module}
				newconfd "${FILESDIR}"/${PN}-${module}.confd ${PN}-${module}
			fi
		fi
	done
}