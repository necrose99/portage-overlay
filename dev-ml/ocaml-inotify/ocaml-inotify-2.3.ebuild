# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

OASIS_BUILD_DOCS=1
OASIS_BUILD_TESTS=1

inherit oasis

DESCRIPTION="OCaml bindings to inotify"
HOMEPAGE="https://github.com/whitequark/ocaml-inotify"
SRC_URI="https://github.com/whitequark/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="debug doc lwt +ocamlopt profiling test"

RDEPEND="dev-lang/ocaml:=[ocamlopt?]
	lwt? ( dev-ml/lwt:= )"
DEPEND="${RDEPEND}
	dev-ml/findlib
	test? ( dev-ml/ocaml-fileutils:= )"

src_configure() {
	oasis_configure_opts="$(use_enable debug)" "$(use_enable doc docs)" \
		"$(use_enable lwt)" "$(use_enable profiling profile)" "$(use_enable test tests)"
	oasis_src_configure
}
