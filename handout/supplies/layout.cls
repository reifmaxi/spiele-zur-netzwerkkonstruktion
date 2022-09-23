\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{layout}[2022/07/18 Layout for "Spiele zur Neztwerkkonstruktion".]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrartcl}}
\ProcessOptions\relax

\LoadClass{scrartcl}

% Indentation of ordinary paragraphs (not paragraphs inside minipages).
\setlength{\parindent}{0em}

% Vertical space between paragraphs.
\setlength{\parskip}{1ex}

% Provides an easy and flexible user interface to customize page layout,
% implementing auto-centering and auto-balancing mechanisms so that the users
% have only to give the least description for the page layout.
\RequirePackage[inner=1.5in,outer=1in]{geometry}

% Provides extensive facilities, both for constructing headers and footers, and
% for controlling their use (for example, at times when LaTeX would
% automatically change the heading style in use).
\RequirePackage{fancyhdr}
% Style of headers.
\fancyhead{}
\fancyhead[EL,OR]{\thepage}
\pagestyle{fancy}

% Manages culturally-determined typographical (and other) rules for a wide range
% of languages.
\RequirePackage{polyglossia}
\setdefaultlanguage[spelling=new, babelshorthands=true]{german}

% A reimplementation of the bibliographic facilities provided by LaTeX with
% unicode support.
\RequirePackage[style=alphabetic,sorting=nty]{biblatex}

% Provides an automatic and unified interface to AAT and OpenType fonts running
% on LuaTeX and XeLaTex engine.
\RequirePackage{fontspec}
% Font selection.
\setmainfont{Latin Modern Roman}[SmallCapsFont={Latin Modern Roman Caps}]
\setsansfont{Latin Modern Sans}
\setmonofont{Latin Modern Mono}

% Style of headings.
\setkomafont{title}{\bfseries\scshape\rmfamily}
\setkomafont{section}{\Large\bfseries\rmfamily}

% Appearance of the table of contents.
\setkomafont{sectionentry}{\bfseries\rmfamily}
\KOMAoptions{sectionentrydots=true}
\setkomafont{sectionentrydots}{\rmfamily}

% Provides a key-value interface for optional arguments to the \includegraphics
% command.
\usepackage{graphicx}
\graphicspath{{graphics/}}

% Provides a means of using facilities analogous to those of the caption
% package, when writing captions for subfigures and the like.
\RequirePackage{subcaption}

% Facilitates the kind of theorem setup typically needed in American
% Mathematical Society publications.
\RequirePackage{amsthm}
\theoremstyle{plain}
\newtheorem{satz}{Satz}
\newtheorem{lemma}[satz]{Lemma}
\theoremstyle{definition}
\newtheorem{definition}[satz]{Definition}
\newtheorem*{bemerkung}{Bemerkung}

% Provides miscellaneous enhancements for improving the information structure
% and printed output of documents that contain mathematical formulas.
\RequirePackage{amsmath}

% Providea a complete implementation of unicode maths for XeLaTeX and LuaLaTeX.
\RequirePackage{unicode-math}
\unimathsetup{math-style=TeX}
\setmathfont{Latin Modern Math}
\setmathfont{TeX Gyre Pagella Math}[range=bb]
\setmathfont{XITS Math}[range=\setminus]

% Handles cross-referencing commands in LaTeX to produce hypertext links in the
% document.
\RequirePackage[unicode,linktoc=page]{hyperref}
