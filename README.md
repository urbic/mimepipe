# MIMEPIPE

**MIMEPIPE** is a modular and extensible alternative to [lesspipe](https://github.com/wofr06/lesspipe).

MIMEPIPE outputs textual representation of files according to their MIME types.
The program passes the file through the filter program corresponding to the
file’s MIME type. If the program cannot find the filter that exactly matches
the type of a file, it attempts to select the most specific one matching the
supertype or generic MIME type.

## Features

* Easily extensible due to modular structure
* Support for files contained in archives and software packages
* Support for files of generic MIME types like `image/*`, `audio/*`, `video/*`
* User-defined filter programs

## Supported MIME types and dependencies

MIME type | Dependencies
-- | --
`application/epub+zip` | ebook-meta, ebook-convert ([calibre](https://calibre-ebook.com/calibre)), w3m ([w3m](http://w3m.sourceforge.net/)), fold ([coreutils](http://www.gnu.org/software/coreutils/))
`application/gzip` | zcat ([gzip](http://www.gnu.org/software/gzip/))
`application/msword` | unoconv ([unoconv](http://dag.wieers.com/home-made/unoconv/)), w3m ([w3m](http://w3m.sourceforge.net/))
`application/octet-stream` | cat ([coreutils](http://www.gnu.org/software/coreutils/))
`application/pdf` | pdftotext ([poppler-tools](https://poppler.freedesktop.org/))
`application/postscript` | ps2ascii ([ghostscript](https://www.ghostscript.com/))
`application/rtf` | unoconv ([unoconv](http://dag.wieers.com/home-made/unoconv/)), w3m ([w3m](http://w3m.sourceforge.net/))
`application/vnd.ms-cab-compressed` | cabextract ([cabextract](http://www.cabextract.org.uk/))
`application/vnd.debian.binary-package` | dpkg-deb ([dpkg](http://www.debian.org)), tar ([tar](https://www.gnu.org/software/tar/))
`application/vnd.oasis.opendocument.text` | unoconv ([unoconv](http://dag.wieers.com/home-made/unoconv/)), w3m ([w3m](http://w3m.sourceforge.net/))
`application/vnd.oasis.opendocument.spreadsheet` | unoconv ([unoconv](http://dag.wieers.com/home-made/unoconv/))
`application/vnd.ms-excel` | unoconv ([unoconv](http://dag.wieers.com/home-made/unoconv/)).
`application/vnd.sun.xml.writer` | unoconv ([unoconv](http://dag.wieers.com/home-made/unoconv/)), w3m ([w3m](http://w3m.sourceforge.net/))
`application/x-7z-compressed` | 7z ([p7zip](http://p7zip.sourceforge.net/))
`application/x-archive` | ar ([binutils](http://www.gnu.org/software/binutils/))
`application/x-arj` | arj ([arj](http://arj.sourceforge.net/))
`application/x-bzip` | bzcat ([bzip2](http://www.bzip.org/))
`application/x-bzip-compressed-tar` | tar ([tar](https://www.gnu.org/software/tar/)), bzip2 ([bzip2](http://www.bzip.org/))
`application/x-cd-image` | isoinfo ([mkisofs](http://cdrtools.sourceforge.net/private/cdrecord.html))
`application/x-compress` | uncompress ([gzip](http://www.gnu.org/software/gzip/)).
`application/x-compressed-tar` | tar ([tar](https://www.gnu.org/software/tar/)), gzip ([gzip](http://www.gnu.org/software/gzip/))
`application/x-cpio` | cpio ([cpio](http://www.gnu.org/software/cpio/cpio.html))
`application/x-dbf` | unoconv ([unoconv](http://dag.wieers.com/home-made/unoconv/))
`application/x-fictionbook+xml` | ebook-meta, ebook-convert ([calibre](https://calibre-ebook.com/calibre)) w3m ([w3m](http://w3m.sourceforge.net/)), fold ([coreutils](http://www.gnu.org/software/coreutils/))
`application/x-font-type1` | fc-query ([fontconfig](http://fontconfig.org/))
`application/x-java` | javap ([java-openjdk-devel](https://openjdk.java.net/))
`application/x-java-archive` | jar ([java-openjdk-devel](https://openjdk.java.net/))
`application/x-lz4` | lz4cat ([lz4](http://lz4.org/)).
`application/x-lzma-compressed-tar` | tar ([tar](https://www.gnu.org/software/tar/)), lzma ([xz](http://tukaani.org/xz/))
`application/x-matroska` | mediainfo ([mediainfo](https://mediaarea.net))
`application/x-mobipocket-ebook` | ebook-meta, ebook-convert ([calibre](https://calibre-ebook.com/calibre)) w3m ([w3m](http://w3m.sourceforge.net/)), fold ([coreutils](http://www.gnu.org/software/coreutils/))
`application/x-ms-dos-executable` | strings ([binutils](http://www.gnu.org/software/binutils/)).
`application/x-msdownload` | strings ([binutils](http://www.gnu.org/software/binutils/)).
`application/x-msi` | msiinfo ([msitools](https://wiki.gnome.org/msitools)).
`application/x-object` | nm ([binutils](http://www.gnu.org/software/binutils/))
`application/x-rar` | unrar ([unrar](http://www.rarlab.com))
`application/x-rpm` | rpm, rpm2cpio ([rpm](http://rpm.org/)), cpio ([cpio](http://www.gnu.org/software/cpio/cpio.html))
`application/x-sharedlib` | nm ([binutils](http://www.gnu.org/software/binutils/))
`application/x-tar` | tar ([tar](https://www.gnu.org/software/tar/))
`application/x-xz-compressed-tar` | tar ([tar](https://www.gnu.org/software/tar/)), xz ([xz](http://tukaani.org/xz/))
`application/xhtml+xml` | w3m ([w3m](http://w3m.sourceforge.net/))
`application/zip` | unzip ([unzip](http://www.info-zip.org/))
`application/zstd` | zstdcat ([zstd](https://github.com/facebook/zstd))
`audio/*` | mediainfo ([mediainfo](https://mediaarea.net))
`font/ttf` | fc-query ([fontconfig](http://fontconfig.org/))
`image/*` | identify ([ImageMagick](http://www.imagemagick.org))
`image/vnd.djvu+multipage` | djvutxt ([djvulibre](http://djvu.sourceforge.net))
`inode/directory` | ls ([coreutils](http://www.gnu.org/software/coreutils/))
`inode/symlink` | readlink ([coreutils](http://www.gnu.org/software/coreutils/))
`text/csv` | unoconv ([unoconv](http://dag.wieers.com/home-made/unoconv/))
`text/html` | w3m ([w3m](http://w3m.sourceforge.net/))
`text/markdown` | pandoc ([pandoc](https://hackage.haskell.org/package/pandoc))
`text/plain` |
`text/troff` | groff ([groff](http://www.gnu.org/software/groff/groff.html))
`text/x-uuencode` | uudecode ([sharutils](http://www.gnu.org/software/sharutils))
`video/*` | mediainfo ([mediainfo](https://mediaarea.net))
