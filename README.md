# Spiele zur Netzwerkkonstruktion

This repository contains the LaTeX code of a (German) seminar paper
and the [Ipe](https://ipepresenter.otfried.org/) file of the corresponding slides.

A compiled version of both can be found [here](https://link.maximilianreif.de/nws).

The compilation of the handout has to be done
with [LuaTeX](https://luatex.org/) TeX engine.
The easiest way to accomplish this is
to use [Latexmk](https://www.ctan.org/pkg/latexmk)
and simply run `latexmk` in the `handout` directory.
Both LuaTeX engine and Latexmk are included in TeX Live and MiKTeX.

For copyright reasons, I am not allowed to upload my university's logo.
This means:

**To avoid compilation errors,
make the `\includegraphics` in `handout/supplies/titlepage.tex` a comment
or add some `handout/graphics/logo.png`!**

The image on the first slide of the presentation is from
[pixabay](https://pixabay.com/vectors/social-media-people-social-networks-7278965/).


## License

The content of this project itself is licensed under the
[Creative Commons Attribution-ShareAlike 4.0 International license](https://creativecommons.org/licenses/by-sa/4.0/),
and the underlying source code used to format and display that content
is licensed under the [MIT license](LICENSE.md).
