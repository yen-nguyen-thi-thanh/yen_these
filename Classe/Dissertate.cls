% -------------------------------------------------------------------
%  @LaTeX-class-file{
%     filename        = "Dissertate.cls",
%     version         = "2.0",
%     date            = "25 March 2014",
%     codetable       = "ISO/ASCII",
%     keywords        = "LaTeX, Dissertate",
%     supported       = "Send email to suchow@post.harvard.edu.",
%     docstring       = "Class for a dissertation."
% --------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Dissertate}[2014/03/25 v2.0 Dissertate Class]
\LoadClass[13pt, oneside, a4paper,openright]{book}

%\usepackage{etex}

\usepackage[french,english]{babel}

%\let\Chaptermark\chaptermark
%\def\chaptermark#1{\def\Chaptername{#1}\Chaptermark{#1}}


% Text layout.
\RequirePackage[width=14cm, a4paper]{geometry}
\voffset=0.5cm
%\usepackage{ragged2e}
%\RaggedRight
\RequirePackage{graphicx}
\usepackage{fixltx2e}
\parindent 12pt
\RequirePackage{lettrine}
\RequirePackage{setspace}
\RequirePackage{verbatim}

% Fonts.
\RequirePackage{color}
\usepackage{hyperref}
\RequirePackage{url}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{amssymb}


%\RequirePackage{mathspec}
%\setmathsfont(Digits,Latin,Greek)[Numbers={Proportional}]{EB Garamond}
%\setmathrm{EB Garamond}
%\widowpenalty=300
%\clubpenalty=300
%\setromanfont[Numbers=OldStyle, Ligatures={Common, TeX}, Scale=1.0]{EB Garamond}
%\newfontfamily{\smallcaps}[RawFeature={+c2sc,+scmp}]{EB Garamond}
%\setsansfont[Scale=MatchLowercase, BoldFont={Lato Bold}]{Lato Regular}
%\setmonofont[Scale=MatchLowercase]{Source Code Pro}
\RequirePackage[labelfont={bf,sf,footnotesize,singlespacing},
                textfont={sf,footnotesize,singlespacing},
                justification={centering},
                singlelinecheck=false,
                margin=0pt,
                figurewithin=chapter,
                tablewithin=chapter]{caption}
\renewcommand{\thefootnote}{\fnsymbol{footnote}}

% Headings and headers.
\RequirePackage{fancyhdr}
\RequirePackage[tiny, md, sc]{titlesec}
\setlength{\headheight}{15pt}
\pagestyle{plain}
\RequirePackage{titling}

\newcommand{\dfil}[1]{#1~~{\tiny \dotfill}}

\makeatletter
  \def\vhrulefill#1{\leavevmode\leaders\hrule\@height#1\hfill \kern\z@}
\makeatother

\setcounter{secnumdepth}{3}
\renewcommand{\thesubsubsection}{\thesubsection.\alph{subsubsection}}

\titleformat{\section}
  {\ROBCB\Large\color{\BoxColor}}
  {\thesection}{1em}{\dfil}
  
  \titleformat{\subsection}
  {\ROBC\large}
  {\dotfill \thesubsection}{1em}{}
  
  \titleformat{\subsubsection}
  {\ROBCL\large}
  {\dotfill \thesubsubsection}{1em}{}

  

% Front matter.
\usepackage{etoc}
\setcounter{tocdepth}{1}
\usepackage[titles]{tocloft}
\usepackage[titletoc]{appendix}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftchapfont}{\normalsize \ROBC}
\renewcommand{\cftchappagefont}{\ROBC} 
\renewcommand{\cftsecfont}{\ROBCL}
\renewcommand{\cftsecpagefont}{\ROBCL} 
\renewcommand\listfigurename{Listing of figures}
\renewcommand\listtablename{Listing of tables}
%\renewcommand\cftaftertoctitle{\par\noindent\hrulefill\par\vskip-4.3em}

% Endmatter
\renewcommand{\setthesection}{\arabic{chapter}.A\arabic{section}}

