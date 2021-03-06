# nest overlay

[![Number of ebuilds: 140](https://img.shields.io/badge/ebuild-140-orange.svg)](https://img.shields.io/badge/ebuild-140-orange.svg)
[![GitHub repo size in bytes](https://img.shields.io/github/repo-size/SpiderX/portage-overlay.svg)](https://img.shields.io/github/repo-size/SpiderX/portage-overlay.svg)
[![Build Status](https://travis-ci.org/SpiderX/portage-overlay.svg?branch=master)](https://travis-ci.org/SpiderX/portage-overlay)

### References

+ [Overlay with metadata](https://github.com/gentoo-mirror/nest)
+ [QA Report](https://qa-reports.gentoo.org/output/repos/nest.html)
+ [Gentoo Repo QA Check](http://gentoo.github.io/repo-qa-check-results/nest.html)
+ [Ebuild Upstream Scanner](http://euscan.gentooexperimental.org/maintainers/spiderx@spiderx.dp.ua/)
+ [Levelnine checks](https://gentoo.levelnine.at/full-sort-by-maintainer/spiderx_at_spiderx.dp.ua.txt)

# How to use this overlay

For automatic install, you must have [`app-eselect/eselect-repository`](https://packages.gentoo.org/packages/app-eselect/eselect-repository)
or [`app-portage/layman`](https://packages.gentoo.org/packages/app-portage/layman) installed on your system for this to work.

#### `eselect-repository`:
```console
eselect repository enable nest
```

#### `layman`:
```console
layman -fa nest
```

For manual install, through [local overlays](https://wiki.gentoo.org/wiki/Overlay/Local_overlay), you should add this in `/etc/portage/repos.conf/nest.conf`:

```
[nest]
location = /usr/local/portage/nest
sync-type = git
sync-uri = https://github.com/spiderx/portage-overlay.git
priority=9999
```

Afterwards, simply run `emerge --sync`, and Portage should seamlessly make all our ebuilds available.

## List of Ebuilds

This overlay consists of an [Gentoo Portage](http://www.gentoo.org/) ebuilds for projects:

* app-admin/[qtpass](https://qtpass.org/) | multi-platform GUI for pass, the standard unix password manager
* app-admin/[reprepro](https://mirrorer.alioth.debian.org/) | A tool to handle local repositories of Debian packages
* app-admin/[userdbadm](http://nasauber.de/opensource/userdbadm) | Tool to manage (PAM) userdb files with crypted passwords
* app-admin/[uwsgitop](https://github.com/unbit/uwsgitop/) | uWSGI stats viewer
* [![Gentoo Bug](https://img.shields.io/badge/Bug-576796-red.svg)](https://bugs.gentoo.org/576796) [![Gentoo package](https://repology.org/badge/version-only-for-repo/gentoo/zbackup.svg)](https://repology.org/metapackage/zbackup) app-backup/[zbackup](http://zbackup.org/) | A versatile deduplicating backup tool
* app-crypt/[acme-client](https://github.com/kristapsdz/acme-client-portable) | Secure Let's Encrypt client
* app-crypt/[qesteidutil](https://github.com/open-eid/qesteidutil) | Estonian ID card management desktop utility
* app-emulation/[looking-glass](https://looking-glass.hostfission.com) | A low latency KVM FrameRelay implementation for guests with VGA PCI Passthrough
* app-emulation/[qio](https://github.com/SpiderX/qio) | QEMU Init OpenRC
* app-misc/[android-file-transfer-linux](https://whoozle.github.io/android-file-transfer-linux/) | Reliable MTP client with minimalistic UI
* app-misc/[cointop](https://github.com/miguelmota/cointop) | Interactive cryptocurrency monitor
* app-misc/[jshon](http://kmkeen.com/jshon) | JSON parser designed for maximum convenience within the shell
* app-misc/[pet](https://github.com/knqyf263/pet) | Simple command-line snippet manager
* app-misc/[rmlint](http://rmlint.rtfd.org) | Removes duplicates and other lint from your filesystem
* app-shells/[peco](https://github.com/peco/peco) | Simplistic interactive filtering tool
* app-text/[keening](https://github.com/vehk/keening) | A simple command line pastebin designed to be used together with ssh
* dev-db/[influxdb-bin](http://influxdata.com) | Scalable datastore for metrics, events, and real-time analytics
* dev-db/[pgtune](https://github.com/andreif/pgtune) | A high-performance PostgreSQL tuning script
* dev-libs/[libcommuni](http://communi.github.io/) | A cross-platform IRC framework written with Qt
* dev-libs/[libdigidoc](https://github.com/open-eid/libdigidoc) | DigiDoc digital signature library
* [![Gentoo Bug](https://img.shields.io/badge/Bug-482946-red.svg)](https://bugs.gentoo.org/482946) dev-libs/[loki](http://loki-lib.sourceforge.net/) | C++ library of common design patterns and idioms
* dev-lua/[lyaml](https://github.com/gvvaughan/lyaml) | LibYAML binding for Lua
* dev-haskell/[daemons](https://github.com/scvalex/daemons) | Daemons in Haskell made fun and easy
* dev-haskell/[ini](https://github.com/chrisdone/ini) | Quick and easy configuration files in the INI format
* dev-haskell/[scotty](https://github.com/scotty-web/scotty) | A Haskell web framework, using WAI and Warp
* dev-haskell/[tz](https://github.com/nilcons/haskell-tz) | Library for time zone conversions
* dev-haskell/[tzdata](https://github.com/nilcons/haskell-tzdata) | Distribution of the standard time zone database
* dev-haskell/[wai-cors](https://github.com/larskuhtz/wai-cors) | Cross-Origin resource sharing (CORS) for Wai
* dev-ml/[ocaml-alsa](https://github.com/savonet/ocaml-alsa) | OCaml bindings to alsa-lib
* dev-ml/[ocaml-ao](https://github.com/savonet/ocaml-ao) | OCaml bindings to libao
* dev-ml/[ocaml-bjack](https://github.com/savonet/ocaml-bjack) | OCaml blocking JACK API
* dev-ml/[ocaml-cry](https://github.com/savonet/ocaml-cry) | OCaml native module for icecast/shoutcast source protocols
* dev-ml/[ocaml-dssi](https://github.com/savonet/ocaml-dssi) | OCaml bindings to dssi
* dev-ml/[ocaml-dtools](https://github.com/savonet/ocaml-dtools) | OCaml daemon tools library
* dev-ml/[ocaml-duppy](https://github.com/savonet/ocaml-duppy) | OCaml advanced scheduler
* dev-ml/[ocaml-faad](https://github.com/savonet/ocaml-faad) | OCaml bindings to faad2
* dev-ml/[ocaml-fdkaac](https://github.com/savonet/ocaml-fdkaac) | OCaml bindings to fdk-aac
* dev-ml/[ocaml-ffmpeg](https://github.com/savonet/ocaml-ffmpeg) | OCaml bindings to ffmpeg
* dev-ml/[ocaml-flac](https://github.com/savonet/ocaml-flac) | OCaml bindings to flac
* dev-ml/[ocaml-frei0r](https://github.com/savonet/ocaml-frei0r) | OCaml bindings to frei0r plugins
* dev-ml/[ocaml-gavl](https://github.com/savonet/ocaml-gavl) | OCaml bindings to Gavl video manipulation library
* dev-ml/[ocaml-gstreamer](https://github.com/savonet/ocaml-gstreamer) | OCaml bindings to gstreamer
* dev-ml/[ocaml-inotify](https://github.com/whitequark/ocaml-inotify) | OCaml bindings to inotify
* dev-ml/[ocaml-ladspa](https://github.com/savonet/ocaml-ladspa) | OCaml bindings to LADSPA plugins
* dev-ml/[ocaml-lame](https://github.com/savonet/ocaml-lame) | OCaml bindings to lame
* dev-ml/[ocaml-lastfm](https://github.com/savonet/ocaml-lastfm) | OCaml interface for Lastfm
* dev-ml/[ocaml-lo](https://github.com/savonet/ocaml-lo) | OCaml bindings to liblo
* dev-ml/[ocaml-mad](https://github.com/savonet/ocaml-mad) | OCaml bindings to libmad
* dev-ml/[ocaml-magic](https://github.com/savonet/ocaml-magic) | OCaml bindings to libmagic
* dev-ml/[ocaml-mm](https://github.com/savonet/ocaml-mm) | OCaml bindings to mm
* dev-ml/[ocaml-ogg](https://github.com/savonet/ocaml-ogg) | OCaml bindings to libogg
* dev-ml/[ocaml-opus](https://github.com/savonet/ocaml-opus) | OCaml bindings to opus
* dev-ml/[ocaml-portaudio](https://github.com/savonet/ocaml-portaudio) | OCaml bindings to portaudio
* dev-ml/[ocaml-pulseaudio](https://github.com/savonet/ocaml-pulseaudio) | OCaml bindings to pulseaudio
* dev-ml/[ocaml-samplerate](https://github.com/savonet/ocaml-samplerate) | OCaml bindings to libsamplerate
* dev-ml/[ocaml-shine](https://github.com/savonet/ocaml-shine) | OCaml bindings to libshine
* dev-ml/[ocaml-soundtouch](https://github.com/savonet/ocaml-soundtouch) | OCaml bindings to libsoundtouch
* dev-ml/[ocaml-speex](https://github.com/savonet/ocaml-speex) | OCaml bindings to speex
* dev-ml/[ocaml-syslog](http://opam.ocaml.org/packages/syslog) | OCaml syslog client functions
* dev-ml/[ocaml-taglib](https://github.com/savonet/ocaml-taglib) | OCaml bindings to taglib
* dev-ml/[ocaml-theora](https://github.com/savonet/ocaml-theora) | OCaml bindings to libtheora
* dev-ml/[ocaml-vorbis](https://github.com/savonet/ocaml-vorbis) | OCaml bindings to libvorbis
* dev-ml/[ocaml-xmlplaylist](https://github.com/savonet/ocaml-xmlplaylist) | OCaml module to parse various RSS playlist formats
* dev-python/[adal](https://pypi.python.org/pypi/adal/) | Library for authentication in Azure Active Directory
* dev-python/[anyconfig](https://github.com/ssato/python-anyconfig) | Generic access to configuration files in any formats
* dev-python/[applicationinsights](https://pypi.python.org/pypi/applicationinsights/) | Application Insights API surface
* dev-python/[crossplane](https://github.com/nginxinc/crossplane) | Fast and reliable NGINX configuration parser
* dev-python/[django-debug-toolbar](https://github.com/django-debug-toolbar/django-debug-toolbar) | A configurable set of panels that display debug information
* dev-python/[django-filter](https://github.com/alex/django-filter) | A generic system for filtering Django QuerySets based on user selections
* dev-python/[django-guardian](https://github.com/lukaszb/django-guardian) | Implementation of per object permissions for Django 1.2+
* dev-python/[django-rest-framework](http://django-rest-framework.org/) | Powerful and flexible toolkit that makes it easy to build Web APIs using Django
* dev-python/[django-rest-swagger](https://github.com/marcgibbons/django-rest-swagger) | Swagger Documentation Generator for Django REST Framework
* dev-python/[django-tables2](https://pypi.python.org/pypi/django-tables2/) | Table/data-grid framework for Django
* dev-python/[graphviz](https://github.com/xflr6/graphviz) | Simple Python interface for Graphviz
* dev-python/[m9dicts](https://github.com/ssato/python-m9dicts) | A dict-like object supports recursive merge operation
* dev-python/[msrest](https://pypi.python.org/pypi/msrest/) | AutoRest swagger generator Python client runtime
* dev-python/[ncclient](https://github.com/ncclient/ncclient) | Python library for NETCONF clients
* dev-python/[PythonQt](http://pythonqt.sourceforge.net/) | A dynamic Python binding for the Qt framework
* dev-python/[rstr](http://bitbucket.org/leapfrogdevelopment/rstr) | Generate random strings in Python
* dev-python/[testinfra](https://github.com/philpep/testinfra) | An unit tests in Python to test actual state of servers
* dev-python/[toml](https://github.com/uiri/toml) | Python Library for Tom's Obvious, Minimal Language
* dev-util/[ansible-lint](https://github.com/willthames/ansible-lint) | Best practices checker for Ansible
* dev-util/[ansible-molecule](https://github.com/metacloud/ansible-molecule) | Automated testing for Ansible roles
* dev-vcs/[mercurial-extension_utils](https://bitbucket.org/Mekk/mercurial-extension_utils) | Mercurial Extension Utils
* dev-vcs/[mercurial-keyring](http://bitbucket.org/Mekk/mercurial_keyring) | Mercurial Keyring Extension
* media-gfx/[screencloud](https://screencloud.net/) | Screenshot capturing and sharing tool over various services
* media-libs/[shine](https://github.com/toots/shine) | Fixed-point mp3 encoding library
* media-radio/[krudio](https://github.com/loast/krudio) | Radio tray for linux on QT
* media-radio/[liquidsoap](http://liquidsoap.fm/) | A swiss-army knife for multimedia streaming, used for netradios and webtvs
* [![Gentoo Bug](https://img.shields.io/badge/Bug-530112-red.svg)](https://bugs.gentoo.org/530112) [![Gentoo package](https://repology.org/badge/version-only-for-repo/gentoo/goaccess.svg)](https://repology.org/metapackage/goaccess) net-analyzer/[goaccess](https://goaccess.io) | A real-time web log analyzer and interactive viewer that runs in a terminal
* net-analyzer/[logswan](https://github.com/fcambus/logswan) | Web log analyzer using probabilistic data structures
* net-analyzer/[netgauge](http://www.ookla.com/) | Server software for testing internet bandwidth using speedtest.net
* net-analyzer/[nginx-amplify-agent](https://amplify.nginx.com) | System and NGINX metric collection
* [![Gentoo Bug](https://img.shields.io/badge/Bug-486788-red.svg)](https://bugs.gentoo.org/486788) [![Gentoo package](https://repology.org/badge/version-only-for-repo/gentoo/nuttcp.svg)](https://repology.org/metapackage/nuttcp) net-analyzer/[nuttcp](http://www.nuttcp.net/) | Network performance measurement tool
* net-analyzer/[passivedns](https://github.com/gamelinux/passivedns) | Network sniffer that logs all DNS server replies
* net-dns/[inadyn-mt](http://inadyn-mt.sourceforge.net/) | A simple dynamic DNS client
* net-dns/[nsping](https://github.com/vovcat/nsping) | Measure reachability and latency of DNS nameservers
* net-firewall/[ipt_netflow](https://sourceforge.net/projects/ipt-netflow) | Netflow iptables module
* net-firewall/[ipt_ratelimit](https://github.com/aabc/ipt-ratelimit) | Ratelimit iptables module
* net-im/[communi-desktop](https://github.com/communi/communi-desktop) | A cross-platform IRC framework written with Qt
* net-im/[gitter-bin](http://www.gitter.im/) | Chat and network platform
* [![Gentoo Bug](https://img.shields.io/badge/Bug-575786-red.svg)](https://bugs.gentoo.org/575786) [![Gentoo package](https://repology.org/badge/version-only-for-repo/gentoo/slack-bin.svg)](https://repology.org/metapackage/slack-bin) net-im/[slack-bin](http://www.slack.com/) | Team collaboration tool
* net-im/[viber-bin](http://www.viber.com/) | Free text and calls
* net-im/[vkmessenger-bin](https://vk.com/desktop_app) | Simple and Easy App for Messaging on VK
* net-misc/[comcast](https://github.com/tylertreat/Comcast) | Network problems simulator
* [![Gentoo Bug](https://img.shields.io/badge/Bug-281994-red.svg)](https://bugs.gentoo.org/281994) [![Gentoo package](https://repology.org/badge/version-only-for-repo/gentoo/dhcdrop.svg)](https://repology.org/metapackage/dhcdrop) net-misc/[dhcdrop](http://www.netpatch.ru/dhcdrop.html) | Effectively suppresses illegal DHCP servers on the LAN
* [![Gentoo Bug](https://img.shields.io/badge/Bug-536148-red.svg)](https://bugs.gentoo.org/536148) net-misc/[fiche](https://github.com/solusipse/fiche) | Command line pastebin server
* net-misc/[mcproxy](https://mcproxy.realmv6.org/) | IGMP/MLD Proxy daemon
* net-misc/[ngrok-bin](https://ngrok.com/) | Secure introspected tunnels to localhost
* net-misc/[pingu](https://github.com/ncopa/pingu) | Policy routing daemon with failover and load-balancing
* net-misc/[qfreerdp](https://github.com/zrax/qfreerdp) | Qt launcher GUI for XFreeRDP
* net-misc/[qia](http://stg.codes/) | Authorization tool for Stargazer Billing System written in Qt
* net-misc/[redir](https://github.com/troglobit/redir) | TCP port redirector
* net-misc/[rstatd](http://rstatd.sourceforge.net/) | Client-server linux performance statistics
* [![Gentoo Bug](https://img.shields.io/badge/Bug-459310-red.svg)](https://bugs.gentoo.org/459310) [![Gentoo package](https://repology.org/badge/version-only-for-repo/gentoo/samplicator.svg)](https://repology.org/metapackage/samplicator) net-misc/[samplicator](https://github.com/sleinen/samplicator) | UDP packets forwarder and duplicator
* net-misc/[slowhttptest](https://github.com/shekyan/slowhttptest) | Application Layer DoS attack simulator
* net-misc/[ssmd](https://gitorious.org/ssmd) | SNMP Switch Management Daemon
* net-misc/[stargazer](http://stg.net.ua/) | Billing system for small home and office networks
* net-misc/[topola](https://topola.unity.net) | Customer accounting system, services and statistics collection management
* net-misc/[uredir](https://github.com/troglobit/uredir) | UDP port redirector
* net-misc/[virtualhere-usb-bin](https://virtualhere.com/) | Share USB devices over the network
* net-p2p/[automatic](https://github.com/1100101/Automatic) | RSS downloader for Tranmission
* net-p2p/[tremotesf](https://github.com/equeim/tremotesf2) | A remote GUI for transmission
* [![Gentoo Bug](https://img.shields.io/badge/Bug-214969-red.svg)](https://bugs.gentoo.org/214969) net-p2p/[opentracker](https://github.com/flygoast/opentracker) | High-performance bittorrent tracker
* [![Gentoo Bug](https://img.shields.io/badge/Bug-486406-red.svg)](https://bugs.gentoo.org/486406) [![Gentoo package](https://repology.org/badge/version-only-for-repo/gentoo/resilio-sync.svg)](https://repology.org/metapackage/resilio-sync) net-p2p/[resilio-sync](https://getsync.com/) | Resilient, fast and scalable file synchronization tool
* [![Gentoo Bug](https://img.shields.io/badge/Bug-498844-red.svg)](https://bugs.gentoo.org/498844) net-vpn/[softether](http://www.softether.org/) | Multi-protocol VPN software
* net-wireless/[unifi](http://www.ubnt.com/unifi) | Management Controller for Ubiquiti Networks UniFi APs
* sys-apps/[firetools](https://firejail.wordpress.com/) | Graphical user interface of Firajail security sandbox
* sys-fs/[adhocify](https://github.com/quitesimpleorg/adhocify) | Tool which monitors for inotify events and executes script
* sys-power/[powerstat](https://launchpad.net/ubuntu/+source/powerstat) | Laptop power measuring tool
* [![Gentoo package](https://repology.org/badge/version-only-for-repo/gentoo/criu.svg)](https://repology.org/metapackage/criu) sys-process/[criu](http://criu.org/) | utility to checkpoint/restore a process tree
* www-apps/[draw-io](https://github.com/jgraph/drawio) | Online diagramming web application
* www-apps/[netbox](https://github.com/digitalocean/netbox) | IP address management (IPAM) and data center infrastructure management (DCIM)
* www-apps/[noc-tower](https://bitbucket.org/nocproject/noc-tower) | NOCProject supervisor
* www-apps/[webui-aria2](https://github.com/ziahamza/webui-aria2) | The worlds best and hottest interface to interact with aria2
* www-plugins/[chrome-token-signing](https://github.com/open-eid/chrome-token-signing) | Native client and extension for signing with your eID on the web
* www-servers/[gitlab-gitaly](https://gitlab.com/gitlab-org/gitaly) | Gitaly is a Git RPC service for handling GitLab git calls
* www-servers/[gitlab-workhorse](https://gitlab.com/gitlab-org/gitlab-workhorse) | GitLab reverse proxy
* [![Gentoo package](https://repology.org/badge/version-only-for-repo/gentoo/libinput-gestures.svg)](https://repology.org/metapackage/libinput-gestures) x11-misc/[libinput-gestures](https://github.com/bulletmark/libinput-gestures) | Actions gestures on your touchpad using libinput
* x11-misc/[logkeys](https://github.com/kernc/logkeys) | A Linux keylogger
