# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=2
DESCRIPTION="Agent providing a command line utility for a convenient access to
the logentries.com logging infrastructure."
HOMEPAGE="https://logentries.com/"

AUTHOR=logentries

SRC_URI="https://rep.logentries.com/le/le.py ->
${PN}-${PV}.tgz"
S="${WORKDIR}/logentries-${PN}-*"
KEYWORDS="x86 sparc mips ~ppc ~ppc-macos -ia64"
USE=""
DEPEND="dev-lang/python
    dev-python/simplejson
    app-crypt/gnupg"
RDEPEND=""
LICENSE="GPL-2"
SLOT="0"

src_unpack() {
    unpack  ${A}
}

src_install() {
    cd ${S}
    emake DESTDIR="${D}" install || die "Install failed"
}