# MIMEPIPE

**MIMEPIPE** is a modular and extensible alternative to lesspipe. The program outputs textual representation of files according to their MIME types.

## Features

* Easily extensible due to modular structure.
* Supports for files contained in archives and software packages.

## Supported MIME types and dependencies

MIME type | Dependencies
--------- | ------------
`application/epub+zip` | ebook-meta, ebook-convert ([calibre](https://calibre-ebook.com/calibre))
`application/gzip` | zcat ([gzip](http://www.gnu.org/software/gzip/))
`application/octet-stream` | TODO
`application/pdf` | pdftotext ([poppler-tools](https://poppler.freedesktop.org/))
`application/postscript` | ps2ascii ([ghostscript](https://www.ghostscript.com/))
`application/rtf` | loffice ([libreoffice](https://www.documentfoundation.org/)), w3m ([w3m](http://w3m.sourceforge.net/))
`application/vnd.ms-cab-compressed` | cabextract ([cabextract](http://www.cabextract.org.uk/))
`application/vnd.debian.binary-package` | dpkg-deb ([dpkg](http://www.debian.org)), tar ([tar](https://www.gnu.org/software/tar/))
`application/vnd.oasis.opendocument.text` | loffice ([libreoffice](https://www.documentfoundation.org/)), w3m ([w3m](http://w3m.sourceforge.net/))
`application/vnd.oasis.opendocument.spreadsheet` | loffice ([libreoffice](https://www.documentfoundation.org/))
`application/vnd.sun.xml.writer` | loffice ([libreoffice](https://www.documentfoundation.org/)), w3m ([w3m](http://w3m.sourceforge.net/))
`application/x-7z-compressed` | 7z ([p7zip](http://p7zip.sourceforge.net/))
`application/x-arj` | arj ([arj](http://arj.sourceforge.net/))
`application/x-bzip` | bzcat ([bzip2](http://www.bzip.org/))
`application/x-bzip-compressed-tar` | tar ([tar](https://www.gnu.org/software/tar/)), bzip2 ([bzip2](http://www.bzip.org/))
`application/x-cd-image` | isoinfo ([mkisofs](http://cdrtools.sourceforge.net/private/cdrecord.html))
`application/x-compressed-tar` | tar ([tar](https://www.gnu.org/software/tar/)), gzip ([gzip](http://www.gnu.org/software/gzip/))
`application/x-cpio` | cpio ([cpio](http://www.gnu.org/software/cpio/cpio.html))
`application/x-dbf` | loffice ([libreoffice](https://www.documentfoundation.org/))
`application/x-fictionbook+xml` | ebook-meta, ebook-convert ([calibre](https://calibre-ebook.com/calibre))
`application/x-font-type1` | fc-query ([fontconfig](http://fontconfig.org/))
`application/x-java` | javap ([java-openjdk-devel](https://openjdk.java.net/))
`application/x-java-archive` | jar ([java-openjdk-devel](https://openjdk.java.net/))
`application/x-lzma-compressed-tar` | tar ([tar](https://www.gnu.org/software/tar/)), lzma ([xz](http://tukaani.org/xz/))
`application/x-matroska` | mediainfo ([mediainfo](https://mediaarea.net))
`application/x-mobipocket-ebook` | ebook-meta, ebook-convert ([calibre](https://calibre-ebook.com/calibre))
`application/x-rar` | unrar ([unrar](http://www.rarlab.com))
`application/x-rpm` | rpm, rpm2cpio ([rpm](http://rpm.org/)), cpio ([cpio](http://www.gnu.org/software/cpio/cpio.html))
`application/x-sharedlib` | nm ([binutils](http://www.gnu.org/software/binutils/))
`application/x-tar` | tar ([tar](https://www.gnu.org/software/tar/))
`application/x-xz-compressed-tar` | tar ([tar](https://www.gnu.org/software/tar/)), xz ([xz](http://tukaani.org/xz/))
`application/xhtml+xml` | w3m ([w3m](http://w3m.sourceforge.net/))
`application/zip` | unzip ([unzip](http://www.info-zip.org/))
`audio/*` | mediainfo ([mediainfo](https://mediaarea.net))
`font/ttf` | fc-query ([fontconfig](http://fontconfig.org/))
`image/*` | identify ([ImageMagick](http://www.imagemagick.org))
`image/vnd.djvu+multipage` | djvutxt ([djvulibre](http://djvu.sourceforge.net))
`inode/directory` | ls ([coreutils](http://www.gnu.org/software/coreutils/))
`inode/symlink` | readlink ([coreutils](http://www.gnu.org/software/coreutils/))
`text/csv` | loffice ([libreoffice](https://www.documentfoundation.org/))
`text/html` | w3m ([w3m](http://w3m.sourceforge.net/))
`text/plain` |
`text/troff` | groff ([groff](http://www.gnu.org/software/groff/groff.html))
`text/x-uuencode` | uudecode ([sharutils](http://www.gnu.org/software/sharutils))
`video/*` | mediainfo ([mediainfo](https://mediaarea.net))
