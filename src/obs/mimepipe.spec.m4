#
# spec file for package mimepipe
#
# Copyright (c) 2020 SUSE LINUX GmbH, Nuernberg, Germany.
#
# All modifications and additions to the file contributed by third parties
# remain the property of their copyright owners, unless otherwise agreed
# upon. The license for this file, and modifications and additions to the
# file, is the same license as for the pristine package itself (unless the
# license for the pristine package is not an Open Source License, in which
# case the license is the MIT License). An "Open Source License" is a
# license that conforms to the Open Source Definition (Version 1.9)
# published by the Open Source Initiative.

# Please submit bugfixes or comments via http://bugs.opensuse.org/
#


Name:		mimepipe
Version:	__VERSION__
Release:	0
Summary:	Output textual representation for files
License:	Zlib
Group:		Productivity/File utilities
Url:		https://github.com/urbin/%{name}
Source:		%{name}-%{version}.tar.xz
BuildRequires:	make
BuildRequires:	fdupes
BuildArch:	noarch
BuildRoot:	%{_tmppath}/%{name}-%{version}-build
Requires:	7z
Requires:	ImageMagick
Requires:	arj
Requires:	binutils
Requires:	bzip2
Requires:	cabextract
Requires:	calibre
Requires:	coreutils
Requires:	cpio
Requires:	djvulibre
Requires:	fontconfig
Requires:	ghostscript
Requires:	gpkg
Requires:	groff
Requires:	gzip
Requires:	java-openjdk-devel
Requires:	libreoffice
Requires:	lzma
Requires:	mediainfo
Requires:	mkisofs
Requires:	perl(File::MimeInfo)
Requires:	perl(File::MimeInfo::Magic)
Requires:	perl(File::Spec)
Requires:	perl(Log::Minimal)
Requires:	perl-base >= 5.10
Requires:	poppler-tools
Requires:	rpm
Requires:	tar
Requires:	unrar
Requires:	unzip
Requires:	uudecode
Requires:	w3m
Requires:	xz

%description
MIMEPIPE is a modular and extensible alternative to lesspipe. The program
outputs textual representation of files according to their MIME types.

MIMEPIPE supports files contained in archives and software packages.

%prep
%setup -q

%build

%install
%make_install \
	bindir=%{_bindir} \
	sysconfdir=%{_sysconfdir} \
	datadir=%{_datadir} \
	libexecdir=%{_libexecdir} \
	mandir=%{_mandir} \
	%{nil}
%fdupes %{_libexecdir}/%{name}

%files
%defattr(-,root,root)
%doc README.md
%license LICENSE
%{_libexecdir}/%{name}
%{_mandir}/man1/%{name}.1*
%{_bindir}/%{name}

%changelog

