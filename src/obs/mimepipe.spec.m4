#
# spec file for package mimepipe
#
# Copyright (c) 2022 SUSE LLC
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
Url:		https://github.com/urbic/%{name}
Source:		%{name}-%{version}.tar.xz
BuildRequires:	make
BuildRequires:	fdupes
BuildArch:	noarch
Requires:	p7zip-full
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
Requires:	dpkg
Requires:	groff
Requires:	gzip
Requires:	java-devel
Requires:	less
#Requires:	libreoffice
Requires:	lz4
Requires:	lzip
Requires:	lzma
Requires:	mediainfo
Requires:	mkisofs
Requires:	pandoc
Requires:	perl(File::MimeInfo)
Requires:	perl(File::MimeInfo::Magic)
Requires:	perl(File::Spec)
Requires:	perl(Getopt::Long)
Requires:	perl(Log::Minimal)
Requires:	perl-base >= 5.10
Requires:	poppler-tools
Requires:	rpm
Requires:	sharutils
Requires:	tar
Requires:	unoconv
Requires:	unrar
Requires:	unzip
Requires:	w3m
Requires:	xz

esyscmd(`for t in $(find src/main/libexec/mime -type f); do t=${t#*/*/*/*/}; t=${t/_any_/*}; echo -e "Provides:\tmimepipe($t)"; done')

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
%fdupes %{buildroot}%{_libexecdir}/%{name}

%files
%defattr(-,root,root)
%doc README.md
%license LICENSE
%{_libexecdir}/%{name}
%{_mandir}/man1/%{name}.1*
%{_bindir}/%{name}

%changelog