% References.
\renewcommand\bibname{References}
%\RequirePackage[super,comma,numbers]{natbib}
%\renewcommand{\bibnumfmt}[1]{[#1]}
\RequirePackage[palatino]{quotchap}
\renewcommand*{\chapterheadstartvskip}{\vspace*{-0.5\baselineskip}}
\renewcommand*{\chapterheadendvskip}{\vspace{1.3\baselineskip}}

% An environment for paragraph-style section.
\providecommand\newthought[1]{%
   \addvspace{1.0\baselineskip plus 0.5ex minus 0.2ex}%
   \noindent\textsc{#1}%
}

% Align reference numbers so that they do not cause an indent.
\newlength\mybibindent
\setlength\mybibindent{0pt}
\renewenvironment{thebibliography}[1]
    {\chapter*{\bibname}%
     \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
     \list{\@biblabel{\@arabic\c@enumiv}}
          {\settowidth\labelwidth{\@biblabel{999}}
           \leftmargin\labelwidth
            \advance\leftmargin\dimexpr\labelsep+\mybibindent\relax\itemindent-\mybibindent
           \@openbib@code
           \usecounter{enumiv}
           \let\p@enumiv\@empty
           \renewcommand\theenumiv{\@arabic\c@enumiv}}
     \sloppy
     \clubpenalty4000
     \@clubpenalty \clubpenalty
     \widowpenalty4000%
     \sfcode`\.\@m}
    {\def\@noitemerr
      {\@latex@warning{Empty `thebibliography' environment}}
     \endlist}

% Some definitions.
\def\advisor#1{\gdef\@advisor{#1}}
\def\coadvisorOne#1{\gdef\@coadvisorOne{#1}}
\def\coadvisorTwo#1{\gdef\@coadvisorTwo{#1}}
\def\committeeInternal#1{\gdef\@committeeInternal{#1}}
\def\committeeInternalOne#1{\gdef\@committeeInternalOne{#1}}
\def\committeeInternalTwo#1{\gdef\@committeeInternalTwo{#1}}
\def\committeeExternal#1{\gdef\@committeeExternal{#1}}
\def\degreeyear#1{\gdef\@degreeyear{#1}}
\def\degreemonth#1{\gdef\@degreemonth{#1}}
\def\degreeterm#1{\gdef\@degreeterm{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\department#1{\gdef\@department{#1}}
\def\field#1{\gdef\@field{#1}}
\def\university#1{\gdef\@university{#1}}
\def\universitycity#1{\gdef\@universitycity{#1}}
\def\universitystate#1{\gdef\@universitystate{#1}}
\def\programname#1{\gdef\@programname{#1}}
\def\pdOneName#1{\gdef\@pdOneName{#1}}
\def\pdOneSchool#1{\gdef\@pdOneSchool{#1}}
\def\pdOneYear#1{\gdef\@pdOneYear{#1}}
\def\pdTwoName#1{\gdef\@pdTwoName{#1}}
\def\pdTwoSchool#1{\gdef\@pdTwoSchool{#1}}
\def\pdTwoYear#1{\gdef\@pdTwoYear{#1}}
% School name and location
\university{Universit\'{e} de Paris}
\universitycity{}
\universitystate{}

% School color found from university's graphic identity site:
% http://brand.berkeley.edu/colors/

\definecolor{SchoolColor}{HTML}{003262} %berkeley blue
%\definecolor{red}{HTML}{003262} % chapter numbers

% \definecolor{SchoolColor}{rgb}{0,0.19608,0.3843} %berkeley blue
%\definecolor{chaptergrey}{rgb}{0,0.19608,0.3843} % chapter numbers

% \definecolor{SchoolColor}{HTML}{FDB515} %berkeley gold
%\definecolor{chaptergrey}{HTML}{FDB515} % chapter numbers
\definecolor{chaptergrey}{HTML}{008761}

\hypersetup{
    colorlinks,
    citecolor=SchoolColor,
    filecolor=black,
    linkcolor=black,
    urlcolor=SchoolColor,
}

% Formatting guidelines found in:
% http://www.gsas.harvard.edu/publications/form_of_the_phd_dissertation.php
\renewcommand{\frontmatter}{
    \input{frontmatter/personalize}
    %\maketitle
    %\copyrightpage
    \lab
    %\abstractpage
    \dedicationpage
    \tableofcontents
    \acknowledgments
    % \listoffigures % optional
}

\renewcommand{\maketitle}{
    \thispagestyle{empty}
    \vspace*{\fill}
    \vspace{10pt}
    \begin{center}
    \Huge {\ROBC\textcolor{SchoolColor}{\thetitle}} \normalsize \\
    \vspace{100pt}
    By\\
    \theauthor\\
    \vspace{12pt}
    \textsc{A Dissertation submitted in partial satisfaction of the\\
    requirements for the degree of \\ \@degree\\
    in\\ \@department\\ in the\\  Graduate Division\\ of the\\
    \@university\\
    \vspace{50pt}
    Committee in charge:\\
    \vspace{20pt}
    Professor \@coadvisorOne \\
    Professor \@coadvisorTwo \\
%    Professor \@committeeInternal\\
%    Professor \@committeeExternal\\
    \vspace{50pt}
    \@degreeterm\ \@degreeyear}
    \end{center} \vspace*{\fill}
}


%\renewcommand{\maketitle}{
%    \thispagestyle{empty}
%    \vspace*{\fill}
%    \vspace{10pt}
%    \begin{center}
%    \Huge \textcolor{SchoolColor}{\thetitle} \normalsize \\
%    \vspace{100pt}
%    By\\
%    \theauthor\\
%    \vspace{12pt}
%    \textsc{A Dissertation submitted in partial satisfaction of the\\
%    requirements for the degree of \\ \@degree\\
%    in\\ \@department\\ in the\\  Graduate Division\\ of the\\
%    \@university\\
%    \vspace{50pt}
%    Committee in charge:\\
%    \vspace{20pt}
%    Professor \@advisor, Chair\\
%    Professor \@committeeInternalOne\\
%    Professor \@committeeInternalTwo\\
%    Professor \@committeeExternal\\
%    \vspace{50pt}
%    \@degreeterm\ \@degreeyear}
%    \end{center} \vspace*{\fill}
%}

\newcommand{\copyrightpage}{
    \newpage
    \thispagestyle{empty}
    \vspace*{\fill}
    \scshape \noindent \small \copyright \small 2016\hspace{3pt}-- \theauthor \\
    \noindent all rights reserved.
    \vspace*{\fill}
    \newpage
    \rm
}

\newcommand{\abstractpage}{
    \newpage
%    \setcounter{page}{1}
%    \pagenumbering{arabic}
     \thispagestyle{empty}
%    \lhead{Co-advisors: \\\@coadvisorOne \\
%    \@coadvisorTwo}
%    \rhead{\@author\\[\baselineskip]}
    \renewcommand{\headrulewidth}{0.0pt}
%    \vspace*{35pt}
%    \begin{center}
%    \Large {\ROBC\textcolor{SchoolColor}{\@title}} \normalsize \\
%    \vspace*{20pt}
	\chapter*{Abstract}
%	\vspace{-1cm}
%	\vhrulefill{1pt}
    \input{frontmatter/abstract_en}
    
	%\vspace*{20pt}
	
	\chapter*{Résumé}
    \input{frontmatter/abstract_fr} 
    
%    \vspace*{\fill}
%    \newpage \lhead{} \rhead{}
%    \cfoot{\thepage}
}

\newcommand{\acknowledgments}{
    \chapter*{Acknowledgments}
    \noindent
    \input{frontmatter/thanks}
    \vspace*{\fill} \newpage
}

\newcommand{\lab}{
	\thispagestyle{empty}
    \vspace*{\fill}
    \noindent \input{frontmatter/lab}
	\newpage
}

\newcommand{\dedicationpage}{
	\renewcommand{\headrulewidth}{0.0pt}
%    \setcounter{page}{1}
%    \pagenumbering{roman}
    \newpage \thispagestyle{fancy} \vspace*{\fill}
    \scshape \noindent \input{frontmatter/dedication}
    \vspace*{\fill} \newpage \rm
}

  \titleformat{\chapter}[display]{\ROBCB\fontsize{100pt}{100pt}\selectfont\color{\BoxColor}}{\thechapter}{2pt}{\huge\ROBCB\color{\BoxColor}}
  
\newcommand{\test}[1]{#1~~–}  
  
    \titleformat{\paragraph}[runin]
{\normalfont\scshape\ROBL}{\theparagraph}{1em}{}

%\renewcommand{\chaptermark}[1]{ \markboth{#1}{} }
%\renewcommand{\sectionmark}[1]{ \markright{#1}{} }
\def \variable {Test}


