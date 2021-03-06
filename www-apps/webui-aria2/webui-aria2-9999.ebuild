# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3 webapp

WEBAPP_MANUAL_SLOT="yes"

DESCRIPTION="The worlds best and hottest interface to interact with aria2"
HOMEPAGE="https://github.com/ziahamza/webui-aria2"
SRC_URI=""
EGIT_REPO_URI="https://github.com/ziahamza/${PN}.git"

LICENSE="MIT"
SLOT=0
KEYWORDS=""
IUSE="vhosts"

DEPEND="${WEBAPP_DEPEND}"
RDEPEND="${DEPEND}"

DOCS=( README.md directurl.md )

src_install() {
	webapp_src_preinst

	# Fix permissions
	fperms 0644 index.html \
		css/download.css css/modals.css css/style.css \
		js/init.js js/ctrls/main.js js/translate/it_IT.js

	cp -R css flags fonts js index.html configuration.js favicon.ico \
		"${ED%/}"/"${MY_HTDOCSDIR}" || die "cp failed"

	webapp_configfile "${MY_HTDOCSDIR}"/configuration.js
	webapp_src_install
}
