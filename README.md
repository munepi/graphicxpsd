# graphicxpsd Package

**LaTeX: Adobe Photoshop Data format (PSD) support for the `graphicx` package via PSD-to-PDF conversion**

This package provides Adobe Photoshop Data format (PSD) support for the `graphicx` package using the `sips` (Darwin/macOS) or `magick` (ImageMagick) commands.

 * **Supported major drivers:** `dvipdfmx`, `xetex`, `pdftex`, `luatex`

## Requirements

 * A modern [TeX Live](https://www.tug.org/texlive/) environment (requires an up-to-date `expl3`/`l3kernel`)
 * macOS (uses the pre-installed `sips` command) **or** [ImageMagick](https://www.imagemagick.org/)

## Installation

Copy `graphicxpsd.sty` to your local TeX tree:
`$TEXMF/tex/latex/graphicxpsd/`

## Usage

Load the `graphicxpsd` package *after* loading the `graphicx` package.

~~~latex
\usepackage{graphicx}
\usepackage[magick,cache=true]{graphicxpsd} % Example with caching enabled
\begin{document}
\includegraphics{example.psd}
\end{document}
~~~

## License

This package is licensed under the terms of the MIT License.


--------------------

Munehiro Yamamoto
https://github.com/munepi
